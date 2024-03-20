#include "metaController.h"

namespace dust {
namespace control {

controller::controller(const double poskp, const double poski, const double poskd,const double velkp, const double velki, const double velkd) {
    poskp_ = poskp;
    poski_ = poski;
    poskd_ = poskd;
	poserror_sub_ = 0.0;
	posprevious_error_ = 0.0;
	posintegral_ = 0.0;
	posdifferential_ = 0.0;
	posfirst_init_ = true;
    velkp_ = poskp;
    velki_ = poski;
    velkd_ = poskd;
	velerror_sub_ = 0.0;
	velprevious_error_ = 0.0;
	velintegral_ = 0.0;
	veldifferential_ = 0.0;
	velfirst_init_ = true;
}

double controller::positionLoop(const msg_gen::trajectory& targetPath, const common_msgs::CICV_Location& gps) {
	int index = 0;
	double current_time = (double)ros::WallTime::now().toSec();
	for (int i = 0; i < targetPath.pointsize - 1; ++i) {
		if (targetPath.trajectorypoint[i].absolute_time <= current_time && targetPath.trajectorypoint[i + 1].absolute_time ) {
			index = i;
		}
	}
	double distance = sqrt(pow(targetPath.trajectorypoint[index].x - gps.Position_x,2) + pow(targetPath.trajectorypoint[index].y - gps.Position_y,2));
	return posPID_Control(0.0, distance);
}
double controller::velocityLoop(const msg_gen::trajectory& targetPath, const common_msgs::CICV_Location& gps,double vel_comp) {
	int index = 0;
	double current_time = (double)ros::WallTime::now().toSec();
	for (int i = 0; i < targetPath.pointsize - 1; ++i) {
		if (targetPath.trajectorypoint[i].absolute_time <= current_time && targetPath.trajectorypoint[i + 1].absolute_time) {
			index = i;
		}
	}
	double v_now = sqrt(pow(gps.Velocity_x,2) + pow(gps.Velocity_y,2));
	return velPID_Control(targetPath.trajectorypoint[index].v - vel_comp,v_now);
}



double controller::posPID_Control(double value_target, double value_now) {
	
	double dt = 0.01;
	if (std::fabs(posintegral_) > 5) {
		posreset();
	}
	this->poserror_sub_ = (value_target - value_now) - this->posprevious_error_;
	this->posintegral_ = this->posintegral_ + dt * (value_target - value_now);
	if (this->posfirst_init_) {
		this->posfirst_init_ = false;
	}
	else {
		this->posdifferential_ = this->poserror_sub_ / dt;
	}

	double control_value = this->poskp_ * (value_target - value_now) + this->poski_ * this->posintegral_ + this->poskd_ * this->posdifferential_;
	this->posprevious_error_ = value_target - value_now;
	return control_value;
}


double controller::velPID_Control(double value_target, double value_now) {
	
	double dt = 0.01;
	if (std::fabs(velintegral_) > 5) {
		posreset();
	}
	this->velerror_sub_ = (value_target - value_now) - this->velprevious_error_;
	this->velintegral_ = this->velintegral_ + dt * (value_target - value_now);
	if (this->velfirst_init_) {
		this->velfirst_init_ = false;
	}
	else {
		this->veldifferential_ = this->velerror_sub_ / dt;
	}

	double control_value = this->velkp_ * (value_target - value_now) + this->velki_ * this->velintegral_ + this->velkd_ * this->veldifferential_;
	this->velprevious_error_ = value_target - value_now;
	return control_value;
}
void controller::posreset() {
	posintegral_ = 0.0;
	posprevious_error_ = 0.0;
	posfirst_init_ = true;
}
void controller::velreset(){
	velintegral_ = 0.0;
	velprevious_error_ = 0.0;
	velfirst_init_ = true; 
}

} // control
} // dust
