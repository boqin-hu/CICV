#include "collision_checker.h"

CollisionChecker::CollisionChecker()
{
}

CollisionChecker::CollisionChecker(const std::vector<const Obstacle *> &obstacles, const double ego_vehicle_s,
                                   const double ego_vehicle_d,
                                   const std::vector<ReferencePoint> &discretized_reference_line,
                                   const std::shared_ptr<PathTimeGraph> &ptr_path_time_graph) : ptr_path_time_graph_(ptr_path_time_graph)
{
  // BuildPredictedEnvironment(obstacles, ego_vehicle_s, ego_vehicle_d, discretized_reference_line); // 生成障碍物的矩形边界
}

CollisionChecker::CollisionChecker(const std::vector<const Obstacle *> &obstacles, const double ego_vehicle_s,
                                   const double ego_vehicle_d,
                                   const std::vector<ReferencePoint> &discretized_reference_line,
                                   const std::shared_ptr<PathTimeGraph> &ptr_path_time_graph,
                                   const std::vector<std::array<double, 3>>  &obs_frenet_state) : ptr_path_time_graph_(ptr_path_time_graph)
{
  BuildPredictedEnvironment(obstacles, ego_vehicle_s, ego_vehicle_d, discretized_reference_line, obs_frenet_state); // 生成障碍物的矩形边界
}

CollisionChecker::~CollisionChecker()
{
}

//原理：https://zhuanlan.zhihu.com/p/146778379
bool CollisionChecker::InCollision(const DiscretizedTrajectory &discretized_trajectory) // 拼接的轨迹
{
  // CHECK_LE(discretized_trajectory.NumOfPoints(), predicted_bounding_rectangles_.size());


  // ROS_WARN("障碍物矩形边界个数 :%ld", predicted_bounding_rectangles_.size()); // gt碰撞检测调试：打印 有几个障碍物的矩形边界
  // ROS_WARN("轨迹点的个数 :%ld", discretized_trajectory.NumOfPoints()); // gt碰撞检测调试：打印 轨迹点的个数
  
  if(predicted_bounding_rectangles_.size() == 0) return false;

  // 自车碰撞横纵向 避障膨胀
  double ego_length = Config_.FLAGS_vehicle_length + 0.6; // 0.4 //0.5;  // + 1
  double ego_width = Config_.FLAGS_vehicle_width + 0.4; // 0.4 //0.8; // + 0.8

  for (size_t i = 0; i < discretized_trajectory.NumOfPoints(); ++i)
  {
    const auto &trajectory_point = discretized_trajectory.TrajectoryPointAt(static_cast<std::uint32_t>(i));
    double ego_theta = trajectory_point.theta;
    Box2d ego_box({trajectory_point.x, trajectory_point.y}, ego_theta, ego_length, ego_width);

    double shift_distance = ego_length / 2.0 - Config_.back_edge_to_center; //几何中心-车辆中心
    Vec2d shift_vec{shift_distance * std::cos(ego_theta), shift_distance * std::sin(ego_theta)};
    ego_box.Shift(shift_vec);

    for (const auto &obstacle_box : predicted_bounding_rectangles_)  // 这个box应该是离自己最近的障碍物，而不是全局中第一个障碍物！！
    {
      if (ego_box.HasOverlap(obstacle_box))
      {
        return true;
      }
    }
  }
  return false;
}

void CollisionChecker::BuildPredictedEnvironment(const std::vector<const Obstacle *> &obstacles, const double ego_vehicle_s,
                                                 const double ego_vehicle_d,
                                                 const std::vector<ReferencePoint> &discretized_reference_line,
                                                 const std::vector<std::array<double, 3>>  &obs_frenet_state)
{
  static int car4_id = 99;
  static int cycle2_id = 99;
  //排除不在同车道内或者在车后面的障碍物
  // If the ego vehicle is in lane,
  // then, ignore all obstacles from the same lane.
  bool ego_vehicle_in_lane = IsEgoVehicleInLane(ego_vehicle_s, ego_vehicle_d);

  std::vector<const Obstacle *> obstacles_considered;

  for (const Obstacle *obstacle : obstacles)
  {
    if (obstacle->IsVirtual()) // 给的false
    {
      continue;
    }

    //去掉了||!ptr_path_time_graph_->IsObstacleInGraph(obstacle->obstacle_id)，因为采样规划不想加入二次规划的ROI
    // if (ego_vehicle_in_lane &&
    //     (IsObstacleBehindEgoVehicle(obstacle, ego_vehicle_s, discretized_reference_line)))

    // if (ego_vehicle_in_lane &&   // 根据车道选择有问题！
    //     (IsObstacleBehindEgoVehicle(obstacle, ego_vehicle_s, discretized_reference_line) ||
    //      !ptr_path_time_graph_->IsObstacleInGraph(obstacle->obstacle_id)))   // 所有障碍物都没有被加入ST 图！！！
    // {
    //   continue; // 在同一个车道内，要么在主车后面要么不在ST图中
    // } 

    
    // ROS_INFO("是否加入ST图: %d ", ptr_path_time_graph_->IsObstacleInGraph(obstacle->obstacle_id)); // 查看是否被加入ST图

    // if (IsObstacleBehindEgoVehicle(obstacle, ego_vehicle_s, discretized_reference_line) ||
    //         IsObstacleOutOfEgoVehicle(obstacle, ego_vehicle_s, discretized_reference_line))  // 当障碍物在60m外，或者在自车后面，则返回ture
    // {
    //   continue;
    // }

    obstacles_considered.push_back(obstacle); // 必须要筛选出距离自己最近的障碍物，否则为空
  }
 
  ROS_WARN("考虑到的 / 实际的 障碍物个数 :%ld / %ld (%ld)", obstacles_considered.size(), obstacles.size(), AllObstacle.size());  // gt碰撞检测调试
  
  // obstacles 被筛选了，中间数量有在减少  —— 先判断原始的障碍物是否被过滤掉？ 答：没有被滤掉，因为超过了传感器圆周200m的识别范围；
  // obstacles_considered 感觉一直是0 —— 上面那段代码很重要，为什么没有障碍物被考虑？ 答：修改了障碍物筛选规则，如上的if();
  // predicted_bounding_rectangles_ 为什么一直都是81？ —— 和下面一段代码相关  答：貌似是 while循环的次数，被push_back很多次;  修改：修改了参数的数据类型，使其变得更容易理解

  double relative_time = 0.0;
  std::vector<Box2d> predicted_env;
  while (relative_time < Config_.FLAGS_trajectory_time_length) // gt：为什么轨迹时间是8s，预测时间是5s?
  {
    // std::vector<Box2d> predicted_env;

    for (int i =0; i < obstacles_considered.size(); ++i) //(const Obstacle *obstacle : obstacles_considered)
    {
      // If an obstacle has no trajectory, it is considered as static.
      // Obstacle::GetPointAtTime has handled this case.
      TrajectoryPoint point = obstacles_considered[i]->GetPointAtTime(relative_time);
      Box2d box = obstacles_considered[i]->GetBoundingBox(point);
      /*
        障碍物膨胀不难理解，为了安全，人在开车的过程中也会适当的远离附近车辆，
        但是这个膨胀方法显然太过死板了，或许百度内部早就优化了，
        只是开源没释放？所以暂时做了些许改动： 静止物体膨胀程度缩小、动态障碍物适当膨胀 。
        后期必然是需要继续完善的，进一步可借鉴物体危险程度势场方法。
        我认为纵向要膨胀大的
      */
      if (obstacles_considered[i]->IsStatic())
      {
        box.LongitudinalExtend(0.0); // 纵向扩展m   0.6    2.0 * 1.5 
        box.LateralExtend(0.0); // 横向扩展m  0.6     2.0 * 0.5
      }
      else
      {
        box.LongitudinalExtend(0.0 * Config_.FLAGS_lon_collision_buffer);  //  纵向扩展m   2.0 * 1.0
        box.LateralExtend(0.0 * Config_.FLAGS_lat_collision_buffer);   //  横向扩展m 2.0 * 0.2

        // if ( obs_frenet_state[i][1] <= -1.0)  cycle2_id = obstacles_considered[i]->obstacle_id;


        // if (obstacles_considered[i]->obstacle_velocity > 0.05 && obs_frenet_state[i][1] > 1.7)  car4_id = obstacles_considered[i]->obstacle_id;
        
        // if (obstacles_considered[i]->obstacle_id == car4_id && obstacles_considered[i]->obstacle_id != cycle2_id && cycle2_id != 99){   
        //     box.LongitudinalExtend(0.5);  //有追尾的风险
        //     if(obs_frenet_state[i][1] > 1.2) box.LateralExtend(10.0); 
        //     else box.LateralExtend(0.0); 
        // }
        
      }

      predicted_env.push_back(std::move(box));
    }

    // predicted_bounding_rectangles_.push_back(std::move(predicted_env)); // 预测的边界矩形
    relative_time += Config_.FLAGS_trajectory_time_resolution;
  }

  predicted_bounding_rectangles_.clear();
  if (predicted_env.size() != 0) predicted_bounding_rectangles_ = std::move(predicted_env); // 预测的边界矩形
 
  // 上面的一段处理挺关键的，关乎到静态和动态障碍物的 box
  // ROS_WARN("障碍物矩形边界个数 :%ld", predicted_bounding_rectangles_.size()); // gt碰撞检测调试：打印 有几个障碍物的矩形边界


}

bool CollisionChecker::IsEgoVehicleInLane(const double ego_vehicle_s,
                                          const double ego_vehicle_d)
{
  //道路宽度定了
  double left_width = Config_.FLAGS_default_reference_line_width * 0.25;// 5
  double right_width = Config_.FLAGS_default_reference_line_width * 0.25;

  // 跟据你当前自车的s值,来返回你距离左车道线的宽度和右车道线的宽度
  //获取道路宽度
  // ptr_reference_line_info_->reference_line().GetLaneWidth(
  //     ego_vehicle_s, &left_width, &right_width);

  return ego_vehicle_d < left_width && ego_vehicle_d > -right_width;
}

//判断障碍物是否在自主车后边，也就是不用考虑这个障碍物了,但是用中心点判断有Bug
bool CollisionChecker::IsObstacleBehindEgoVehicle(
    const Obstacle *obstacle, const double ego_vehicle_s,
    const std::vector<ReferencePoint> &discretized_reference_line)
{
  double half_lane_width = Config_.FLAGS_default_reference_line_width * 0.5;
  TrajectoryPoint point = obstacle->GetPointAtTime(0.0);

  auto obstacle_reference_line_position = PathMatcher::GetPathFrenetCoordinate(discretized_reference_line, point.x, point.y);

  // if (obstacle_reference_line_position.first < ego_vehicle_s && std::fabs(obstacle_reference_line_position.second) < half_lane_width)
  if (obstacle_reference_line_position.first < ego_vehicle_s)
  {
    // std::cout << "Ignore obstacle [" << obstacle->obstacle_id << "]";
    return true;
  }
  return false;
}

//判断障碍物在自车60m 外，则返回ture
bool CollisionChecker::IsObstacleOutOfEgoVehicle(
    const Obstacle *obstacle, const double ego_vehicle_s,
    const std::vector<ReferencePoint> &discretized_reference_line)
{
  TrajectoryPoint point = obstacle->GetPointAtTime(0.0);

  auto obstacle_reference_line_position = PathMatcher::GetPathFrenetCoordinate(discretized_reference_line, point.x, point.y);

  if (obstacle_reference_line_position.first < (ego_vehicle_s - 60) || (ego_vehicle_s + 60) < obstacle_reference_line_position.first )
  {
    // std::cout << "Ignore obstacle [" << obstacle->obstacle_id << "]";
    return true;
  }
  return false;
}