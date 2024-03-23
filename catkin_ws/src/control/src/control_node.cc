#include <ros/ros.h>
#include <geometry_msgs/PointStamped.h>
#include <geometry_msgs/Pose.h>
#include <nav_msgs/Path.h>
#include "metaController.h"
#include "lqr_control.h"
#include "pure_pursuit_controller.h"
#include "msg_gen/Control_Test.h"
#include "msg_gen/CICV_Location.h"
#include <iostream>
#include <deque>
#include <boost/thread.hpp>
#include "newpid.h"
#include "perception_msgs/Trajectory.h"
#include "perception_msgs/PerceptionLocalization.h"
#include "tool.h"
//#include "reference_line.h"

using namespace dust::control;

int which_controllers;
std::shared_ptr<controller> control_base;
//std::vector<RefPoint> targetPath_;
msg_gen::trajectory targetPath_;
common_msgs::CICV_Location gps_;
std::shared_ptr<pid> posPid;
std::shared_ptr<pid> velPid;

void routingCallback(const perception_msgs::Trajectory &routing){
	// 确保一开始只订阅一次
  // std::cout << "routing.header.time_stamp" << routing.header.stamp << std::endl;
  // std::cout << "routing.trajectoryinfo.total_path_time" << routing.trajectoryinfo.total_path_time << std::endl;
  // std::cout << "routing.trajectoryinfo.trajectorypoints[0].t" << routing.trajectoryinfo.trajectorypoints[0].t << std::endl;
	// std::cout << "routing.size: " << routing.trajectoryinfo.trajectorypoints.size() << " targetPath_.size: " << targetPath_.pointsize << std::endl;
  targetPath_.trajectorypoint.clear();
  targetPath_.trajectorypoint.resize(routing.trajectoryinfo.trajectorypoints.size());
  targetPath_.pointsize = routing.trajectoryinfo.trajectorypoints.size();
  double kappa_old = 0.0;
  double time_old = 0.0;
	for (int i = 0; i < routing.trajectoryinfo.trajectorypoints.size(); ++i)
	{
		targetPath_.trajectorypoint[i].x = routing.trajectoryinfo.trajectorypoints[i].position.x;
		targetPath_.trajectorypoint[i].y = routing.trajectoryinfo.trajectorypoints[i].position.y;
		targetPath_.trajectorypoint[i].kappa = routing.trajectoryinfo.trajectorypoints[i].curvature;
		// targetPath_.trajectorypoint[i].dkappa = routing.trajectorypoint[i].dkappa;
		targetPath_.trajectorypoint[i].v = routing.trajectoryinfo.trajectorypoints[i].velocity;
		targetPath_.trajectorypoint[i].theta = routing.trajectoryinfo.trajectorypoints[i].heading;
		targetPath_.trajectorypoint[i].s = routing.trajectoryinfo.trajectorypoints[i].s;
    targetPath_.trajectorypoint[i].a = routing.trajectoryinfo.trajectorypoints[i].a;
		targetPath_.trajectorypoint[i].absolute_time = routing.trajectoryinfo.trajectorypoints[i].t;
    if (i != 0) {
      if (routing.trajectoryinfo.trajectorypoints[i].t < 1e-6){
        targetPath_.trajectorypoint[i].absolute_time = targetPath_.trajectorypoint[i-1].absolute_time + 0.02;
      }
      targetPath_.trajectorypoint[i].dkappa = (targetPath_.trajectorypoint[i].kappa - kappa_old) / 
      std::fmax((targetPath_.trajectorypoint[i].absolute_time - time_old), 1e-6);
    }
    kappa_old = targetPath_.trajectorypoint[i].kappa;
    time_old = routing.trajectoryinfo.trajectorypoints[i].t;
	}
}
// void routingCallback(const msg_gen::trajectory &routing){
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

std::pair<int, int> getIndex(const msg_gen::trajectory& trajectory_point,const common_msgs::CICV_Location& pGps)
{
  double current_time = (double)ros::WallTime::now().toSec();
  int index_time = 0;
  int index_pos = 0;
  double min_dis = (std::numeric_limits<int>::max)();
  ROS_INFO("targetPath_ absolute_time : %f, current_time : %f", targetPath_.trajectorypoint[0].absolute_time, current_time);// target path的时间戳取值存在问题
  // for (int i = 0; i < targetPath_.pointsize - 1; i++)
  // {
  //   if (targetPath_.trajectorypoint[i].absolute_time <= current_time && targetPath_.trajectorypoint[i + 1].absolute_time > current_time) {
  //     index_time = i;
  //     break;
  //   } else if (targetPath_.trajectorypoint[0].absolute_time > current_time) {
  //     index_time = 0;
  //     break;
  //   } else if (targetPath_.trajectorypoint[targetPath_.pointsize - 1].absolute_time <= current_time) {
  //     index_time = targetPath_.pointsize - 1;
  //     break;
  //   }
  // }
  index_time = 0;
  for (int i = 0; i < targetPath_.pointsize; i++)
  {
    int dis = sqrt(pow(targetPath_.trajectorypoint[i].x - pGps.Position_x,2) + pow(targetPath_.trajectorypoint[i].y - pGps.Position_y,2));
    if (dis < min_dis)
    {
      min_dis = dis;
      index_pos = i;
    }
  }
  return {index_time, index_pos};
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
  std::shared_ptr<NumericMeanFilter> s_ref_mean = std::make_shared<NumericMeanFilter>(50);
  std::shared_ptr<NumericMeanFilter> s_err_mean = std::make_shared<NumericMeanFilter>(20);
  std::shared_ptr<NumericMeanFilter> ego_s_mean = std::make_shared<NumericMeanFilter>(50);
  std::shared_ptr<NumericMeanFilter> steer_cmd_mean = std::make_shared<NumericMeanFilter>(5);
  std::shared_ptr<LowPassFilter> ego_d_filter = std::make_shared<LowPassFilter>(0.1, 0.9);
  std::shared_ptr<LowPassFilter> heading_err_filter = std::make_shared<LowPassFilter>(0.1, 0.9);
  std::shared_ptr<LowPassFilter> ego_d_rate_filter = std::make_shared<LowPassFilter>(0.2, 0.8);
  std::shared_ptr<LowPassFilter> heading_err_rate_filter = std::make_shared<LowPassFilter>(0.2, 0.8);
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
    std::cout << "targetPath_.pointsize = " << targetPath_.pointsize << std::endl;
     // 先订阅到消息才可以发布 
    if (targetPath_.pointsize > 0) {

      std::pair<int, int> index = getIndex(targetPath_,gps_);
      const auto& matched_point = targetPath_.trajectorypoint[std::get<1>(index)];
      const auto& ref_point = targetPath_.trajectorypoint[std::get<0>(index)];

      double vel_spd = sqrt(pow(gps_.Velocity_x,2) + pow(gps_.Velocity_y,2));
      const double d_err_x = gps_.Position_x - matched_point.x;
      const double d_err_y = gps_.Position_y - matched_point.y;

      double reference_s = ref_point.s;
      reference_s = s_ref_mean->filt(reference_s);
      const double matched_s = matched_point.s;
      const double matched_theta = matched_point.theta;
      double ego_s = matched_s + d_err_x * std::cos(matched_theta) + d_err_y * std::sin(matched_theta);
      ego_s = ego_s_mean->filt(ego_s);
      double s_error = reference_s - ego_s;
      s_error = s_err_mean->filt(s_error);

      double speed_comp = posPid->PID_Control(reference_s, ego_s);

      const double theta_diff = gps_.Yaw - matched_point.theta;
      const double ego_d = d_err_y * std::cos(matched_theta) + d_err_x * std::sin(matched_theta);
      double matched_k = matched_point.kappa;
      double denominator1 =
          (1 - matched_k * (ego_d)) <= 0.0 ? 1.0 : (1 - matched_k * (ego_d));
      const double ego_v = vel_spd * std::cos(theta_diff) / denominator1;
      double acc_comp = velPid->PID_Control(ref_point.v + speed_comp, ego_v);

      double throttle_break_cmd = ref_point.a + acc_comp;

      double lat_error = ego_d;
      lat_error = ego_d_filter->filt(lat_error);
      double heading_error = theta_diff;
      heading_error = heading_err_filter->filt(heading_error);
      double lat_error_rate = vel_spd * std::sin(heading_error);
      lat_error_rate = ego_d_rate_filter->filt(lat_error_rate);
      double heading_error_rate = 0.0 - matched_k * matched_point.v;
      heading_error_rate = heading_err_rate_filter->filt(heading_error_rate);
      double ref_heading_rate = matched_k * matched_point.v;
      
      double steer = control_base->calculateCmd(targetPath_, gps_, lat_error,
         heading_error, lat_error_rate, heading_error_rate, vel_spd, ref_heading_rate, matched_k);
      steer = steer_cmd_mean->filt(steer);
      common_msgs::Control_Test control_info;
      control_info.header.frame_id = "world";
      control_info.header.stamp = ros::Time::now();
      control_info.Gear = 4;
      steer = 29 * steer;
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
        throttle_break_cmd = std::fmin(throttle_break_cmd, 2.0);
        control_info.ThrottlePedal = throttle_break_cmd * 50.0;
        control_info.BrakePedal = 0.0;
      }
      else
      {
        throttle_break_cmd = std::fmin(-throttle_break_cmd, 3.0);
        control_info.BrakePedal = throttle_break_cmd * 100.0 / 3.0;
        control_info.ThrottlePedal = 0.0;
      }

      // 到达终点发制动 x: 116.490491,y: 39.729672,z: 0.0
      const double endpoint_x = 116.490491;
      const double endpoint_y = 39.729672;
      static bool is_in_endpoint = false;
      if (pow((gps_.Position_x - endpoint_x), 2) + pow((gps_.Position_y - endpoint_y), 2) < 28) {
        is_in_endpoint = true;
      }
      if (is_in_endpoint) {
        control_info.BrakePedal = 50.0;
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