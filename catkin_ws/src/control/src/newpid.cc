#include "newpid.h"

pid::pid(const double kp, const double ki, const double kd) {
    kp_ = kp;
    ki_ = ki;
    kd_ = kd;
	error_sub_ = 0.0;
	previous_error_ = 0.0;
	integral_ = 0.0;
	differential_ = 0.0;
	first_init_ = true;
}

double pid::PID_Control(double value_target, double value_now) {
	
	double dt = 0.02;
	if (std::fabs(integral_) > 5) {
		reset();
	}
	this->error_sub_ = (value_target - value_now) - this->previous_error_;
	this->integral_ = this->integral_ + dt * (value_target - value_now);
	if (this->first_init_) {
		this->first_init_ = false;
	}
	else {
		this->differential_ = this->error_sub_ / dt;
	}

	double control_value = this->kp_ * (value_target - value_now) + this->ki_ * this->integral_ + this->kd_ * this->differential_;
	this->previous_error_ = value_target - value_now;
	return control_value;
}

void pid::reset() {
	integral_ = 0;
	previous_error_ = 0;
	first_init_ = true;
}
