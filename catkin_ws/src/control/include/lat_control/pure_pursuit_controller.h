#ifndef __PURE_PURSUIT__
#define __PURE_PURSUIT__

#pragma once
#include "metaController.h"

namespace dust {
namespace control {

class purePursuit : public controller
{
public:
	purePursuit(const double poskp, const double poski, const double poskd,const double velkp, const double velki, const double velkd);
	~purePursuit() = default;

	void routingCallback(const msg_gen::trajectory &routing);
	// void routingCallback(const geometry_msgs::PoseArray &routing);
	void gpsCallback(const msg_gen::gps &pGps);
	void run();

	double calculateCmd(const msg_gen::trajectory& tragetPath, const common_msgs::CICV_Location& gps);
};

} // control
} // dust

#endif // !__PURE_PURSUIT__

