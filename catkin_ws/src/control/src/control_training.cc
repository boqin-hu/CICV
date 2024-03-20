// #include <ros/ros.h>
// #include "metaController.h"
// #include "lqr_control.h"
// #include "pure_pursuit_controller.h"
// #include "common_msgs/CICV_Location.h"
// #include "common_msgs/Control_Test.h"
// //#include "common_msgs/Perceptionobject.h"
// //#include "common_msgs/Perceptionobjects.h"
// #include <iostream>
// #include <deque>
// #include <boost/thread.hpp>
// #include <iostream>
// #include <vector>
// #include <cmath>

// using namespace dust::control;
// std::shared_ptr<controller> control_base;
// std::vector<RefPoint> targetPath_;
// common_msgs::CICV_Location location;

// struct Point {
//     double x;
//     double y;
// };
// struct TrajectoryData {
//     std::vector<double> x;
//     std::vector<double> y;
//     std::vector<double> curvature;
//     std::vector<double> headingAngle;
//     std::vector<double> curvatureDerivative;
// };
// std::vector<RefPoint> getTrajectoryPoint(const std::vector<Point>& trajectory)
// {
//     //用向前欧拉和向后欧
//     TrajectoryData data;
//     int pointCount = trajectory.size();
//     std::vector<RefPoint> trajectory_point;
//     trajectory_point.resize(pointCount);
//     data.x.resize(pointCount);
//     data.y.resize(pointCount);
//     data.curvature.resize(pointCount);
//     data.headingAngle.resize(pointCount);
//     data.curvatureDerivative.resize(pointCount);
//     for (int i = 0;i < pointCount;i++)
//     {
//         data.x[i] = trajectory[i].x;
//         data.y[i] = trajectory[i].y;
//     }
//     for (int i = 1; i < pointCount - 1; ++i) {
//         const Point& p0 = trajectory[i-1];
//         const Point& p1 = trajectory[i];
//         const Point& p2 = trajectory[i+1];

//         // Calculate distances
//         double dx1 = p1.x - p0.x;
//         double dy1 = p1.y - p0.y;
//         double dx2 = p2.x - p1.x;
//         double dy2 = p2.y - p1.y;

//         // Calculate tangent angles
//         double angle1 = std::atan2(dy1, dx1);
//         double angle2 = std::atan2(dy2, dx2);

//         // Calculate heading angle
//         data.headingAngle[i] = angle1;

//         // Calculate curvature
//         double crossProduct = dx1 * dy2 - dy1 * dx2;
//         double denominator = std::hypot(dx1, dy1) * std::hypot(dx2, dy2);
//         data.curvature[i] = crossProduct / denominator;

//         // Calculate curvature derivative
//         double dx = p2.x - p0.x;
//         data.curvatureDerivative[i] = (data.curvature[i+1] - data.curvature[i-1]) / (2.0 * dx);
//     }

//     // Set boundary values to match the adjacent points
//     data.curvature.front() = data.curvature[1];
//     data.curvature.back() = data.curvature[pointCount - 2];
//     data.headingAngle.front() = data.headingAngle[1];
//     data.headingAngle.back() = data.headingAngle[pointCount - 2];
//     data.curvatureDerivative.front() = data.curvatureDerivative[1];
//     data.curvatureDerivative.back() = data.curvatureDerivative[pointCount - 2];
//     for (int i = 0; i < pointCount; i++)
//     {
//         trajectory_point[i].x = data.x[i];
//         trajectory_point[i].y = data.y[i];
//         trajectory_point[i].kappa = data.curvature[i];
//         trajectory_point[i].theta = data.headingAngle[i];
//         trajectory_point[i].speed = 10;
//     }
//     return trajectory_point;
// }

// std::vector<Point> increasePointCount(const std::vector<Point>& trajectory, int targetPointCount) {
//     std::vector<Point> increasedTrajectory;

//     if (trajectory.size() < 2 || targetPointCount <= 0) {
//         return increasedTrajectory;
//     }

//     int originalPointCount = trajectory.size();
//     double stepSize = static_cast<double>(originalPointCount - 1) / (targetPointCount - 1);

//     for (int i = 0; i < targetPointCount; ++i) {
//         double index = i * stepSize;
//         int lowerIndex = static_cast<int>(std::floor(index));
//         int upperIndex = static_cast<int>(std::ceil(index));

//         double alpha = index - lowerIndex;
//         double beta = 1.0 - alpha;

//         Point interpolatedPoint;
//         interpolatedPoint.x = trajectory[lowerIndex].x * beta + trajectory[upperIndex].x * alpha;
//         interpolatedPoint.y = trajectory[lowerIndex].y * beta + trajectory[upperIndex].y * alpha;

//         increasedTrajectory.push_back(interpolatedPoint);
//     }

//     return increasedTrajectory;
// }

// void locationCallback(const common_msgs::CICV_Location::ConstPtr& pGps){
// 	location = *pGps;
// }
// int main(int argc, char **argv) {
//   ros::init(argc, argv, "control");
  
//   // ros parameter settings
//   //ros::param::get("which_controllers", which_controllers);
//   int which_controllers = 1;
//   ROS_INFO("which_controllers = %d",which_controllers);
//   switch (which_controllers)
//   {
//     case 0:
//       std::cout << "lqr init!!!" << std::endl;
//       control_base = std::make_shared<lqrControl>(0.1,0.06,0.0);
//       break;
//     case 1:
//       std::cout << "pure_pursuit init!!!" << std::endl;
//       control_base = std::make_shared<purePursuit>(0.1,0.06,0.0);
//       break;
//     default:
//       std::cout << "default:pure_pursuit init!!!" << std::endl;
//       control_base = std::make_shared<purePursuit>(0.1,0.06,0.0);
//       break;
//   }

//   ros::NodeHandle n_;
//   // ros sub
//   ros::Subscriber gps_sub = n_.subscribe("/cicv_location", 10, locationCallback);
//   // ros pub
//   ros::Publisher control_pub = n_.advertise<common_msgs::Control_Test>("/control_test", 10); 
//   // 感知障碍物的信息
//   //ros::Publisher perception_sub = n_.subscribe("/tpperception",10,obstacleCallback);
//   //
//   std::vector<Point> trajectory = {{97.5713,6.9645},{92.6701,3.9909},{89.1139,1.9461},{-53.0661,-74.2738},
//   {-60.2726,-78.6109},{-63.6972,-79.5655},{-67.0858,-79.0405},{-69.7586,-77.4654},{-71.0473,-75.5563},
//   {-72.4129,-73.2579},{-128.372,30.3763},{-129.635,32.2302},{-130.542,35.6225},{-130.147,38.1864},
//   {-129.398,40.5531},{-127.859,42.5081},{-125.256,44.2831},{-123.135,45.7277},{23.7486,143.77},
//   {25.8748,145.644},{27.9546,147.079},{30.644,148.011},{33.3693,147.688},{35.9947,145.768},
//   {37.6435,142.687},{39.7621,138.572},{97.8918,30.2606}};
//   int targetPointCount = 500;
//   std::vector<Point> increasedTrajectory = increasePointCount(trajectory, targetPointCount);
//   targetPath_ = getTrajectoryPoint(increasedTrajectory);
//   ros::Rate loop_rate(100);
//   while (ros::ok())
//   {
//     // 先订阅到消息才可以发布 
//     if (targetPath_.size() > 0) {
//       double steer = control_base->calculateCmd(targetPath_,location);
//       double speed = control_base->calculateThrottleBreak(targetPath_,location);
      
//       common_msgs::Control_Test control_info;
//       control_info.SteeringAngle = 180 * steer/3.1415926;
//       control_info.header.frame_id = "world";
//       control_info.header.stamp = ros::Time::now();
//       control_info.Gear = 4;
//       if (speed >=0)
//       {
//         if (speed >= 0.5)
//         {
//           control_info.ThrottlePedal =0.5;
//           control_info.BrakePedal = 0.0;
//         }
//         else
//         {
//           control_info.ThrottlePedal = speed;
//           control_info.BrakePedal = 0.0;
//         }
        
//       }
//       else
//       {
//         if (speed <= -0.5)
//         {
//           control_info.BrakePedal = 0.5;
//           control_info.ThrottlePedal = 0.0;
//         }
//         else
//         {
//           control_info.BrakePedal = -speed;
//           control_info.ThrottlePedal = 0.0;
//         }
//       }
//       ROS_INFO("Gear:%d,ThrottlePedal:%.2f,BreakPedal:%.2f,SteeringAngle:%.2f",control_info.Gear,control_info.ThrottlePedal,control_info.BrakePedal,control_info.SteeringAngle);
//       control_pub.publish(control_info);
//     }
//     ros::spinOnce();
//     loop_rate.sleep();
//   }
// }