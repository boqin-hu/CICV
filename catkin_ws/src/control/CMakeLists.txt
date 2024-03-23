cmake_minimum_required(VERSION 3.0.2)
project(control)

## Compile as C++11, supported in ROS Kinetic,melodic
##Compile as C++14, supported in ROS nortic
add_compile_options(-std=c++14)

set(SRC_FILE
    src/lat_control/lqr_controller.cc
    src/lat_control/pure_pursuit_controller.cc
    src/controller.cc
    src/control_training.cc
    src/control_node.cc
    src/newpid.cc
)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
    roscpp
    std_msgs
    geometry_msgs
    message_generation
)


find_package(Eigen3 QUIET)
find_package(OsqpEigen QUIET)

catkin_package(
    INCLUDE_DIRS include
    CATKIN_DEPENDS
     geometry_msgs
     roscpp 
     rospy 
     std_msgs 
     message_runtime
    
    DEPENDS
    Boost
)
## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
    include
    include/lat_control
    include/lon_control
    include/pure_pursuit_controller.h
    include/msg_gen
    include/controller.h
    include/newpid.h
    /workspace/devel/include
    ${catkin_INCLUDE_DIRS}
)
message(STATUS  "DEBUG" ${CMAKE_CURRENT_SOURCE_DIR})
add_executable(control_training ${SRC_FILE})
add_executable(control_node ${SRC_FILE})
# add_executable(lqr_controller src/lat_control/lqr_controller.cc)
# add_executable(pure_pursuit_controller src/lat_control/pure_pursuit_controller.cc)
# add_executable(control_training src/control_training.cc)
# add_executable(controller src/controller.cc)

# target_link_libraries(lqr_controller
#   ${catkin_LIBRARIES}  -lxerces-c osqp adolc ipopt
# )
# target_link_libraries(pure_pursuit_controller
#   ${catkin_LIBRARIES}  -lxerces-c osqp adolc ipopt
# )
# target_link_libraries(control_training
#   ${catkin_LIBRARIES}  -lxerces-c osqp adolc ipopt
# )
# target_link_libraries(controller
#   ${catkin_LIBRARIES}  -lxerces-c osqp adolc ipopt
# )
target_link_libraries(control_training ${catkin_LIBRARIES} -lxerces-c osqp adolc ipopt)
target_link_libraries(control_node ${catkin_LIBRARIES} -lxerces-c osqp adolc ipopt)
