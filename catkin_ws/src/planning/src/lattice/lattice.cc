#include "lattice.h"
#include <vector>
#include "geometry_msgs/PoseArray.h"

namespace dust{
namespace planning{

// 将输入的参考点序列转换为路径点序列，并计算路径点在参考线上的累积长度s
std::vector<PathPoint> ToDiscretizedReferenceLine(
      const std::vector<ReferencePoint> &ref_points)
{
    double s = 0.0;
    std::vector<PathPoint> path_points;
    for (const auto &ref_point : ref_points)
    {
      PathPoint path_point;
      path_point.set_x(ref_point.x_);
      path_point.set_y(ref_point.y_);
      path_point.set_theta(ref_point.heading());
      path_point.set_kappa(ref_point.kappa());
      path_point.set_dkappa(ref_point.dkappa());

      if (!path_points.empty())
      {
        double dx = path_point.x - path_points.back().x;
        double dy = path_point.y - path_points.back().y;
        s += std::sqrt(dx * dx + dy * dy);
      }
      path_point.set_s(s);
      path_points.push_back(std::move(path_point));
    }
    return path_points;
}

void Turn_pre_bounding_into_squares(visualization_msgs::Marker &marker,
                                               const Box2d &pre_bounding_box, const int id)
{
  marker.pose.orientation = tf::createQuaternionMsgFromYaw(pre_bounding_box.heading());
  marker.header.frame_id = "world";
  marker.header.stamp = ros::Time::now();
  marker.ns = "basic_shapes";
  marker.id = id;
  marker.type = visualization_msgs::Marker::CUBE;
  marker.action = visualization_msgs::Marker::ADD;
  marker.pose.position.x = pre_bounding_box.center_x();
  marker.pose.position.y = pre_bounding_box.center_y();
  marker.pose.position.z = 0;
  marker.scale.x = pre_bounding_box.length();
  marker.scale.y = pre_bounding_box.width();
  marker.scale.z = 2.0;
  marker.color.r = 255.0f;
  marker.color.g = 0.0f;
  marker.color.b = 0.0f;
  marker.color.a = 0.8;
  marker.lifetime = ros::Duration();
}
void clear_pre_bounding_squares(visualization_msgs::Marker &marker, int id) {
  marker.pose.orientation = tf::createQuaternionMsgFromYaw(0);
  marker.header.frame_id = "world";
  marker.header.stamp = ros::Time::now();
  marker.ns = "basic_shapes";
  marker.id = id;
  marker.type = visualization_msgs::Marker::CUBE;
  marker.action = visualization_msgs::Marker::ADD;
  marker.pose.position.x = 0;
  marker.pose.position.y = 0;
  marker.pose.position.z = 0;
  marker.scale.x = 0;
  marker.scale.y = 0;
  marker.scale.z = 0;
  marker.color.r = 255.0f;
  marker.color.g = 0.0f;
  marker.color.b = 0.0f;
  marker.color.a = 0.0;
  marker.lifetime = ros::Duration();
}


// 在rviz中显示没有通过碰撞检测的轨迹
void lattice::RvizTrajectoryCluster(const DiscretizedTrajectory &path_point)
{
    // traj_points_.poses.clear();
    traj_points_.header.frame_id = "world";
    traj_points_.header.stamp = ros::Time::now();
    for (int i = 0; i < path_point.size(); ++i)
    {
        geometry_msgs::PoseStamped pose_stamp;
        pose_stamp.header.frame_id = "world";
        pose_stamp.header.stamp = ros::Time::now();
        pose_stamp.pose.position.x = path_point[i].x;
        pose_stamp.pose.position.y = path_point[i].y;
        pose_stamp.pose.position.z = 0;
        traj_points_.poses.push_back(pose_stamp);
    }
    rviz_cluster_pub_.publish(traj_points_);
}

void lattice::RvizPreBoundingRectangles(const std::vector<Box2d> &pre_bounding_rectangles, double obstacles_size) {   // 如何把 Box2d 打印出来
  static int pre_obs_size = 0;
  if (pre_bounding_rectangles.size() > 0)
    {
      pre_obs_size = pre_bounding_rectangles.size();
      visualization_msgs::MarkerArray obstacle_MarkerArray;
      obstacle_MarkerArray.markers.clear();
      for (int i = 0; i < pre_bounding_rectangles.size(); ++i)
      {
        visualization_msgs::Marker marker;
        Turn_pre_bounding_into_squares(marker, pre_bounding_rectangles[i], i);
        obstacle_MarkerArray.markers.push_back(marker);
      }
      rviz_pre_bounding_rectangles_pub_.publish(obstacle_MarkerArray);
    } 
    // if (obstacles_size == 0) {
    //   visualization_msgs::MarkerArray obstacle_MarkerArray;
    //   for (int i = 0; i < pre_obs_size; ++i) {
    //     visualization_msgs::Marker marker;
    //     clear_pre_bounding_squares(marker,i);
    //     obstacle_MarkerArray.markers.push_back(marker);
    //   }

    //   rviz_pre_bounding_rectangles_pub_.publish(obstacle_MarkerArray);
    // }
}


lattice::lattice(){

  rviz_cluster_pub_ = n_.advertise<nav_msgs::Path>("/rviz_trajectory_cluster", 10);          //在rviz中打印轨迹簇
  rviz_pre_bounding_rectangles_pub_ = n_.advertise<visualization_msgs::MarkerArray>("/rviz_pre_bounding_rectangles", 10);  // 在rviz中显示预测的障碍物矩形边界 
}



// 当障碍物在60m外，或者在自车后面，则返回ture
bool IsObstacleBehindOutOfEgoVehicle(
    const Obstacle allobstacle, const double ego_vehicle_s,  // 自车在参考线上的s
    const std::vector<ReferencePoint> &discretized_reference_line)
{
  // 计算障碍物在参考线的s
  auto obstacle_reference_line_position = PathMatcher::GetPathFrenetCoordinate(discretized_reference_line, allobstacle.centerpoint.position.x, allobstacle.centerpoint.position.y);

  if (obstacle_reference_line_position.first < (ego_vehicle_s - 60) || (ego_vehicle_s + 60) < obstacle_reference_line_position.first 
        || ( obstacle_reference_line_position.first + 10 ) < ego_vehicle_s)
  {
    // std::cout << "Ignore obstacle [" << obstacle->obstacle_id << "]";
    return true;
  }
  return false;
}



DiscretizedTrajectory lattice::plan(
    const TrajectoryPoint &planning_init_point,
    const PlanningTarget &planning_target,
    std::vector<const Obstacle *> &obstacles,   // const std::vector<const Obstacle *> &obstacles  去掉了 const   要保证其他传入的障碍物不能被修改！
    const std::vector<double> &accumulated_s,
    const std::vector<ReferencePoint> &reference_points, const bool &lateral_optimization,
    const double &init_relative_time, const double lon_decision_horizon, const double &plan_start_time)
{
 
  DiscretizedTrajectory Optim_trajectory;
  // 1. 规划起点在参考线上的投影点     // reference_points 中有纵向累积的s值 accumulated_s
  ReferencePoint matched_point = PathMatcher::MatchToPath(reference_points, planning_init_point.path_point().x, planning_init_point.path_point().y);

  // 2. 规划起点 cartesian_to_frenet 坐标转换
  std::array<double, 3> init_s; // 存储{纵向位置s, 纵向速度， 纵向加速度}
  std::array<double, 3> init_d; // 存储{横向位置d, 横向速度， 横向加速度}
  ComputeInitFrenetState(matched_point, planning_init_point, &init_s, &init_d);

  // std::cout << "init_s[0] = " << init_s[0] << " init_d[0] = " << init_d[0] << std::endl;

  // 3.对障碍物进行筛选后，再存入 obstacles 中
  obstacles.clear();
  for (size_t i = 0; i < AllObstacle.size(); ++i)
  {
    if (IsObstacleBehindOutOfEgoVehicle(AllObstacle[i], init_s[0], reference_points))  // 当障碍物在60m外，或者在自车后面10m，则返回ture
    {
      continue;
    }
    obstacles.emplace_back(&AllObstacle[i]);
  }

  std::vector<std::array<double, 3>>  obs_frenet_state = {{0.0, 0.0, 0.0}};
  if(obstacles.size() != 0 ) obs_frenet_state = PathMatcher::GetPathFrenetCoordinate(reference_points, obstacles); // 多个障碍物


  // 3.解析决策并得出规划目标       // 与Apollo不同，我们的前探距离不加上init_s[0]，因为我们的仿真的参考线不长？？？
  // 1) 根据障碍物的列表算ST图
  auto ptr_path_time_graph = std::make_shared<PathTimeGraph>(obstacles, reference_points, init_s[0],
                                                             init_s[0] + 60, // 前瞻位置（初始位置前200米） lon_decision_horizon
                                                             0.0, Config_.FLAGS_trajectory_time_length, init_d);

  // ST 图很有问题，一直为0； SL 图也没有障碍物存入！！！！
  ROS_ERROR("ST动态障碍物 size = %d / (%d)", ptr_path_time_graph->GetPathTimeObstacles().size(), obstacles.size());  // ST图调试

  // // 打印ST 图中存储的个数 (用cout相比WARN打印比较及时)
  // std::cout << "ST动态障碍物 size = " << ptr_path_time_graph->GetPathTimeObstacles().size();  
  // std::cout << " / " << obstacles.size() << std::endl; // ST图调试 

  // 2) 参考点向量转换为路径点向量                                                          
  auto ptr_reference_line = std::make_shared<std::vector<PathPoint>>(ToDiscretizedReferenceLine(reference_points));
  // 3）将障碍物按照id 存储为map容器(key, value)
  auto ptr_prediction_querier = std::make_shared<PredictionQuerier>(obstacles, ptr_reference_line);

  // // 打印map中存储的障碍物个数  答：障碍物存储没有问题
  //  ROS_WARN("Map size = %d / (%d)", ptr_prediction_querier->GetObstacles().size(), obstacles.size());  // ST图调试

  // 4.生成横纵向轨迹
  Trajectory1dGenerator trajectory1d_generator(init_s, init_d, ptr_path_time_graph, ptr_prediction_querier); // 对变量进行初始化
  std::vector<std::shared_ptr<Curve1d>> lon_trajectory1d_bundle; // 纵向速度
  std::vector<std::shared_ptr<Curve1d>> lat_trajectory1d_bundle; // 横向路径
  trajectory1d_generator.GenerateTrajectoryBundles(planning_target, &lon_trajectory1d_bundle, &lat_trajectory1d_bundle, obstacles, obs_frenet_state, matched_point); // 传入障碍物

  // std::cout << "number_lon_traj = " << lon_trajectory1d_bundle.size();
  // std::cout << "  number_lat_traj = " << lat_trajectory1d_bundle.size() << "\n";


  // 5.生成轨迹评估和碰撞检测的实例，调用相应的构造函数
  TrajectoryEvaluator trajectory_evaluator(planning_target, lon_trajectory1d_bundle, lat_trajectory1d_bundle,
                                           init_s, ptr_path_time_graph, reference_points); // 获取轨迹评价实例，调用构造函数对横纵向轨迹进行评价
  
  CollisionChecker collision_checker(obstacles, init_s[0], init_d[0], reference_points, ptr_path_time_graph, obs_frenet_state); // 获取碰撞检查器实例，调用构造函数生成静态和动态障碍物的边界矩形

  // 打印预测的障碍物矩形边界gt
  RvizPreBoundingRectangles(collision_checker.PreBoundingRectangles(), obstacles.size());

  while (trajectory_evaluator.has_more_trajectory_pairs())
  {
    // 6.计算每条轨迹的代价,并得出优先级队列
    double trajectory_pair_cost = trajectory_evaluator.top_trajectory_pair_cost();
    auto trajectory_pair = trajectory_evaluator.next_top_trajectory_pair();

  
    // 7.进行轨迹拼接
    auto combined_trajectory = trajectorycombiner_.Combine(accumulated_s, *trajectory_pair.first, *trajectory_pair.second,
                                                          reference_points, init_relative_time, plan_start_time);

    // ROS_WARN("gt: lateral_optimization = %d\n", lateral_optimization);

    // 8.碰撞检测，总是得到结合的最好的轨迹对，返回第一次无碰撞的轨迹
    if (1)    // 采样时候才调用，二次规划不用    // lateral_optimization == false
    {
      // check longitudinal and lateral acceleration
      // considering trajectory curvatures
    //  auto result = constraintchecker_.ValidTrajectory(combined_trajectory);  // 注释掉的原因：这段代码在拐弯处会筛选掉非常多的轨迹，导致车子不动
    //  if (result != ConstraintChecker::Result::VALID)
    //  {
    //    switch (result)
    //    {
    //      case ConstraintChecker::Result::LON_VELOCITY_OUT_OF_BOUND:
    //        break;
    //      case ConstraintChecker::Result::LON_ACCELERATION_OUT_OF_BOUND:
    //        break;
    //      case ConstraintChecker::Result::LON_JERK_OUT_OF_BOUND:
    //        break;
    //      case ConstraintChecker::Result::CURVATURE_OUT_OF_BOUND:
    //        break;
    //      case ConstraintChecker::Result::LAT_ACCELERATION_OUT_OF_BOUND:
    //        break;
    //      case ConstraintChecker::Result::LAT_JERK_OUT_OF_BOUND:
    //        break;
    //      case ConstraintChecker::Result::VALID:
    //      default:
    //      // Intentional empty
    //      break;
    //    }
    //    continue;
    //  }
      if (collision_checker.InCollision(combined_trajectory)) //轨迹点与障碍物的边界矩形进行，碰撞检测
      {
          // RvizTrajectoryCluster(combined_trajectory); // 先把轨迹给显示出来（不是真正的轨迹簇，只是会产生碰撞的轨迹）  打开之后有很明显的滞后性
          // ROS_WARN("该轨迹自车和障碍物发生了碰撞！");
          continue;
      }
    }
    

    Optim_trajectory = std::move(combined_trajectory);  // 将 combined_trajectory 内部数据的所有权（指针、引用或其他资源）转交给 Optim_trajectory
//    std::cout << "Total_Trajectory_Cost = " << trajectory_pair_cost << "\n";
    break;
  }
  // traj_points_.poses.clear();// 对轨迹簇进行清除
  // RvizTrajectoryCluster(Optim_trajectory);

  // ROS_WARN("Optim_trajectory.size() :%ld",Optim_trajectory.size());
  return Optim_trajectory;
}

void lattice::ComputeInitFrenetState(const ReferencePoint &matched_point, const TrajectoryPoint &cartesian_state,
                            std::array<double, 3> *ptr_s, std::array<double, 3> *ptr_d)
{
  CartesianFrenetConverter::cartesian_to_frenet(
      matched_point.accumulated_s_, matched_point.x_, matched_point.y_,
      matched_point.heading_, matched_point.kappa_, matched_point.dkappa_,
      cartesian_state.path_point().x, cartesian_state.path_point().y,
      cartesian_state.v, cartesian_state.a,
      cartesian_state.path_point().theta,
      cartesian_state.path_point().kappa, ptr_s, ptr_d);
}


} // namespace planning
} // namespace dust