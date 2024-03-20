#include "trajectory1d_generator.h"

// (1).纵向速度规划： GenerateLongitudinalTrajectoryBundle
//说明：对于纵向轨迹，在停车和跟车状态，也都是五次多项式，但对于巡航状态，由于我们不需要确定末状态的S值，
//所以只有五个变量（起始点s、v、a和末点的v、a），
//足够用于求解四次多项式，所以采用四次多项式即 Quartic polynomial 纵向轨迹实质是v-t图，即速度规划。
//(a)巡航状态下的纵向轨迹束:把每一条轨迹和其对应的多项式方程存在vector
//(b)停车状态的纵向轨迹生成,还需要输入要停止的末点（纵向距离值）
//(c)跟车、超车状态下的纵向轨迹束(ST图采样)

// (2).在lattice中，横向轨迹规划通过S-L的关系来进行障碍物的规避，lattice中有两种方法，执行起来二选一：
//撒点采样法、二次规划法


// 具有给定初始状态和结束条件的轨迹束生成的通用函数
typedef std::array<double, 3> State;
typedef std::pair<State, double> Condition;
typedef std::vector<std::shared_ptr<Curve1d>> Trajectory1DBundle;

Trajectory1dGenerator::Trajectory1dGenerator(const State &lon_init_state, const State &lat_init_state,
                                             std::shared_ptr<PathTimeGraph> ptr_path_time_graph,
                                             std::shared_ptr<PredictionQuerier> ptr_prediction_querier)
    : init_lon_state_(lon_init_state),
      init_lat_state_(lat_init_state),
      end_condition_sampler_(lon_init_state, lat_init_state, ptr_path_time_graph, ptr_prediction_querier),
      ptr_path_time_graph_(ptr_path_time_graph)
{
  ros::NodeHandle n;
  ros::param::get("use_lateral_optimization", this->FLAGS_lateral_optimization);
}
//产生轨迹
void Trajectory1dGenerator::GenerateTrajectoryBundles(const PlanningTarget &planning_target,
                                                      Trajectory1DBundle *ptr_lon_trajectory_bundle,
                                                      Trajectory1DBundle *ptr_lat_trajectory_bundle,
                                                      const std::vector<const Obstacle *> &obstacles,
                                                      const std::vector<std::array<double, 3>> &obs_frenet_state,
                                                      const ReferencePoint &matched_point)
{
  GenerateLongitudinalTrajectoryBundle(planning_target, ptr_lon_trajectory_bundle); // 纵向速度规划
  GenerateLateralTrajectoryBundle(ptr_lat_trajectory_bundle, obstacles, obs_frenet_state, matched_point); // 横向轨迹规划
}

//1.产生纵向轨迹，即速度规划
void Trajectory1dGenerator::GenerateLongitudinalTrajectoryBundle(const PlanningTarget &planning_target, Trajectory1DBundle *ptr_lon_trajectory_bundle) const
{
  // 1）生成巡航轨迹（无规则规划，不考虑障碍物）
  GenerateSpeedProfilesForCruising(planning_target.cruise_speed(), ptr_lon_trajectory_bundle);

  // 2）根据路径-时间（ST）图生成速度规划，用于超车或跟随前车
  GenerateSpeedProfilesForPathTimeObstacles(ptr_lon_trajectory_bundle); 

  // 3）停车点
  if (planning_target.has_stop_point())   // false
  {
    GenerateSpeedProfilesForStopping(planning_target.stop_point(), ptr_lon_trajectory_bundle);
  }
}
//2.产生横向轨迹，即路径规划 (gt：横向采样中没有考虑静态障碍物的问题，是通过最后的碰撞检测来筛选碰撞的轨迹的)
void Trajectory1dGenerator::GenerateLateralTrajectoryBundle(Trajectory1DBundle *ptr_lat_trajectory_bundle, const std::vector<const Obstacle *> &obstacles,
                                                              const std::vector<std::array<double, 3>> &obs_frenet_state, const ReferencePoint &matched_point) const
{
  if (!FLAGS_lateral_optimization) //采样规划
  {

    auto end_conditions = end_condition_sampler_.SampleLatEndConditions(obstacles, obs_frenet_state, matched_point); 


    // Use the common function to generate trajectory bundles.
    GenerateTrajectory1DBundle<5>(init_lat_state_, end_conditions, ptr_lat_trajectory_bundle);// end_conditions[0].second是s，自变量，这里为什么要ptr_trajectory1d->set_target_time(end_condition.second);什么意思呢？

  }
  else //二次规划osqp对比着学
  {
    double s_min = init_lon_state_[0]; //自主车的初始纵向距离
    // double s_min = 0.0; //自主车的初始纵向距离
    double s_max = s_min + Config_.FLAGS_max_s_lateral_optimization;

    double delta_s = Config_.FLAGS_default_delta_s_lateral_optimization;

    auto lateral_bounds = ptr_path_time_graph_->GetLateralBounds(s_min, s_max, delta_s);

    std::unique_ptr<LateralQPOptimizer> lateral_optimizer(new LateralOSQPOptimizer());

    bool success_qp = lateral_optimizer->optimize(init_lat_state_, delta_s, lateral_bounds);
    if (success_qp == true)
    {
      auto lateral_trajectory = lateral_optimizer->GetOptimalTrajectory();
      ptr_lat_trajectory_bundle->push_back(std::make_shared<PiecewiseJerkTrajectory1d>(lateral_trajectory));
    }
    else
    {
      //调用停止模式
      ROS_INFO("success_qp error");
    }
  }
}

void Trajectory1dGenerator::GenerateSpeedProfilesForCruising(const double target_speed,
                                                             Trajectory1DBundle *ptr_lon_trajectory_bundle) const
{
//  ROS_INFO("cruise speed is %f", target_speed);
  auto end_conditions = end_condition_sampler_.SampleLonEndConditionsForCruising(target_speed);
  if (end_conditions.empty())
  {
    return;
  }
  GenerateTrajectory1DBundle<4>(init_lon_state_, end_conditions, ptr_lon_trajectory_bundle);
}

void Trajectory1dGenerator::GenerateSpeedProfilesForStopping(const double stop_point, Trajectory1DBundle *ptr_lon_trajectory_bundle) const
{
  // std::cout << "stop point is " << stop_point << std::endl;
  auto end_conditions = end_condition_sampler_.SampleLonEndConditionsForStopping(stop_point);
  if (end_conditions.empty())
  {
    return;
  }
  GenerateTrajectory1DBundle<5>(init_lon_state_, end_conditions, ptr_lon_trajectory_bundle);
}

void Trajectory1dGenerator::GenerateSpeedProfilesForPathTimeObstacles(Trajectory1DBundle *ptr_lon_trajectory_bundle) const
{
  auto end_conditions = end_condition_sampler_.SampleLonEndConditionsForPathTimePoints();
  if (end_conditions.empty())
  {
    return;
  }
  GenerateTrajectory1DBundle<5>(init_lon_state_, end_conditions, ptr_lon_trajectory_bundle);
}