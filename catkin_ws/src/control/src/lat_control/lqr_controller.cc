#include "lqr_control.h"

namespace dust {
namespace control {

lqrControl::lqrControl(const double poskp, const double poski, const double poskd,const double velkp, const double velki, const double velkd):controller(poskp,poski,poskd,poskp,poski,poskd)
{
    // 纵向速度
    // vx = 0.1;
    // 横向速度
    // vy = 0;

    // 前轮侧偏刚度
    // cf = -321972.05;
    // cf = -85563.1;
    cf_ = 85563.1;
    // 后轮侧偏刚度
    // cr = -321972.05;
    // cr = -113382.9;
    cr_ = 113382.9;
    // m = 3990;
    mass_ = 3990.0;
    // 最大纵向加速度
    // max_lateral_acceleration = 2.0;
    // 最大制动减速度
    // standstill_acceleration = -3.0;
    // 轴距
    // wheel_base = 3.8;
    wheel_base_ = 3.8;
    // 前轴中心到质心的距离
    // a = 1.75;
    lf_ = 1.75;
    // 后轴中心到质心的距离
    // b = 2.05;
    lr_ = 2.05;
    // 车辆绕z轴转动的转动惯量
    // Iz = 2858.5134;
    // Iz = 3000.0;
    iz_ = 3000.0;
    // 轮胎最大转角(rad)，暂时没用上
    wheel_max_degree = 0.6;
    matrix_q_ = Eigen::MatrixXd::Identity(4, 4);
    matrix_r_ = Eigen::MatrixXd::Identity(1, 1);
    matrix_state_ = Eigen::MatrixXd::Zero(4, 1);
    matrix_a_ = Eigen::MatrixXd::Zero(4, 4);
    matrix_a_coeff_ = Eigen::MatrixXd::Zero(4, 4);
    matrix_b_ = Eigen::MatrixXd::Zero(4, 1);
    matrix_c_ = Eigen::MatrixXd::Zero(4, 1);
 
}
bool lqrControl::updateVehicleModel(double vehicle_speed, double ref_heading_rate) {
  double v = std::fmax(vehicle_speed, 0.5);
  double ts = 0.02;
  std::cout << "mass_ = " << mass_ << " iz_ = " << iz_ << " v = " << v << std::endl;
  std::cout << "cf_ = " << cf_ << " cr_ = " << cr_ << " lf_ = " << lf_ << "lr_ " << lr_ << std::endl;
  matrix_a_coeff_(1, 1) = -(2 * cf_ + 2 * cr_) / mass_;
  matrix_a_coeff_(1, 3) = (-2 * cf_ * lf_ + 2 * cr_ * lr_) / mass_;
  matrix_a_coeff_(3, 1) = -(2 * cf_ * lf_ - 2 * cr_ * lr_) / iz_;
  matrix_a_coeff_(3, 3) = -(2 * cf_ * lf_ * lf_ + 2 * cr_ * lr_ * lr_) / iz_;

  matrix_a_(1, 2) = (2 * cf_ + 2 * cr_) / mass_;
  matrix_a_(3, 2) = (2 * cf_ * lf_ - 2 * cr_ * lr_) / iz_;
  std::cout << "running here 02!" << std::endl;
  matrix_a_(1, 1) = matrix_a_coeff_(1, 1) / v;
  matrix_a_(1, 3) = matrix_a_coeff_(1, 3) / v;
  matrix_a_(3, 1) = matrix_a_coeff_(3, 1) / v;
  matrix_a_(3, 3) = matrix_a_coeff_(3, 3) / v;

  matrix_b_(1, 0) = 2 * cf_ / mass_;
  matrix_b_(3, 0) = 2 * cf_ * lf_ / iz_;

  matrix_c_(1, 0) = -(2 * cf_ * lf_ - 2 * cr_ * lr_) / mass_ / v - v;
  matrix_c_(3, 0) = -(2 * cf_ * lf_ * lf_ + 2 * cr_ * lr_ * lr_) / iz_ / v;

  // continuous to discrete
  Eigen::MatrixXd Identity = Eigen::MatrixXd::Identity(4, 4);
  matrix_ad_ = (Identity - ts * 0.5 * matrix_a_).inverse() * (Identity + ts * 0.5 * matrix_a_);
  matrix_bd_ = matrix_b_ * ts;
  matrix_cd_ = matrix_c_ * ref_heading_rate * ts;
  std::cout << "running here 03!" << std::endl;
  return true;
}
bool lqrControl::solveDiscreteLqr(const Eigen::MatrixXd& A,
                                 const Eigen::MatrixXd& B,
                                 const Eigen::MatrixXd& Q,
                                 const Eigen::MatrixXd& R,
                                 const double tolerance,
                                 const u_int64_t max_iteration,
                                 Eigen::MatrixXd* K) {
  if (A.rows() != A.cols() || B.rows() != A.rows() || Q.rows() != Q.cols() ||
      Q.rows() != A.rows() || R.rows() != R.cols() || R.rows() != B.cols()) {
    ROS_INFO("Lqr solver: input matrices have incompatible dimensions");
    return false;
  }
  Eigen::MatrixXd P = Q;
  Eigen::MatrixXd P_next;
  Eigen::MatrixXd AT = A.transpose(); 
  Eigen::MatrixXd BT = B.transpose();

  double diff = std::numeric_limits<double>::max();
  for (u_int64_t i = 0; i <= max_iteration; i++) {
    P_next = AT * P * A -
        AT * P * B * (R + BT * P * B).inverse() * BT * P * A + Q;
    diff = fabs((P_next - P).maxCoeff());
    P = P_next;
    if (diff <= tolerance) {
      *K = (R + BT * P * B).inverse() * BT * P * A;
      std::cout << "Lqr solve succed at " << i << " with tolerance : " << diff << std::endl;
      return true;
    }
  }

  if (diff >= 100 * tolerance) {
    std::cout << "Lqr solver: iterate finished with tolerance : " << diff << std::endl;
  } else {
    std::cout << "Lqr solver: overflow max iteration with tolerance : " << diff << std::endl;
  }

  *K = (R + BT * P * B).inverse() * BT * P * A;
  return true;
}
double lqrControl::updateFeedforward(double vehicle_speed, double matched_k) {
  const double v = vehicle_speed;
  const double kv = lr_ * mass_ / 2.0 / cf_ / wheel_base_ - lf_ * mass_ / 2.0 / cr_ / wheel_base_;
  double u_ff = (wheel_base_ + kv * v * v) * matched_k;
  return u_ff;
}
double lqrControl::calculateCmd(const msg_gen::trajectory& targetPath, const common_msgs::CICV_Location& gps,
                                double lat_error, double heading_error, double lat_error_rate, double heading_error_rate,
                                double vehicle_speed, double ref_heading_rate, double matched_k) {
    // double car_yaw = gps.Yaw;
    // this->vx = gps.Velocity_x* std::cos(car_yaw) + gps.Velocity_y * std::sin(car_yaw);
    // this->vy = gps.Velocity_y* std::cos(car_yaw) - gps.Velocity_x * std::sin(car_yaw);
    // std::cout << "vehicle_cor vy: " << this->vy << std::endl;
    // //  变量再分配
    // std::vector<std::pair<double, double>> trj_point_array;
	// for (auto& Point : targetPath.trajectorypoint) {
	// 	trj_point_array.emplace_back(Point.x, Point.y);
	// }
	// std::vector<double> trj_thetas;
	// for (auto& Point : targetPath.trajectorypoint) {
	// 	trj_thetas.push_back(Point.theta);
	// }
	// std::vector<double> trj_kappas;
	// for (auto& Point : targetPath.trajectorypoint) {
	// 	trj_kappas.push_back(Point.kappa);
	// }
	
	// double currentPositionX = gps.Position_x;
	// double currentPositionY = gps.Position_y;
	// double out_angle = theta_angle(trj_point_array, trj_thetas, trj_kappas, currentPositionX, currentPositionY, car_yaw);
    // return out_angle;

  // update model
  if (!updateVehicleModel(vehicle_speed, ref_heading_rate)) {
    ROS_INFO("Update model failed!");
    return false;
  }

  // update system state
  matrix_state_(0, 0) = lat_error;
  matrix_state_(1, 0) = lat_error_rate;
  matrix_state_(2, 0) = heading_error;
  matrix_state_(3, 0) = heading_error_rate;

  // update Q R matrix
  matrix_q_(0, 0) = 300.0;
  matrix_q_(1, 1) = 10.0;
  matrix_q_(2, 2) = 50.0;
  matrix_q_(3, 3) = 10.0;
  matrix_r_(0, 0) = 100.0;
//   matrix_r_(0, 1) = 100.0;
//   matrix_r_(0, 2) = 100.0;
  double start_time = ros::Time::now().toSec();
  // solve lqr problem
  Eigen::MatrixXd matrix_k_;
  std::cout << "matrix_ad_ :" << MatDebug(matrix_ad_)<< std::endl;
  std::cout << "matrix_bd_ :" << MatDebug(matrix_bd_)<< std::endl;
  std::cout << "matrix_q_ : " << MatDebug(matrix_q_)<< std::endl;
  std::cout << "matrix_r_ : " << MatDebug(matrix_r_)<< std::endl;
  bool sucess = solveDiscreteLqr(
      matrix_ad_, matrix_bd_, matrix_q_, matrix_r_, 0.01, 500, &matrix_k_);
  if (!sucess) {
    ROS_INFO("lqr solve failed");
  }
  Eigen::MatrixXd matrix_u;
  matrix_u = -1.0 * matrix_k_ * matrix_state_;
  double steer_feedback = matrix_u(0, 0);
  std::cout << "steer_feedback = " << steer_feedback << std::endl;
  double end_time = ros::Time::now().toSec();
  std::cout << "lqr solver cost time: " <<
       end_time - start_time << "ms" << " start_time = " << start_time << " end_time = " << end_time << std::endl;
  double steer_feedforward = updateFeedforward(vehicle_speed, matched_k);
  // get result
  double final_steer =
      (1.0 * steer_feedforward + 1.0 * steer_feedback) / 2.0;

  // set steer cmd
  double steer_cmd_filter = steer_cmd_filter + steer_angle_bias_;

  return steer_cmd_filter / 180.0 * M_PI;
}

// double lqrControl::theta_angle(const std::vector<std::pair<double, double>>& trj_point_array, std::vector<double>& trj_thetas,
// 	std::vector<double>& trj_kappas, double currentPositionX, double currentPositionY, double car_yaw)
// {
//     int index = 0;
//     double min_dis = (std::numeric_limits<int>::max)();
//     for (int i = 0; i < trj_point_array.size(); ++i) {
//         double dis = pow(trj_point_array[i].first - currentPositionX, 2) + pow(trj_point_array[i].second - currentPositionY, 2);
//         if (dis < min_dis) {
//             min_dis = dis;
//             index = i;
//         }
//     }

// 	std::array<double, 5> err_k = cal_err_k(trj_point_array, trj_thetas, trj_kappas, currentPositionX, currentPositionY, car_yaw, index);
// 	Eigen::Matrix<double, 1, 4> k = cal_k(err_k);

// 	double forword_angle = cal_forword_angle(k, err_k);
// 	double angle = cal_angle(k, forword_angle, err_k, trj_kappas, index);
// 	return angle;
// }


// std::array<double, 5> lqrControl::cal_err_k(const std::vector<std::pair<double, double>>& trj_point_array, 
//     std::vector<double>& trj_thetas, std::vector<double>& trj_kappas, double current_post_x, 
//     double current_post_y, double car_yaw, int &index)
// {   
//     current_post_x = current_post_x + this->vx*0.3*std::cos(car_yaw) - this->vy*0.3*std::sin(car_yaw);
//     current_post_y = current_post_y + this->vy*0.3*std::cos(car_yaw) + this->vx*0.3*std::sin(car_yaw);

//     std::array<double, 5> err_k;
    
//     // 找到index后，开始求解投影点
//     Eigen::Matrix<double, 2, 1> tor;
//     tor << cos(trj_thetas[index]), sin(trj_thetas[index]);
//     Eigen::Matrix<double, 2, 1> nor;
//     nor << -sin(trj_thetas[index]), cos(trj_thetas[index]);

//     // Eigen::Vector2f d_err;
//     Eigen::Matrix<double, 2, 1> d_err;
//     d_err << current_post_x - trj_point_array[index].first, current_post_y - trj_point_array[index].second;
//     double phi = car_yaw;

//     // nor.transpose()对nor转置
//     double ed = nor.transpose() * d_err;
    
//     // std::cout << "横向： " << ed << std::endl;

//     double es = tor.transpose() * d_err;
//     // std::cout << "纵向： " << es << std::endl;

//     // 投影点的threat角度
//     double projection_point_threat = trj_thetas[index] + trj_kappas[index+2] * es;

//     // double phi = trj_thetas[index];
//     double ed_d = vy * cos(phi - projection_point_threat) +
//         vx * sin(phi - projection_point_threat);
//     // 计算ephi
//      double ephi = sin(phi - projection_point_threat);
//     //double ephi = phi - projection_point_threat;

//     // 计算s_d
//     double s_d = (vx * cos(phi - projection_point_threat) -
//         vy * sin(phi - projection_point_threat)) /
//         (1 - trj_kappas[index] * ed);
//     double phi_d = this->vx * trj_kappas[index];
//     double ephi_d = phi_d - trj_kappas[index] * s_d;

//     // 计算投影点曲率k
//     double projection_point_curvature = trj_kappas[index];

//     err_k[0] = ed;
//     err_k[1] = ed_d;
//     err_k[2] = ephi;
//     err_k[3] = ephi_d;
//     err_k[4] = projection_point_curvature;

//     return err_k;
// }


// Eigen::Matrix<double, 1, 4> lqrControl::cal_k(std::array<double, 5> err_k)
// {
//     Eigen::Matrix4d A;
//     A << 0, 1, 0, 0,
//         0, (cf + cr) / (m * vx), -(cf + cr) / m, (a * cf - b * cr) / (m * vx),
//         0, 0, 0, 1,
//         0, (a * cf - b * cr) / (Iz * vx), -(a * cf - b * cr) / Iz, (a * a * cf + b * b * cr) / (Iz * vx);

//     // Eigen::Vector4f B;
//     Eigen::Matrix<double, 4, 1> B;
//     B << 0, -cf / m, 0, -a * cf / Iz;

//     // // 设置成单位矩阵
//     Eigen::Matrix4d Q;
//     Q.setIdentity(4, 4);
//     //Q(0, 0) = 25;
//     // Q(0, 0) = 40;
//     Q(0, 0) = 6.5;
//     Q(1, 1) = 1;
//     Q(2, 2) = 10;
//     Q(3, 3) = 1;

//     Eigen::Matrix<double, 1, 1> R;
//     R(0, 0) = 15.0;
//     Eigen::Matrix<double, 1, 4> k = cal_dlqr(A, B, Q, R);

//     return k;
// }


// Eigen::Matrix<double, 1, 4> lqrControl::cal_dlqr(Eigen::Matrix4d A, Eigen::Matrix<double, 4, 1> B,
//     Eigen::Matrix4d Q, Eigen::Matrix<double, 1, 1> R)
// {
//     // 设置最大循环迭代次数
//     int numLoop = 200;
//     // 设置目标极小值
//     double minValue = 10e-10;
//     Eigen::Matrix4d p_old;
//     p_old = Q;// p取初值

//     // 离散化状态方程
//     double ts = 0.001;
//     Eigen::Matrix4d eye;
//     eye.setIdentity(4, 4);

//     Eigen::Matrix4d Ad;
//     Ad = (eye - ts * 0.5 * A).inverse() * (eye + ts * 0.5 * A);
//     Eigen::Matrix<double, 4, 1> Bd;
//     Bd = B * ts;
//     for (int i = 0; i < numLoop; i++)
//     {
//         // B.inverse()求逆
//         Eigen::Matrix4d p_new = Ad.transpose() * p_old * Ad -
//             Ad.transpose() * p_old * Bd *
//             (R + Bd.transpose() * p_old * Bd).inverse() *
//             Bd.transpose() * p_old * Ad +
//             Q;
//         if (fabs((p_new - p_old).maxCoeff()) < minValue)
//         {
//             p_old = p_new;
//             break;
//         }
//         p_old = p_new;
//     }
//     Eigen::Matrix<double, 1, 4> k;
//     // Eigen::RowVector4f;
//     // 当两个超出范围的浮点数（即INF）进行运算时，运算结果会成为NaN。
//     k = (R + Bd.transpose() * p_old * Bd).inverse() * Bd.transpose() * p_old * Ad;
//     return k;
// }

// double lqrControl::cal_forword_angle(Eigen::Matrix<double, 1, 4> k,
//     std::array<double, 5> err_k)
// {
//     double k3 = k[2];
//     // 不足转向系数
//     double kv = a * m / (cr * wheel_base) - b * m / (cf * wheel_base);

//     //投影点的曲率final_path.k[index]
//     double point_curvature = err_k[4];
//     double forword_angle =
//         1.5 * (wheel_base * point_curvature + kv * vx * vx * point_curvature -
//         k3 * (b * point_curvature + a * m * vx * vx * point_curvature / cr / (a + b)));
//     return forword_angle;
// }

// double lqrControl::cal_angle(Eigen::Matrix<double, 1, 4> k, double forword_angle,
//     std::array<double, 5> err_k, std::vector<double>& trj_kappas, int index)
// {
//     Eigen::Matrix<double, 4, 1> err;
//     err << err_k[0], err_k[1], err_k[2], err_k[3];

//     double angle = (-k * err + forword_angle) * 180  / M_PI;

//     // if (angle > 135) {
//     //     angle = 135;
//     // }
//     // else if (angle < -135) {
//     //     angle = -135;
//     // }
//     return angle;
// }

} // control
} // dust