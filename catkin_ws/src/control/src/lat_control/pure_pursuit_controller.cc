#include "pure_pursuit_controller.h"

namespace dust {
namespace control {

purePursuit::purePursuit(const double poskp, const double poski, const double poskd,const double velkp, const double velki, const double velkd) : controller(poskp,poski,poskd,velkp,velki,velkd) { }


double purePursuit::calculateCmd(const msg_gen::trajectory& targetPath, const common_msgs::CICV_Location& gps,
                                double lat_error, double heading_error, double lat_error_rate, double heading_error_rate,
                                double vehicle_speed, double ref_heading_rate, double matched_k) {
	
	int index = 0;
	int forwardIndex = 0;
	double minProgDist = 3.0;
	double progTime = 0.6;
	double mainVehicleSpeed = sqrtf(gps.Velocity_x * gps.Velocity_x+ gps.Velocity_y * gps.Velocity_y + gps.Angular_velocity_z * gps.Angular_velocity_z);
	double progDist = mainVehicleSpeed * progTime > minProgDist ? mainVehicleSpeed * progTime : minProgDist;
	double x = gps.Position_x;
	double y = gps.Position_y;

	// find nearest index
	double min_dis = (std::numeric_limits<int>::max)();
	for (int i = 0; i < targetPath.pointsize; i++)
	{
		double dis = pow(targetPath.trajectorypoint[i].x - x, 2) + pow(targetPath.trajectorypoint[i].y - y, 2);
        if (dis < min_dis) {

            min_dis = dis;
            index = i;
        }
	}
	
	// find forwardIndex
	for (int j = index; j < targetPath.pointsize; ++j) {
		forwardIndex = j;
		double distance = sqrtf((double)pow(targetPath.trajectorypoint[j].s - x, 2) +
			pow((double)targetPath.trajectorypoint[j].y - y, 2));
		if (distance >= progDist) {
			break;
		}
	}

	std::cout << "forwardIndex: " << forwardIndex << std::endl;
	double psi = gps.Yaw;
	double deltaAlfa = atan2(targetPath.trajectorypoint[forwardIndex].y - y,
		targetPath.trajectorypoint[forwardIndex].x - x) - psi;// alfa
	double ld = sqrt(pow(targetPath.trajectorypoint[forwardIndex].y - y, 2) +
		pow(targetPath.trajectorypoint[forwardIndex].x - x, 2)); // distance 
	double steer = atan2(2. * (2.85) * sin(deltaAlfa), ld) * 180 / (M_PI);
	std::cout << "  steer: " << steer << std::endl;
	// if (steer > 135) {
	// 	steer = 135;
	// }
	// else if (steer < -135) {
	// 	steer = -135;
	// }
	return steer;
}

} // control
} // dust