#include <vector>
#include <math.h>

class pid {
public:
	pid(const double kp, const double ki, const double kd);
	~pid() {};

public:
	double PID_Control(double value_target, double value_now);
	void reset();

protected:
	double kp_ = 0.0;
	double ki_ = 0.0;
	double kd_ = 0.0;
	double error_sub_ = 0.0;
	double previous_error_ = 0.0;
	double integral_ = 0.0;
	double differential_ = 0.0;
	bool first_init_ = false;
};