#include "Obstacle.h"

#include <cmath>

// std::vector<Cone> cones;
// std::pair<double, double> constxy;


// bool compareCone(const Cone &cone1, const Cone &cone2){
//   return cone1.distance > cone2.distance;
// }
//   int startIndex = 0;





// 在有效范围内的所有障碍物
PPoint front_left;
PPoint back_left;
PPoint back_right;
PPoint front_right;
//求障碍物顶点
PPoint ob_left_front;
PPoint ob_left_buttom;
PPoint ob_right_front;
PPoint ob_right_buttom;

std::pair<double, double> ego_pos; //自主车的实时位置
double ego_head;                   //自主车的朝向

Obstacle::Obstacle(bool sub_obstacle)
{
  
  //订阅感知的障碍物
  if (sub_obstacle == true)
  {
    ROS_INFO("sub ground_truth");
    obstacle_sub_ = nObstacle_.subscribe("/tpperception",10,&Obstacle::setObstacles,this);
  }
}

void Obstacle::setObstacles(const perception_msgs::PerceptionObjects& obstacle_info) // common_msgs::Perceptionobjects
{
  /*--------------------------------------有效区域的构建--------------------------------------*/
  // //在有效范围内的所有障碍物
  // PPoint center(ego_pos.first + eff_dis * cos(ego_head), ego_pos.second + eff_dis * sin(ego_head));
  // oba.CalculateCarBoundaryPoint(eff_length, eff_width, center, ego_head, front_left, back_left, back_right,
  //                               front_right);
  // oba.visualization(center, ego_head, eff_length, eff_width); //显示有效区域

  /*---------------------------------------获取障碍物信息----------------------------------------*/
  if (obstacle_info.objs.size() > 0) //如果感知有识别到障碍物
  {
    // constxy.first = 92.0;
    // constxy.second = 44.0;
    AllObstacle.clear(); //每次接受障碍物的时候，清空，更新
    // startIndex = 0;
    // constxy.first = 80;
    // constxy.second = 80;
    for (size_t i = 0; i < obstacle_info.objs.size(); ++i)
    {
      Obstacle obs;
      /*-------------------------------------每种形状都有的基本信息----------------------------------------*/
      //中心点
      obs.centerpoint.position.x = obstacle_info.objs[i].x;
      obs.centerpoint.position.y = obstacle_info.objs[i].y;
      obs.centerpoint.position.z = 0;
      obs.obstacle_id = obstacle_info.objs[i].id;       // id
      obs.obstacle_type = obstacle_info.objs[i].type; //类型
      // obs.obstacle_shape = msgs->obstacle[i].shape.type;   //形状， ciav比赛中没有这个信息
      //朝向(要根感知确认一下)
      obs.obstacle_theta = obstacle_info.objs[i].heading;
      //时间戳
      obs.timestamp_ = ros::Time().fromSec(obstacle_info.header.time_stamp); // 单位s ros::Time().fromSec(time);

      //线速度（大地坐标系）// gt: 此处的速度，难道不是  v_xg 和 v_yg 的合成吗？
      // obs.obstacle_velocity = obstacle_info.Perceptionobjects[i].v_xg/(obs.obstacle_theta + 0.01); 
      obs.obstacle_velocity = sqrt(obstacle_info.objs[i].vxrel * obstacle_info.objs[i].vxrel
                                    + obstacle_info.objs[i].vyrel * obstacle_info.objs[i].vyrel);

      if (obs.obstacle_velocity > 0.05) //动态障碍物
      {
        Prediction::Ob_Trajectory ob_tray = oba.Generater_Trajectory(obs.centerpoint, 4, obs.obstacle_theta, obs.obstacle_velocity);
        obs.SetTrajectory(ob_tray);
      }
      // std::cout << "shape:" << msgs->objects[i].shape.type << std::endl; // ciav比赛中没有这个信息

      /*---------------------------------------过滤不在有效区域的障碍物-------------------------------------------*/

      // PPoint centerpoint(obs.centerpoint.position.x, obs.centerpoint.position.y);
      // if (oba.Inside_rectangle(front_left, back_left, back_right, front_right, centerpoint) == false)
      // {
      //   continue; //跳过这个障碍物，进入下一个
      // }


      /*--------------------------------------不同形状有差别的信息-----------------------------------------*/

      if (obstacle_info.objs[i].type == 1 || obstacle_info.objs[i].type == 2 ||
      obstacle_info.objs[i].type == 3 || obstacle_info.objs[i].type == 4 ||
      obstacle_info.objs[i].type == 5 || obstacle_info.objs[i].type == 0) 
      {
        obs.pinnacle.poses.clear(); //顶点暂时为空
        // if (obstacle_info->Perceptionobjects[i].type == 0)
        // {
        //   obs.obstacle_radius = sqrt(pow(obstacle_info->Perceptionobjects[i].length, 2) + pow(obstacle_info->Perceptionobjects[i].width, 2)) / 2;
        //   //长和宽
        //   obs.obstacle_length = obstacle_info->Perceptionobjects[i].length + 1;
        //   obs.obstacle_width = obstacle_info->Perceptionobjects[i].width + 0.5;
        //   obs.obstacle_height = obstacle_info->Perceptionobjects[i].height;
        // }
        // else
        // {
        //   obs.obstacle_radius = sqrt(pow(obstacle_info->Perceptionobjects[i].length, 2) + pow(obstacle_info->Perceptionobjects[i].width, 2)) / 2;
        //   //长和宽
        //   obs.obstacle_length = obstacle_info->Perceptionobjects[i].length;
        //   obs.obstacle_width = obstacle_info->Perceptionobjects[i].width;
        //   obs.obstacle_height = obstacle_info->Perceptionobjects[i].height; 
        // }
          obs.obstacle_radius = sqrt(pow(obstacle_info.objs[i].length, 2) + pow(obstacle_info.objs[i].width, 2)) / 2;
          //长和宽
          obs.obstacle_length = obstacle_info.objs[i].length;
          obs.obstacle_width = obstacle_info.objs[i].width;
          obs.obstacle_height = obstacle_info.objs[i].height; 
      }

      //对于锥桶应该重新用一个形状！！！






      // if (obstacle_info->Perceptionobjects[i].type == 1||obstacle_info->Perceptionobjects[i].type == 2||
      // obstacle_info->Perceptionobjects[i].type == 3) //Car
      // {
      //   obs.pinnacle.poses.clear(); //顶点暂时为空
      //   obs.obstacle_radius = sqrt(pow(obstacle_info->Perceptionobjects[i].length, 2) + pow(obstacle_info->Perceptionobjects[i].width, 2)) / 2;
      //   //长和宽
      //   obs.obstacle_length = obstacle_info->Perceptionobjects[i].length;
      //   obs.obstacle_width = obstacle_info->Perceptionobjects[i].width;
      //   obs.obstacle_height = obstacle_info->Perceptionobjects[i].height; 
      // }
      // else if (obstacle_info->Perceptionobjects[i].type == 4&&obstacle_info->Perceptionobjects[i].type == 5 &&obstacle_info->Perceptionobjects[i].type == 13) //圆形：Pedestrian
      // {
      //   obs.obstacle_radius = obstacle_info->Perceptionobjects[i].length; //半径
      //   //顶点
      //   obs.pinnacle.poses.clear();
      //   PPoint ob_center(obs.centerpoint.position.x, obs.centerpoint.position.y);
      //   oba.CalculateCarBoundaryPoint(1, 1, ob_center, obs.obstacle_theta, ob_left_front, ob_left_buttom,
      //                                 ob_right_buttom, ob_right_front);
        
      //   // oba.visualization_points(ob_left_front, ob_left_buttom, ob_right_buttom, ob_right_front);//在rviz中显示障碍物顶点

      //   std::vector<PPoint> ob_vector;
      //   ob_vector.emplace_back(ob_right_front);  //右下角
      //   ob_vector.emplace_back(ob_left_buttom);  //右上角
      //   ob_vector.emplace_back(ob_left_front);   //左上角
      //   ob_vector.emplace_back(ob_right_buttom); //左下角
      //   for (size_t j = 0; j < ob_vector.size(); ++j)
      //   {
      //     geometry_msgs::Pose sds;
      //     sds.position.x = ob_vector[j].x;
      //     sds.position.y = ob_vector[j].y;
      //     sds.position.z = 0; //压缩二维
      //     obs.pinnacle.poses.push_back(sds);
      //     obs.polygon_points.push_back(Vec2d(ob_vector[j].x, ob_vector[j].y));
      //   }
      //   //长和宽（假设）
      //   obs.obstacle_length = obstacle_info->Perceptionobjects[i].length;
      //   obs.obstacle_width =  obstacle_info->Perceptionobjects[i].width;
      //   obs.obstacle_height = obstacle_info->Perceptionobjects[i].height;
      // }
      // else if (msgs->objects[i].shape.type == 2) //多边形:未知
      // {
      //   //顶点
      //   obs.pinnacle.poses.clear();
      //   for (size_t j = 0; j < msgs->objects[i].shape.footprint.points.size(); j++)
      //   {
      //     geometry_msgs::Pose sds;
      //     sds.position.x = msgs->objects[i].shape.footprint.points[j].x;
      //     sds.position.y = msgs->objects[i].shape.footprint.points[j].y;
      //     sds.position.z = 0; //压缩二维
      //     obs.pinnacle.poses.push_back(sds);
      //     obs.polygon_points.push_back(Vec2d(msgs->objects[i].shape.footprint.points[j].x, msgs->objects[i].shape.footprint.points[j].y));
      //   }

      //   //半径为0
      //   obs.obstacle_radius = 0;
      //   //长和宽（假设）
      //   obs.obstacle_length = msgs->objects[i].shape.dimensions.x;
      //   obs.obstacle_width = msgs->objects[i].shape.dimensions.y;
      //   obs.obstacle_height = msgs->objects[i].shape.dimensions.z;
      // }

      AllObstacle.push_back(obs);
      
      // ROS_WARN(" %ld 障碍物 type: %d  id: %d", i, obs.obstacle_type, obs.obstacle_id); //  gt碰撞检测调试: 打印识别到的障碍物类型    id: 2,3,4,5,6,7,8,9
      // 0-其他 1-轿车 2-卡车 3-行人 4-摩托车 5-自行车

    }
  }

  // 我怀疑在这边也进行了障碍物过滤！！
  // ROS_ERROR("vtd AllObstacle.size() :%ld", AllObstacle.size()); //  gt碰撞检测调试：打印 有几个障碍物

}

void Obstacle::SetSLBoundary(SL_Boundary &sl_boundary)
{
  sl_boundary_ = std::move(sl_boundary);
}
void Obstacle::SetSTBoundary(ST_Boundary &st_boundary)
{
  path_st_boundary_ = std::move(st_boundary);
}
const SL_Boundary &Obstacle::PerceptionSLBoundary() const
{
  return sl_boundary_;
}
const ST_Boundary &Obstacle::path_st_boundary() const
{
  return path_st_boundary_;
}

bool Obstacle::IsStatic() const
{
  return obstacle_velocity < 0.2;
}
bool Obstacle::IsVirtual() const
{
  return false; //假设都不是虚拟的
}

bool Obstacle::HasTrajectory() const
{
  return !(trajectory_.trajectory_point_size() == 0); //没有预测轨迹就是静态障碍物
}

const ObjectDecisionType &Obstacle::LongitudinalDecision() const
{
  return longitudinal_decision_;
}

const ObjectDecisionType &Obstacle::LateralDecision() const
{
  return lateral_decision_;
}
bool Obstacle::HasLateralDecision() const
{
  return lateral_decision_.object_tag_case() != ObjectDecisionType::Type::OBJECT_TAG_NOT_SET;
}

bool Obstacle::HasLongitudinalDecision() const
{
  return longitudinal_decision_.object_tag_case() != ObjectDecisionType::Type::OBJECT_TAG_NOT_SET;
}

Box2d Obstacle::PerceptionBoundingBox() const
{
  //必须在订阅之后调用
  return Box2d({centerpoint.position.x, centerpoint.position.y}, obstacle_theta, obstacle_length, obstacle_width);
}

Box2d Obstacle::GetBoundingBox(const TrajectoryPoint &point) const
{
  return Box2d({point.x, point.y}, point.theta, obstacle_length,
               obstacle_width);
}

//获得障碍物在当前时刻的TrajectoryPoint,为了求GetBoundingBox
TrajectoryPoint Obstacle::GetPointAtTime(const double relative_time) const
{
  const auto &points = trajectory_.trajectory_point();
  // std::cout<<"points.size():"<<points.size()<<"\n";
  if (points.size() < 2) // 认为是静态障碍物
  {
    TrajectoryPoint point;
    point.set_x(centerpoint.position.x);
    point.set_y(centerpoint.position.y);
    point.set_z(0);
    point.set_theta(obstacle_theta);
    point.set_s(0.0);
    point.set_kappa(0.0);
    point.set_dkappa(0.0);
    point.set_v(0.0);
    point.set_a(0.0);
    point.set_relative_time(0.0);
    return point;
  }
  else // 认为是一个运动的障碍物
  {
    // for (size_t i = 0; i < points.size(); i++)
    // {
    // std::cout << "*relative_time2:" << points[i].relative_time << "\n";
    // }
    // std::cout << "--------------------------"
    //           << "\n";
    if (relative_time >= points.back().relative_time)
    {
      return points.back();
    }

    auto comp = [](const TrajectoryPoint p, const double time)
    {
      return p.relative_time < time;
    };

    auto it_lower = std::lower_bound(points.begin(), points.end(), relative_time, comp);
    if (it_lower == points.begin())
    {
      return points.front();
    }
    else if (it_lower == points.end())
    {
      return points.back();
    }

    return common::math::InterpolateUsingLinearApproximation(*(it_lower - 1), *it_lower, relative_time);
  }
}

const common::math::Polygon2d &Obstacle::PerceptionPolygon() const
{
  return perception_polygon_;
}

//显示预测轨迹
void Obstacle::visualization(const std::vector<Obstacle> Obstacles_)
{
  geometry_msgs::PoseArray obstacle_trajectories_;
  obstacle_trajectories_.header.frame_id = "world";
  obstacle_trajectories_.header.stamp = ros::Time::now();
  for (auto &obstacle : Obstacles_)
  {
    std::vector<TrajectoryPoint> trajectory_points_ = obstacle.Trajectory().trajectory_point();
    if (trajectory_points_.size() > 0)
    {
      for (size_t i = 0; i < trajectory_points_.size(); i++)
      {
        geometry_msgs::Pose obstacle_trajectory;
        Show_ob_prediction(obstacle_trajectory, trajectory_points_[i]);
        obstacle_trajectories_.poses.push_back(obstacle_trajectory);
      }
    }
  }
  Obstacle_Prediction.publish(obstacle_trajectories_);
}

void Obstacle::Show_ob_prediction(geometry_msgs::Pose &obstacle_trajectory_, const TrajectoryPoint trajectory_point_)
{
  obstacle_trajectory_.orientation = tf::createQuaternionMsgFromYaw(trajectory_point_.theta);
  obstacle_trajectory_.position.x = trajectory_point_.x;
  obstacle_trajectory_.position.y = trajectory_point_.y;
  obstacle_trajectory_.position.z = 0;
}
