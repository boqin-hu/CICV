/**
 * @file controller.h
 * @author feifei (gaolingfei@buaa.edu.cn)
 * @brief control base class, lateral && longitudinal
 * @version 0.1
 * @date 2023-02-10
 * 
 * @copyright Copyright (c) 2023
 * 
 */
#ifndef _CONTROL_
#define _CONTROL_

#pragma once
#include <ros/ros.h>
#include "common_msgs/CICV_Location.h"
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/PoseArray.h>
#include <vector>
#include "gps.h"
#include "trajectory.h"
#include "TrajectoryPoint.h"
#include <eigen3/Eigen/Core>
#include <eigen3/Eigen/Eigen>
#include <eigen3/Eigen/Dense>


namespace dust{
namespace control{

struct RefPoint
{
	double x;
	double y;
	double kappa;
	double theta;
	double speed;
};

/**
 * @brief control class, lateral && longitudinal
 * 
 */
class controller
{
public:
	controller(const double poskp, const double poski, const double poskd,const double velkp, const double velki, const double velkd);
	virtual ~controller()=default;

	// virtual function, base, lqrControl and pure_suit is inherited
	virtual double calculateCmd(const msg_gen::trajectory &targetPath, const common_msgs::CICV_Location& gps) = 0;

public:

	double positionLoop(const msg_gen::trajectory& targetPath, const common_msgs::CICV_Location& gps);
    double velocityLoop(const msg_gen::trajectory& targetPath,const common_msgs::CICV_Location& gps,double vel_comp);
	double posPID_Control(double value_target, double value_now);
	double velPID_Control(double value_target, double value_now);
	void posreset();
	void velreset();

protected:
	double poskp_ = 0.0;
	double poski_ = 0.0;
	double poskd_ = 0.0;
	double poserror_sub_ = 0.0;
	double posprevious_error_ = 0.0;
	double posintegral_ = 0.0;
	double posdifferential_ = 0.0;
	bool posfirst_init_ = false;
	double velkp_ = 0.0;
	double velki_ = 0.0;
	double velkd_ = 0.0;
	double velerror_sub_ = 0.0;
	double velprevious_error_ = 0.0;
	double velintegral_ = 0.0;
	double veldifferential_ = 0.0;
	bool velfirst_init_ = false;
};

} // control
} // dust

#endif // !_CONTROL_