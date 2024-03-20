#include "ros/ros.h"
#include <vector>
#include "geometry_msgs/PoseArray.h"
#include "common_msgs/CICV_Location.h"
#include "geometry_msgs/PoseWithCovarianceStamped.h"

#include <cmath>
#include <limits>

struct Point
{
    /* data */
    double x;
    double y;
    double z;
};

// // routing 数据
// std::vector<Point> trajectory = {{97.5713,6.9645},{92.6701,3.9909},{89.1139,1.9461},{-53.0661,-74.2738},{-60.2726,-78.6109},{-63.6972,-79.5655},
//                                  {-67.0858,-79.0405},{-69.7586,-77.4654},{-71.0473,-75.5563},{-72.4129,-73.2579},{-128.372,30.3763},{-129.635,32.2302},{-130.542,35.6225},
//                                  {-130.147,38.1864},{-129.398,40.5531},{-127.859,42.5081},{-125.256,44.2831},{-123.135,45.7277},{23.7486,143.77},{25.8748,145.644},{27.9546,147.079},
//                                  {30.644,148.011},{33.3693,147.688},{35.9947,145.768},{37.6435,142.687},{39.7621,138.572},{90.1294,44.9998},{97.9015,29.9628}};


// // routing 数据
// std::vector<Point> trajectory = {{97.5713,6.9645},{92.6701,3.9909},{89.1139,1.9461},{-44.555,-70.128},{-49.002,-72.542},{-58.023,-77.560},{-63.041,-79.720},
//                         {-67.170,-79.530},{-69.839,-78.069},{-71.650,-75.875},{-73.645,-72.581},{-77.398,-64.220},{-79.893,-59.494},{-128.372,30.3763},{-129.635,32.2302},{-130.542,35.6225},
//                                  {-130.147,38.1864},{-129.398,40.5531},{-127.859,42.5081},{-125.256,44.2831},{-123.135,45.7277},{23.7486,143.77},{25.8748,145.644},{27.9546,147.079},
//                                  {30.644,148.011},{33.3693,147.688},{35.9947,145.768},{37.6435,142.687},{39.7621,138.572},{90.1294,44.9998},{97.9015,29.9628}};

// // routing 数据
// std::vector<Point> trajectory = {{97.5713,6.9645},{92.6701,3.9909},{89.1139,1.9461},{-44.820,-70.119},{-48.857,-72.511},{-54.024,-75.426},{-57.099,-77.205},{-61.373,-79.604}
// ,{-65.351,-80.607},{-68.365,-79.700},{-71.228,-77.740},{-72.902,-75.451},{-75.920,-69.564},{-77.870,-64.794},{-80.113,-59.588},{-82.576,-54.560}
//                        ,{-128.372,30.3763},{-129.635,32.2302},{-130.542,35.6225},
//                                  {-130.147,38.1864},{-129.398,40.5531},{-127.859,42.5081},{-125.256,44.2831},{-123.135,45.7277},{23.7486,143.77},{25.8748,145.644},{27.9546,147.079},
//                                  {30.644,148.011},{33.3693,147.688},{35.9947,145.768},{37.6435,142.687},{39.7621,138.572},{90.1294,44.9998},{97.9015,29.9628}};


// // routing 数据
// std::vector<Point> trajectory = {{97.5713,6.9645},{92.6701,3.9909},{89.1139,1.9461},{-44.820,-70.119},{-48.857,-72.511},{-54.024,-75.426},{-57.099,-77.205},{-61.373,-79.604}
// ,{-65.351,-80.607},{-68.365,-79.700},{-71.228,-77.740},{-72.902,-75.451},{-75.920,-69.564},{-77.870,-64.794},{-80.113,-59.588},{-82.576,-54.560}
//  ,{-121.933,18.326},{-130.293,31.510},{-131.710,36.248},{-131.487,40.565},{-128.757,43.873},
//  {-125.027,46.395},{-120.835,48.307},{-115.897,50.908},{-112.294,52.976},{-109.422,54.901},
//  {15.458,138.068},{24.360,145.177},{27.095,147.137},{29.544,147.733},{32.442,147.781},
//  {34.341,147.065},{36.271,145.885},{38.411,142.881},{41.160,136.872},{42.354,133.461},
//  {90.1294,44.9998},{97.9015,29.9628}};


// 第2第3个弯道有点外切,11.16
// std::vector<Point> trajectory = {{97.5713,6.9645},{92.6701,3.9909},{89.1139,1.9461},{-44.820,-70.119},{-48.857,-72.511},{-54.024,-75.426},{-57.099,-77.205},{-61.373,-79.604}
// ,{-65.351,-80.607},{-68.365,-79.700},{-71.228,-77.740},{-72.902,-75.451},{-75.920,-69.564},{-77.870,-64.794},{-80.113,-59.588},{-82.576,-54.560}
//  ,{-121.933,18.326},{-130.293,31.510},{-131.710,36.248},{-131.487,40.565},{-128.757,43.873},
//  {-125.027,46.395},{-120.835,48.307},{-115.897,50.908},{-112.294,52.976},{-109.422,54.901},
//  {15.458,138.068},{24.360,145.177},{27.071,147.211},{29.630,147.974},{32.467,147.952},
//  {34.561,147.334},{36.832,145.809},{39.253,142.218},{41.827,137.121},{43.907,131.168},
//  {45.431,127.857},{90.1294,44.9998},{97.9015,29.9628}};

// // 假参考线
//  std::vector<Point> trajectory = {{95.457,5.211},{55.903,-16.101},{47.398,-24.065},{-2.092,-50.524},{-26.129,-60.096},{-48.857,-72.511},{-54.024,-75.426},{-57.099,-77.205},{-61.373,-79.604}
// ,{-65.351,-80.607},{-68.365,-79.700},{-71.228,-77.740},{-72.902,-75.451},{-75.920,-69.564},{-77.870,-64.794},{-80.113,-59.588},{-82.576,-54.560},{-94.017,-33.529},{-100.349,-28.550},{-106.895,-16.520},{-109.254,-5.394}
//  ,{-121.933,18.326},{-130.293,31.510},{-131.710,36.248},{-131.487,40.565},{-128.757,43.873},
//  {-125.027,46.395},{-121.585,48.536},{-117.325,51.376},{-110.353,56.029},{-90.917,67.125},
//  {15.458,138.068},{24.360,145.177},{27.071,147.211},{29.630,147.974},{32.467,147.952},
//  {34.561,147.334},{36.832,145.809},{39.253,142.218},{41.827,137.121},{43.907,131.168},
//  {45.431,127.857},{90.1294,44.9998},{97.9015,29.9628}};{-94.017,-33.529},{-100.735,-28.185},{-106.834,-17.008},{-109.254,-5.394},
 std::vector<Point> trajectory = {{97.5713,6.9645},{92.6701,3.9909},{89.1139,1.9461},{-44.820,-70.119},{-48.857,-72.511},{-54.024,-75.426},{-57.099,-77.205},{-61.373,-79.604}
,{-65.351,-80.607},{-68.365,-79.700},{-71.228,-77.740},{-72.902,-75.451},{-75.920,-69.564},{-77.870,-64.794},{-80.113,-59.588},{-82.576,-54.560},{-94.017,-33.529},{-96.214,-30.662},{-98.288,-28.211},{-101.359,-24.776},{-103.313,-22.068},{-104.671,-19.480},{-106.416,-14.833},{-107.624,-10.617},{-108.614,-7.344},{-109.756,-4.208},
 {-121.933,18.326},{-130.293,31.510},{-131.710,36.248},{-131.487,40.565},{-128.757,43.873},
 {-125.027,46.395},{-121.585,48.536},{-117.325,51.376},{-110.353,56.029},{-90.917,67.125},
 {15.458,138.068},{24.360,145.177},{27.071,147.211},{29.630,147.974},{32.467,147.952},
 {34.561,147.334},{36.832,145.809},{39.253,142.218},{41.827,137.121},{43.907,131.168},
 {45.431,127.857},{89.923,44.881},{94.940,35.545},{97.592,30.606}};
double calculateDistance(double x1, double y1, double x2, double y2) {
    return std::sqrt(std::pow(x1 - x2, 2) + std::pow(y1 - y2, 2));
}
// 计算两点之间的航向角度
double calculateYaw(double pose_x, double pose_y) {
    double minDistance = std::numeric_limits<double>::max();
    std::pair<Point, Point> nearestNeighbors;
    double x1, x2, y1, y2;
    int index = 0;

    for (int i = 0; i < trajectory.size()- 1; ++i){
        double distance1 = calculateDistance(trajectory[i].x, trajectory[i].y, pose_x, pose_y);
        double distance2 = calculateDistance(trajectory[i + 1].x, trajectory[i + 1].y, pose_x, pose_y);

        if (distance1 < minDistance) {
            minDistance = distance1;
            nearestNeighbors.first = trajectory[i];
            nearestNeighbors.second = trajectory[i + 1];
        }

        if (distance2 < minDistance) {
            minDistance = distance2;
            nearestNeighbors.first = trajectory[i];
            nearestNeighbors.second = trajectory[i + 1];
        }
    }

    // ROS_INFO("航向角计算：%.2f,%.2f,%.2f,%.2f",nearestNeighbors.first.x, nearestNeighbors.first.y, nearestNeighbors.second.x, nearestNeighbors.second.y);

    double deltaX = nearestNeighbors.second.x - nearestNeighbors.first.x;
    double deltaY = nearestNeighbors.second.y - nearestNeighbors.first.y;

    double bearing = std::atan2(deltaY, deltaX); // 计算航向角（yaw）
    bearing = std::fmod((bearing + 2 * M_PI), (2 * M_PI));
    return bearing;
}

// 处理2D Pose Estimate消息的回调函数
ros::Publisher cicv_location_pub;
void poseEstimateCallback(const geometry_msgs::PoseWithCovarianceStamped::ConstPtr& msg) {
    double pose_x = msg->pose.pose.position.x;
    double pose_y = msg->pose.pose.position.y;
    
    double orientation_w = msg->pose.pose.orientation.w;
    double orientation_x = msg->pose.pose.orientation.x;
    double orientation_y = msg->pose.pose.orientation.y;
    double orientation_z = msg->pose.pose.orientation.z;

    // 当收到 rviz 中 2D Pose Estimate 数据，则发送相应的定位数据
    common_msgs::CICV_Location cicv_location;
    cicv_location.header.frame_id = "world"; // base_link
    cicv_location.header.stamp = ros::Time::now();  

    cicv_location.Position_x = pose_x;
    cicv_location.Position_y = pose_y;

    cicv_location.SimTim = 0;
    cicv_location.Velocity_x = 0;   // 单位 m/s    定位速度给0，可能会对局部路径规划产生影响！！！
    cicv_location.Velocity_y = 0;   // 单位 m/s
    cicv_location.Accel_x = 0;
    cicv_location.Accel_y = 0;
    cicv_location.Angular_velocity_z = 0;

    // cicv_location.Yaw = calculateYaw(pose_x, pose_y);  // 航向角
    cicv_location.Yaw = 0.54;
    cicv_location.Pitch = 0;
    cicv_location.Roll = 0;

    // ROS_INFO("定位数据：%.2f,%.2f,%.2f", pose_x, pose_y, cicv_location.Yaw);


    cicv_location_pub.publish(cicv_location);
}


int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"global_routing");
    ros::NodeHandle nh;

    // 1.Publisher
    ros::Publisher routing_pub = nh.advertise<geometry_msgs::PoseArray>("/routing",10);
  
    // 全局路径的数据
    geometry_msgs::PoseArray routing;
 
    routing.poses.resize(trajectory.size());
    routing.header.frame_id = "world";
    routing.header.stamp = ros::Time::now();
    for (int i = 0; i < trajectory.size(); i++)
    {
        routing.poses[i].position.x = trajectory[i].x;
        routing.poses[i].position.y = trajectory[i].y;
        routing.poses[i].position.z = trajectory[i].z;
    }
    ROS_INFO("正在发送全局路径...");


    // 2.订阅rviz 中的 2D Pose Estimate 消息，再发布
    ros::Subscriber sub = nh.subscribe("/initialpose", 1000, poseEstimateCallback);
    cicv_location_pub = nh.advertise<common_msgs::CICV_Location>("/cicv_location",10); // 代替 vtd 给 planning 一帧的定位数据, 速度 6m/s


    ros::Rate r(10);
    while (ros::ok())
    {
        // ROS_INFO("正在发送全局路径...路径起点:%.2f,%.2f",routing.poses.front().position.x,routing.poses.front().position.y);
        routing_pub.publish(routing);

        r.sleep();
        ros::spinOnce();
    }
    return 0;
}


