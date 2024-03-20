

#include "ros/ros.h"
#include "planning.h"
using namespace dust::reference_line;
int main(int argc, char **argv)
{   
    setlocale(LC_ALL,"");
    ros::init(argc, argv, "planning");
    ROS_INFO("planning start");

    referenceLine rl;
    rl.run();    
}


// 比赛地图 205.5，140，202，156