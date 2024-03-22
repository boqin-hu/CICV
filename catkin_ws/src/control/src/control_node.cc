#include <ros/ros.h>
#include <geometry_msgs/PointStamped.h>
#include <geometry_msgs/Pose.h>
#include <nav_msgs/Path.h>
#include "metaController.h"
#include "lqr_control.h"
#include "pure_pursuit_controller.h"
#include "msg_gen/Control_Test.h"
#include "msg_gen/CICV_Location.h"
#include<iostream>
#include <deque>
#include <boost/thread.hpp>
#include "newpid.h"
#include "perception_msgs/Trajectory.h"
#include "perception_msgs/PerceptionLocalization.h"
//#include "reference_line.h"

using namespace dust::control;

int which_controllers;
std::shared_ptr<controller> control_base;
//std::vector<RefPoint> targetPath_;
msg_gen::trajectory targetPath_;
common_msgs::CICV_Location gps_;
std::shared_ptr<pid> posPid;
std::shared_ptr<pid> velPid;
// struct frenet_reference_line
// {
//   double x;
//   double y;
//   double s;
// };
// std::vector<frenet_reference_line> frenet_path;

// void routingCallback(const msg_gen::trajectory &routing){
// 	// 确保一开始只订阅一次
// 	std::cout << "routing.size: " << routing.pointsize << " targetPath_.size: " << targetPath_.size() << std::endl;
//   targetPath_.clear();
//   targetPath_.resize(routing.pointsize);
// 	for (int i = 0; i < routing.pointsize; ++i)
// 	{
// 		targetPath_[i] = {routing.trajectorypoint[i].x, routing.trajectorypoint[i].y, routing.trajectorypoint[i].kappa, routing.trajectorypoint[i].theta, routing.trajectorypoint[i].v};
// 	}
// }
void routingCallback(const perception_msgs::Trajectory &routing){
	// 确保一开始只订阅一次
	std::cout << "routing.size: " << routing.trajectoryinfo.trajectorypoints.size() << " targetPath_.size: " << targetPath_.pointsize << std::endl;
  targetPath_.trajectorypoint.clear();
  targetPath_.trajectorypoint.resize(routing.trajectoryinfo.trajectorypoints.size());
  targetPath_.pointsize = routing.trajectoryinfo.trajectorypoints.size();
  double kappa_old = 0.0;
  double time_old = 0.0;
  double v_old = 0.0;
	for (int i = 0; i < routing.trajectoryinfo.trajectorypoints.size(); ++i)
	{
		targetPath_.trajectorypoint[i].x = routing.trajectoryinfo.trajectorypoints[i].position.x;
		targetPath_.trajectorypoint[i].y = routing.trajectoryinfo.trajectorypoints[i].position.y;
		targetPath_.trajectorypoint[i].kappa = routing.trajectoryinfo.trajectorypoints[i].curvature;
		// targetPath_.trajectorypoint[i].dkappa = routing.trajectorypoint[i].dkappa;
		targetPath_.trajectorypoint[i].v = routing.trajectoryinfo.trajectorypoints[i].velocity;
		targetPath_.trajectorypoint[i].theta = routing.trajectoryinfo.trajectorypoints[i].heading;
		targetPath_.trajectorypoint[i].s = routing.trajectoryinfo.trajectorypoints[i].s;
		targetPath_.trajectorypoint[i].absolute_time = routing.trajectoryinfo.trajectorypoints[i].t;
    if (i != 0) {
      targetPath_.trajectorypoint[i].dkappa = (targetPath_.trajectorypoint[i].kappa - kappa_old) / 
      std::fmax((targetPath_.trajectorypoint[i].absolute_time - time_old), 1e-6);
      targetPath_.trajectorypoint[i].a = (targetPath_.trajectorypoint[i].v - v_old) / 
      std::fmax((targetPath_.trajectorypoint[i].absolute_time - time_old), 1e-6);
    }
    kappa_old = targetPath_.trajectorypoint[i].kappa;
    v_old = targetPath_.trajectorypoint[i].v;
    time_old = routing.trajectoryinfo.trajectorypoints[i].t;
	}
  targetPath_.trajectorypoint[0].a = targetPath_.trajectorypoint[1].a;
}
// void routingCallback(const msg_gen/Trajectory &routing){
// 	// 确保一开始只订阅一次
// 	std::cout << "routing.size: " << routing.pointsize << " targetPath_.size: " << targetPath_.pointsize << std::endl;
//   targetPath_.trajectorypoint.clear();
//   targetPath_.trajectorypoint.resize(routing.pointsize);
//   targetPath_.pointsize = routing.pointsize;
// 	for (int i = 0; i < routing.pointsize; ++i)
// 	{
// 		targetPath_.trajectorypoint[i].x = routing.trajectorypoint[i].x;
// 		targetPath_.trajectorypoint[i].y = routing.trajectorypoint[i].y;
// 		targetPath_.trajectorypoint[i].kappa= routing.trajectorypoint[i].kappa;
// 		targetPath_.trajectorypoint[i].dkappa = routing.trajectorypoint[i].dkappa;
// 		targetPath_.trajectorypoint[i].v = routing.trajectorypoint[i].v;
// 		targetPath_.trajectorypoint[i].theta = routing.trajectorypoint[i].theta;
// 		targetPath_.trajectorypoint[i].s = routing.trajectorypoint[i].s;
// 		targetPath_.trajectorypoint[i].absolute_time = routing.trajectorypoint[i].absolute_time;
// 	}
// }
// void frenetPathCallback(const std::vector<ReferencePoint>& path)
// {
//   int n = path.size();
//   frenet_path.resize(n);
//   for (int i = 0; i < n; i++)
//   {
//     frenet_path[i].x = path[i].x_;
//     frenet_path[i].y = path[i].y_;
//     frenet_path[i].s = path[i].accumulated_s_; 
//   }
// }

void locationCallback(const perception_msgs::PerceptionLocalization& pGps){
	// gps_ = pGps;
  gps_.header.frame_id = pGps.header.frame_id; // base_link
  gps_.header.stamp = ros::Time::now();  
  gps_.Position_x = pGps.position_x;
  gps_.Position_y = pGps.position_y;
  gps_.SimTim = 0;
  gps_.Velocity_x = pGps.velocity_x;   // 单位 m/s 
  gps_.Velocity_y = pGps.velocity_y;   // 单位 m/s
  gps_.Accel_x = pGps.accel_x;
  gps_.Accel_y = pGps.accel_y;
  gps_.Angular_velocity_z = pGps.angular_velocity_z;
  // gps_.Yaw = calculateYaw(pose_x, pose_y);  // 航向角
  gps_.Yaw = pGps.yaw;
  // gps_.Pitch = pGps.pitch;
  // gps_.Roll = pGps.roll;
}

std::vector<int> getIndex(const msg_gen::trajectory& trajectory_point,const common_msgs::CICV_Location& pGps)
{
  double current_time = (double)ros::WallTime::now().toSec();
  std::vector<int> Index;
  Index.reserve(2);
  int index_time = 0;
  int index_pos = 0;
  double min_dis = (std::numeric_limits<int>::max)();
  for (int i = 0; i < targetPath_.pointsize - 1; i++)
  {
    if (targetPath_.trajectorypoint[i].absolute_time <= current_time&&targetPath_.trajectorypoint[i + 1].absolute_time > current_time)
    {
      index_time = i;
    }
  }
  // ROS_WARN("目标点的速度是：%.2f",targetPath_.trajectorypoint[index_time].v);
  Index.push_back(index_time);
  for (int i = 0; i < targetPath_.pointsize; i++)
  {
    int dis = sqrt(pow(targetPath_.trajectorypoint[i].x - pGps.Position_x,2) + pow(targetPath_.trajectorypoint[i].y - pGps.Position_y,2));
    if (dis < min_dis)
    {
      min_dis = dis;
      index_pos = i;
    }
  }
  Index.push_back(index_pos);
  return Index;
}



int main(int argc, char **argv) {
  ros::init(argc, argv, "control");

  // ros parameter settings
  //ros::param::get("which_controllers", which_controllers);
  which_controllers = 0;
  ROS_INFO("which_controllers = %d",which_controllers);
  switch (which_controllers)
  {
    case 0:
      std::cout << "lqr init!!!" << std::endl;
      // control_base = std::make_shared<lqrControl>(0.3,0.06,0.0);
      control_base = std::make_shared<lqrControl>(0.6,0.02,0.0,0.3,0.02,0.0);
      break;
    case 1:
      std::cout << "pure_pursuit init!!!" << std::endl;
      control_base = std::make_shared<purePursuit>(0.1,0.06,0.0,0.1,0.06,0.0);
      break;
    default:
      std::cout << "default:pure_pursuit init!!!" << std::endl;
      control_base = std::make_shared<purePursuit>(0.1,0.06,0.0,0.1,0.06,0.0);
      break;
  }
  posPid = std::make_shared<pid>(0.6,0.02,0.0);
  velPid = std::make_shared<pid>(0.2,0.02,0.0);


  ros::NodeHandle n_;
  // ros sub
  ros::Subscriber planning_sub = n_.subscribe("/cicv_amr_trajectory", 10, routingCallback);
  // ros::Subscriber planning_sub = n_.subscribe("/routing", 10, routingCallback);

  ros::Subscriber gps_sub = n_.subscribe("/cicv_location", 10, locationCallback);

  //ros::Subscriber frenet_path_sub = n_.subscribe("/frenet_path",10,frenetPathCallback);
  // ros pub
  ros::Publisher control_pub = n_.advertise<common_msgs::Control_Test>("/control_test", 10);
  //ros::Publisher point_pub = n_.advertise<geometry_msgs::PointStamped>("/vehicle_gps",10);                // 发布车辆定位
  

  ros::Rate loop_rate(50);
  while (ros::ok())
  {
     // 先订阅到消息才可以发布 
    if (targetPath_.pointsize > 0) {

      std::vector<int> index = getIndex(targetPath_,gps_);
      Eigen::Matrix<double, 2, 1> d_err;
      d_err << gps_.Position_x - targetPath_.trajectorypoint[index[1]].x, gps_.Position_y - targetPath_.trajectorypoint[index[1]].y;
      Eigen::Matrix<double, 2, 1> tor;
      tor << cos(targetPath_.trajectorypoint[index[1]].theta), sin(targetPath_.trajectorypoint[index[1]].theta);
      double es = tor.transpose() * d_err;
      double ego_vel = sqrt(pow(gps_.Velocity_x,2) + pow(gps_.Velocity_y,2));
      double steer = control_base->calculateCmd(targetPath_, gps_);
      double speed_comp = posPid->PID_Control(targetPath_.trajectorypoint[index[0]].s, targetPath_.trajectorypoint[index[1]].s + es);

      ROS_ERROR("位置误差：%.2f", targetPath_.trajectorypoint[index[0]].s - targetPath_.trajectorypoint[index[1]].s - es);
      ROS_ERROR("速度误差：%.2f", targetPath_.trajectorypoint[index[0]].v - ego_vel);

      double acc_comp = velPid->PID_Control(targetPath_.trajectorypoint[index[0]].v + speed_comp, ego_vel);
      double throttle_break_cmd = targetPath_.trajectorypoint[index[0]].a + acc_comp;
      common_msgs::Control_Test control_info;
      control_info.header.frame_id = "world";
      control_info.header.stamp = ros::Time::now();
      control_info.Gear = 4;
      steer = 19 * steer;
      if (steer >= 540)
      {
        steer = 540;
      }
      else if (steer <= -540)
      {
        steer = -540;
      }
      control_info.SteeringAngle = steer;
      if (throttle_break_cmd >=0)
      {
        control_info.ThrottlePedal = throttle_break_cmd;
        control_info.BrakePedal = 0.0;
      }
      else
      {
        control_info.BrakePedal = -throttle_break_cmd;
        control_info.ThrottlePedal = 0.0;
      }

      // 到达终点发制动
      const double endpoint_x = 100.305;
      const double endpoint_y = 33.576;
      static bool is_in_endpoint = false;
      if (pow((gps_.Position_x - endpoint_x), 2) + pow((gps_.Position_y - endpoint_y), 2) < 28) {
        is_in_endpoint = true;
      }
      if (is_in_endpoint) {
        control_info.BrakePedal = 1.0;
        control_info.ThrottlePedal = 0.0;
        control_info.SteeringAngle = 0.0;
      }
      

      ROS_INFO("Gear:%d,ThrottlePedal:%.2f,BreakPedal:%.2f,SteeringAngle:%.2f",control_info.Gear,control_info.ThrottlePedal,control_info.BrakePedal,control_info.SteeringAngle);
      control_pub.publish(control_info);
    }

    ros::spinOnce();
    loop_rate.sleep();
  }
}