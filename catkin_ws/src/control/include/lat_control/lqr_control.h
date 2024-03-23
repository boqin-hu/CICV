#ifndef __LQR_CONTROL__
#define __LQR_CONTROL__

#include "metaController.h"

namespace dust{
namespace control{

class lqrControl : public controller
{
public:
    lqrControl(const double poskp, const double poski, const double poskd,const double velkp, const double velki, const double velkd);
    ~lqrControl() = default;

    double calculateCmd(const msg_gen::trajectory& targetPath, const common_msgs::CICV_Location& gps,
                                double lat_error, double heading_error, double lat_error_rate, double heading_error_rate,
                                double vehicle_speed, double ref_heading_rate, double matched_k) override;

    // 计算前轮转角
    // double theta_angle(const std::vector<std::pair<double, double>>& trj_point_array, std::vector<double>& trj_thetas,
    //     std::vector<double>& trj_kappas, double currentPositionX, double currentPositionY, double car_yaw);

    // // 计算误差 ed ed' ephi ephi'
    // std::array<double, 5> cal_err_k(const std::vector<std::pair<double, double>>& trj_point_array, std::vector<double>& trj_thetas, 
    //     std::vector<double>& trj_kappas, double current_post_x, double current_post_y, double car_yaw, int &index);

    // // 计算lqr的k1 k2 k3 k4
    // Eigen::Matrix<double, 1, 4> cal_k(std::array<double, 5> err_k);

    // // 计算dlqr
    // Eigen::Matrix<double, 1, 4> cal_dlqr(Eigen::Matrix4d A, Eigen::Matrix<double, 4, 1> B,
    //     Eigen::Matrix4d Q, Eigen::Matrix<double, 1, 1> R);

    // // 计算前馈
    // double cal_forword_angle(Eigen::Matrix<double, 1, 4> k, std::array<double, 5> err_k);

    // // 计算角度
    // double cal_angle(Eigen::Matrix<double, 1, 4> k, double forword_angle, std::array<double, 5> err_k, 
    //     std::vector<double>& trj_kappas, int index);
    bool updateVehicleModel(double vehicle_speed, double ref_heading_rate);
    double updateFeedforward(double vehicle_speed, double matched_k);
    bool solveDiscreteLqr(const Eigen::MatrixXd& A,
                                 const Eigen::MatrixXd& B,
                                 const Eigen::MatrixXd& Q,
                                 const Eigen::MatrixXd& R,
                                 const double tolerance,
                                 const u_int64_t max_iteration,
                                 Eigen::MatrixXd* K);
    std::string MatDebug(const Eigen::MatrixXd& target) const {
        Eigen::IOFormat OctaveFmt(0, 0, ", ", ";\n", "", "", "[", "]");
        std::stringstream str;
        str << target.format(OctaveFmt) << std::endl;
        return str.str();
    } 
private:
    // 纵向速度
    double vx;
    // // 横向速度
    double vy;
    // 轮胎侧偏刚度
    double cf;
    double cr;
    double cf_ = 0.0;
    double cr_ = 0.0;

    // 前后悬架载荷
    double m;
    double mass_ = 0.0;

    // 最大纵向加速度
    double max_lateral_acceleration;
    // // 最大制动减速度
    double standstill_acceleration;
    // // 轴距
    double wheel_base;
    double wheel_base_= 0.0;
    // 前轴中心到质心的距离
    double a;
    double b;
    double lf_ = 0.0;
    // 后轴中心到质心的距离
    double lr_ = 0.0;

    // 车辆绕z轴转动的转动惯量
    double Iz;
    double iz_ = 0.0;
    double steer_angle_bias_ = 0.0;
    // 轮胎最大转角(rad)
    double wheel_max_degree;

    Eigen::MatrixXd matrix_a_coeff_;
    Eigen::MatrixXd matrix_a_;
    Eigen::MatrixXd matrix_b_;
    Eigen::MatrixXd matrix_c_;
    Eigen::MatrixXd matrix_ad_;
    Eigen::MatrixXd matrix_bd_;
    Eigen::MatrixXd matrix_cd_;
    Eigen::MatrixXd matrix_state_;
    Eigen::MatrixXd matrix_q_;
    Eigen::MatrixXd matrix_r_;
};

} // control
} // dust


#endif // !__LQR_CONTROL__