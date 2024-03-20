## cmake_minimum_required(VERSION 3.0.2)
cmake_minimum_required(VERSION 2.8.12...3.16)
project(planning)

## Compile as C++11, supported in ROS Kinetic,melodic
##Compile as C++14, supported in ROS nortic
add_compile_options(-std=c++14)

# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14 -g -O0 -ggdb")

##gt 问题2：设置可执行文件路径
set(CMAKE_PREFIX_PATH "/opt/ros/melodic")
set(CMAKE_MODULE_PATH "${CMAKE_PREFIX_PATH}/share/catkin/cmake")

##gt 问题3：找不到 catkin 软件包，手动添加
set(catkin_DIR "/usr/lib/python3/dist-packages/catkin_pkg")


set(SRC_FILE
    src/reference_line/cartesian_frenet_conversion.cc
    src/reference_line/reference_line.cc
    src/reference_line/cos_theta_ipopt_interface.cc
    src/reference_line/fem_pos_deviation_ipopt_interface.cc
    src/reference_line/fem_pos_deviation_osqp_interface.cc
    src/reference_line/fem_pos_deviation_sqp_osqp_interface.cc
    src/reference_line/reference_point.cc
    src/planning.cc

    src/common/box2d.cc
    src/common/Config.cc
    src/common/line_segment2d.cc
    src/common/math_utils.cc
    src/common/PlanningTarget.cc
    src/common/polygon2d.cc
    src/common/vec2d.cc

    src/lattice/collision_checker.cc
    src/lattice/constraint_checker.cc
    src/lattice/end_condition_sampler.cc
    src/lattice/feasible_region.cc
    src/lattice/lattice_trajectory1d.cc
    src/lattice/lattice.cc
    src/lattice/path_time_graph.cc
    src/lattice/piecewise_braking_trajectory_generator.cc
    src/lattice/piecewise_acceleration_trajectory1d.cc
    src/lattice/prediction_querier.cc
    src/lattice/trajectory_combiner.cc
    src/lattice/trajectory_evaluator.cc
    src/lattice/trajectory1d_generator.cc

    src/obstacle/boundarys.cc
    src/obstacle/Ob_prediction_trajectory.cc
    src/obstacle/Obstacle_avoid.cc
    src/obstacle/Obstacle.cc

    src/path/FrenetPath.cc
    src/path/path_matcher.cc
    src/path/path_points.cc
    src/path/trajectoryPoint.cc

    src/polynomial/quintic_polynomial_curve1d.cc
    src/polynomial/quartic_polynomial_curve1d.cc

    src/qp/constant_jerk_trajectory1d.cc
    src/qp/lateral_osqp_optimizer.cc
    src/qp/lateral_qp_optimizer.cc
    src/qp/piecewise_jerk_trajectory1d.cc

    src/spline/CubicSpline1D.cc
    src/spline/CubicSpline2D.cc

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

find_package(Boost REQUIRED COMPONENTS system) ## gt 问题1： Boost
find_package(Eigen3 QUIET)
find_package(OsqpEigen QUIET)
#find_package(yaml-cpp REQUIRED)

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
    include/common
    include/lattice
    include/obstacle
    include/msg_gen
    include/path
    include/polynomial
    include/qp
    include/planning.h
    include/planning_base.h
    include/reference_line
    include/spline
    /usr/include/yaml-cpp
    /catkin_ws/devel/include
    include ${catkin_INCLUDE_DIRS}
)
# set(lib_DIR /usr/lib/x84_64-linux-gnu) 
# include_directories(${PROJECT_SOURCE_DIR}/include/third-party/yaml-cpp) 
link_directories(
    /usr/local/lib
    /usr/local/lib64
    /usr/include
    )#注意在这里添加yaml库的地址
add_executable(planning ${SRC_FILE})
add_executable(reference_line ${SRC_FILE})

target_link_libraries(planning ${catkin_LIBRARIES} -lxerces-c osqp adolc ipopt yaml-cpp)
target_link_libraries(reference_line ${catkin_LIBRARIES} -lxerces-c osqp adolc ipopt yaml-cpp)
