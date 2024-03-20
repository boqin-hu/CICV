#include "end_condition_sampler.h"

using State = std::array<double, 3>;
using Condition = std::pair<State, double>; //  std::pair<std::array<double, 3>, double>

EndConditionSampler::EndConditionSampler(const State &init_s, const State &init_d,
                                         std::shared_ptr<PathTimeGraph> ptr_path_time_graph, std::shared_ptr<PredictionQuerier> ptr_prediction_querier)
    : init_s_(init_s), init_d_(init_d), feasible_region_(init_s), ptr_path_time_graph_(std::move(ptr_path_time_graph)), ptr_prediction_querier_(std::move(ptr_prediction_querier))
{
}

int EndConditionSampler::cycle_id = 250;
int EndConditionSampler::car_id = 250;
int EndConditionSampler::low_car_id = 250;
std::vector<Condition> EndConditionSampler::SampleLatEndConditions(const std::vector<const Obstacle *> &obstacles,
                                                                    const std::vector<std::array<double, 3>> &obs_frenet_state,  // s d theta
                                                                    const ReferencePoint &matched_point) const
{
  static int change_flag = 0;
  std::vector<Condition> end_d_conditions;
  double left_width = Config_.FLAGS_default_reference_line_width * 0.25;
  double right_width = Config_.FLAGS_default_reference_line_width * 0.25;

  // // 横向采样间距,不能是负值，车子只能往左车道走
  // std::array<double, 37> end_d_candidates = { 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9,
  //                                             1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8, 1.9,
  //                                             2.0, 2.1, 2.2, 2.3, 2.4, 2.5, 2.6, 2.7, 2.8, 2.9,
  //                                             3.0, 3.1, 3.2, 3.3, 3.4, 3.5, 3.6};  
std::array<double, 9> end_d_candidates = { 0.0, 0.5, 0.8, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5 };
// std::array<double, 6> end_d_candidates = { 0.0, 1.0, 2.0, 2.5, 3.0, 3.5 };

  // for (auto &obs : obstacles) {
  //     if (obs->obstacle_id == 4 && obs->obstacle_velocity != 0)   end_d_candidates = { 3.26, 3.26 }; // 行人
  //     if (obs->obstacle_id == 5)                                  end_d_candidates = { -0.5, 0.0 };  // 横穿马路自行车
  //     if (obs->obstacle_id == 2 && obs->obstacle_velocity != 0)   end_d_candidates = { 3.26, 3.36 }; // 轿车
  //     if (obs->obstacle_id == 3)                                  end_d_candidates = { 3.26, 3.36 };   // 卡车
  // }

  // // 没有障碍物，自车道采样
  // if (obstacles.size() == 0) {
  //     end_d_candidates = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 , 0.0, 0.0,
  //                                                    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 , 0.0, 0.0,
  //                                                    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 , 0.0, 0.0,
  //                                                    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};
  // }  
  // if (obstacles.size() != 0) {    // 有障碍物时
  //   for (int i = 0; i < obstacles.size(); ++i) {

  //     // // 在自车道障碍物，左侧车道采样
  //     // if (-right_width < obs_frenet_state[1] && obs_frenet_state[1] < left_width )  end_d_candidates = { 3.26, 3.26 }; 



  //     // 场景2，横穿马路自行车,自车道采样
  //     if ( obs_frenet_state[i][1] <= -1.0)  cycle_id = obstacles[i]->obstacle_id;
  //     if (obstacles[i]->obstacle_id == cycle_id && cycle_id != 250)   end_d_candidates = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 , 0.0, 0.0,
  //                                                                                 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 , 0.0, 0.0,
  //                                                                                 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 , 0.0, 0.0,
  //                                                                                 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};   
  //     //3
  //     if (obstacles[i]->obstacle_velocity > 2 && std::fabs(obs_frenet_state[i][1]) <= 0.5 && 
  //     obstacles[i]->obstacle_id != cycle_id &&cycle_id != 250)  low_car_id = obstacles[i]->obstacle_id;
  //     if (obstacles[i]->obstacle_id == low_car_id && low_car_id != 250 && obstacles[i]->obstacle_velocity > 1.5) end_d_candidates = { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 , 0.0, 0.0,
  //                                                                                 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 , 0.0, 0.0,
  //                                                                                 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 , 0.0, 0.0,
  //                                                                                 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0}; 

  //     // 场景4
  //     if (obstacles[i]->obstacle_velocity > 0.05 && obs_frenet_state[i][1] > 1.7 &&
  //               obstacles[i]->obstacle_id != cycle_id && cycle_id != 250)  car_id = obstacles[i]->obstacle_id;
  //     if (obstacles[i]->obstacle_id == car_id && car_id != 250) {
  //         end_d_candidates = { 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 
  //                             3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26,
  //                             3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26,
  //                             3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26};
  //         change_flag = 1;                    
  //     }
  //     // ROS_WARN("obstacle_id = %d    delta_theta =  %f ",obs->obstacle_id, delta_theta);
    
  //   }
  // }

  // if (change_flag == 1) {  // 场景4 的直道
  //     end_d_candidates = { 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 
  //                             3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26,
  //                             3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26,
  //                             3.26, 3.26, 3.26, 3.26, 3.26, 3.26, 3.26};
  // } 



  std::array<double, 6> end_s_candidates = { 5, 8, 10.0, 12.5, 15.0, 20.0}; // 采样比较靠前，在第一个弯会不稳定（不能为0）   5, 8, 10.0, 12.5, 15.0, 20.0
  //std::array<double, 4> end_s_candidates = {10.0,20.0,40.0,80.0};
  // std::array<double, 6> end_s_candidates = {5, 10, 15, 20, 25, 30}; //低速  
   
  for (const auto &s : end_s_candidates)
  {
    for (const auto &d : end_d_candidates)
    {
      State end_d_state = {d, 0.0, 0.0};
      end_d_conditions.emplace_back(end_d_state, s);  // 每一s对应的d
    }
  }
  return end_d_conditions;
}

std::vector<Condition> EndConditionSampler::SampleLonEndConditionsForCruising(const double ref_cruise_speed) const
{
  std::vector<Condition> end_s_conditions;
  if (Config_.FLAGS_num_velocity_sample >= 1)
  {
    // 1.get采样时间
    // time interval is one second plus the last one 0.01
    // 九个时间点 0.01 1 2 3 4 5 6 7 8
    constexpr size_t num_of_time_samples = 9;
    std::array<double, num_of_time_samples> time_samples;
    for (size_t i = 1; i < num_of_time_samples; ++i)
    {
      auto ratio = static_cast<double>(i) / static_cast<double>(num_of_time_samples - 1);
      time_samples[i] = Config_.FLAGS_trajectory_time_length * ratio;
    }
    time_samples[0] = Config_.FLAGS_polynomial_minimal_param;
    // 2.get采样速度
    for (const auto &time : time_samples)
    {
      // 该时刻速度的上下限值
      double v_upper = std::min(feasible_region_.VUpper(time), ref_cruise_speed);
      double v_lower = feasible_region_.VLower(time);

      State lower_end_s = {0.0, v_lower, 0.0};// 位移 速度 加速度
      end_s_conditions.emplace_back(lower_end_s, time);

      State upper_end_s = {0.0, v_upper, 0.0};
      end_s_conditions.emplace_back(upper_end_s, time);

      double v_range = v_upper - v_lower;
      // Number of sample velocities
      // 4.样本速度数目
      size_t num_of_mid_points;
      num_of_mid_points = std::min(static_cast<size_t>(Config_.FLAGS_num_velocity_sample - 2), // 6
                                   static_cast<size_t>(v_range / Config_.FLAGS_min_velocity_sample_gap));// 1m/s
      // std::cout << "("
      //           << "v_lower:" << v_lower << ","
      //           << "v_upper:" << v_upper << ")" << std::endl;
      if (num_of_mid_points > 0)
      {
        double velocity_seg = v_range / static_cast<double>(num_of_mid_points + 1);
        for (size_t i = 1; i <= num_of_mid_points; ++i)
        {
          State end_s = {0.0, v_lower + velocity_seg * static_cast<double>(i), 0.0};
          end_s_conditions.emplace_back(end_s, time);
        }
      }
    }
  }

  return end_s_conditions;
}

//待用
std::vector<Condition> EndConditionSampler::SampleLonEndConditionsForStopping(const double ref_stop_point) const
{
  // time interval is one second plus the last one 0.01
  constexpr size_t num_of_time_samples = 9;
  std::array<double, num_of_time_samples> time_samples;
  for (size_t i = 1; i < num_of_time_samples; ++i)
  {
    auto ratio = static_cast<double>(i) / static_cast<double>(num_of_time_samples - 1);
    time_samples[i] = Config_.FLAGS_trajectory_time_length * ratio;
  }
  time_samples[0] = Config_.FLAGS_polynomial_minimal_param;

  std::vector<Condition> end_s_conditions;
  for (const auto &time : time_samples)
  {
    State end_s = {std::max(init_s_[0], ref_stop_point), 0.0, 0.0}; // 改动 +25
    end_s_conditions.emplace_back(end_s, time);
  }
  return end_s_conditions;
}

std::vector<Condition> EndConditionSampler::SampleLonEndConditionsForPathTimePoints() const
{
  std::vector<Condition> end_s_conditions;
  std::vector<SamplePoint> sample_points = QueryPathTimeObstacleSamplePoints(); // ST图的采样点

  for (const SamplePoint &sample_point : sample_points)
  {
    if (sample_point.path_time_point.t() < Config_.FLAGS_polynomial_minimal_param)// 0.01
    {
      continue;
    }
    double s = sample_point.path_time_point.s();
    double v = sample_point.ref_v;
    double t = sample_point.path_time_point.t();
    if (s > feasible_region_.SUpper(t) || s < feasible_region_.SLower(t))
    {
      continue;
    }
    State end_state = {s, v, 0.0};
    end_s_conditions.emplace_back(end_state, t);
  }
  return end_s_conditions;
}

std::vector<SamplePoint> EndConditionSampler::QueryPathTimeObstacleSamplePoints() const
{
  std::vector<SamplePoint> sample_points;

  for (const auto &path_time_obstacle : ptr_path_time_graph_->GetPathTimeObstacles()) //遍历障碍物的ST信息
  {
    int obstacle_id = path_time_obstacle.id();
    QueryFollowPathTimePoints(obstacle_id, &sample_points);   //跟随采样
    QueryOvertakePathTimePoints(obstacle_id, &sample_points); //超车采样
  }

  return sample_points;
}

//跟车采样
void EndConditionSampler::QueryFollowPathTimePoints(const int &obstacle_id, std::vector<SamplePoint> *const sample_points) const
{
  // 获取障碍物周围点的ST,得到采样点
  std::vector<STPoint> follow_path_time_points =
      ptr_path_time_graph_->GetObstacleSurroundingPoints(obstacle_id, -Config_.FLAGS_numerical_epsilon, Config_.FLAGS_time_min_density);// 1e-6 1s

  // for (size_t i = 0; i < follow_path_time_points.size(); i++)
  // {
  //   std::cout << " s:" << follow_path_time_points[i].s() << ","
  //             << " t:" << follow_path_time_points[i].t() << "\n";
  // }
  // std::cout << "--------------------------"
  //           << "\n";

  // for循环遍历ST下边界点
  for (const auto &path_time_point : follow_path_time_points)
  {
    // 沿参考线速度投影,求出障碍物的速度在参考线方向的分量
    double v = ptr_prediction_querier_->ProjectVelocityAlongReferenceLine(
        obstacle_id, path_time_point.s(), path_time_point.t());

    // Generate candidate s
    double s_upper = path_time_point.s() - Config_.front_edge_to_center;
    double s_lower = s_upper - Config_.FLAGS_default_lon_buffer;// 5
    // CHECK_GE(FLAGS_num_sample_follow_per_timestamp, 2);

    double s_gap = Config_.FLAGS_default_lon_buffer /
                   static_cast<double>(Config_.FLAGS_num_sample_follow_per_timestamp - 1);// 3

    // 三个点，从s_lower开始，包括s_lower,每隔 s_gap m取一个点
    for (size_t i = 0; i < Config_.FLAGS_num_sample_follow_per_timestamp; ++i)
    {
      double s = s_lower + s_gap * static_cast<double>(i);
      SamplePoint sample_point;
      sample_point.path_time_point = path_time_point;
      sample_point.path_time_point.set_s(s);
      sample_point.ref_v = v;
      sample_points->push_back(std::move(sample_point));
    }
  }
}

//超车采样
void EndConditionSampler::QueryOvertakePathTimePoints(const int &obstacle_id, std::vector<SamplePoint> *sample_points) const
{
  std::vector<STPoint> overtake_path_time_points =
      ptr_path_time_graph_->GetObstacleSurroundingPoints(
          obstacle_id, Config_.FLAGS_numerical_epsilon, Config_.FLAGS_time_min_density);

  for (const auto &path_time_point : overtake_path_time_points)
  {
    double v = ptr_prediction_querier_->ProjectVelocityAlongReferenceLine(obstacle_id, path_time_point.s(), path_time_point.t());
    SamplePoint sample_point;
    sample_point.path_time_point = path_time_point;
    sample_point.path_time_point.set_s(path_time_point.s() + Config_.FLAGS_default_lon_buffer);
    sample_point.ref_v = v;
    sample_points->push_back(std::move(sample_point));
  }
}