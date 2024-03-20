# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "imu: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iimu:/home/cicv/Message/src/imu/msg;-Icommon_msgs:/home/cicv/Message/src/common_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(imu_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cicv/Message/src/imu/msg/SensorImu.msg" NAME_WE)
add_custom_target(_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "imu" "/home/cicv/Message/src/imu/msg/SensorImu.msg" "common_msgs/TimeStatus:common_msgs/LLH:common_msgs/Vector3WithCovariance:common_msgs/EulerWithCovariance:common_msgs/NavStatus:common_msgs/FaultVec:imu/LocalizationControl:common_msgs/Pose:common_msgs/Twist:common_msgs/UnsureVar:common_msgs/PoseQuaternion:common_msgs/FaultInfo:common_msgs/Vector3:common_msgs/Quaternion:common_msgs/DRPoseWithTime:common_msgs/TimeStatistics:common_msgs/PoseEuler:common_msgs/Header"
)

get_filename_component(_filename "/home/cicv/Message/src/imu/msg/LocalizationControl.msg" NAME_WE)
add_custom_target(_imu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "imu" "/home/cicv/Message/src/imu/msg/LocalizationControl.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(imu
  "/home/cicv/Message/src/imu/msg/SensorImu.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/common_msgs/msg/TimeStatus.msg;/home/cicv/Message/src/common_msgs/msg/LLH.msg;/home/cicv/Message/src/common_msgs/msg/Vector3WithCovariance.msg;/home/cicv/Message/src/common_msgs/msg/EulerWithCovariance.msg;/home/cicv/Message/src/common_msgs/msg/NavStatus.msg;/home/cicv/Message/src/common_msgs/msg/FaultVec.msg;/home/cicv/Message/src/imu/msg/LocalizationControl.msg;/home/cicv/Message/src/common_msgs/msg/Pose.msg;/home/cicv/Message/src/common_msgs/msg/Twist.msg;/home/cicv/Message/src/common_msgs/msg/UnsureVar.msg;/home/cicv/Message/src/common_msgs/msg/PoseQuaternion.msg;/home/cicv/Message/src/common_msgs/msg/FaultInfo.msg;/home/cicv/Message/src/common_msgs/msg/Vector3.msg;/home/cicv/Message/src/common_msgs/msg/Quaternion.msg;/home/cicv/Message/src/common_msgs/msg/DRPoseWithTime.msg;/home/cicv/Message/src/common_msgs/msg/TimeStatistics.msg;/home/cicv/Message/src/common_msgs/msg/PoseEuler.msg;/home/cicv/Message/src/common_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu
)
_generate_msg_cpp(imu
  "/home/cicv/Message/src/imu/msg/LocalizationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu
)

### Generating Services

### Generating Module File
_generate_module_cpp(imu
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(imu_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(imu_generate_messages imu_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cicv/Message/src/imu/msg/SensorImu.msg" NAME_WE)
add_dependencies(imu_generate_messages_cpp _imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/imu/msg/LocalizationControl.msg" NAME_WE)
add_dependencies(imu_generate_messages_cpp _imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_gencpp)
add_dependencies(imu_gencpp imu_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(imu
  "/home/cicv/Message/src/imu/msg/SensorImu.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/common_msgs/msg/TimeStatus.msg;/home/cicv/Message/src/common_msgs/msg/LLH.msg;/home/cicv/Message/src/common_msgs/msg/Vector3WithCovariance.msg;/home/cicv/Message/src/common_msgs/msg/EulerWithCovariance.msg;/home/cicv/Message/src/common_msgs/msg/NavStatus.msg;/home/cicv/Message/src/common_msgs/msg/FaultVec.msg;/home/cicv/Message/src/imu/msg/LocalizationControl.msg;/home/cicv/Message/src/common_msgs/msg/Pose.msg;/home/cicv/Message/src/common_msgs/msg/Twist.msg;/home/cicv/Message/src/common_msgs/msg/UnsureVar.msg;/home/cicv/Message/src/common_msgs/msg/PoseQuaternion.msg;/home/cicv/Message/src/common_msgs/msg/FaultInfo.msg;/home/cicv/Message/src/common_msgs/msg/Vector3.msg;/home/cicv/Message/src/common_msgs/msg/Quaternion.msg;/home/cicv/Message/src/common_msgs/msg/DRPoseWithTime.msg;/home/cicv/Message/src/common_msgs/msg/TimeStatistics.msg;/home/cicv/Message/src/common_msgs/msg/PoseEuler.msg;/home/cicv/Message/src/common_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu
)
_generate_msg_eus(imu
  "/home/cicv/Message/src/imu/msg/LocalizationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu
)

### Generating Services

### Generating Module File
_generate_module_eus(imu
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(imu_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(imu_generate_messages imu_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cicv/Message/src/imu/msg/SensorImu.msg" NAME_WE)
add_dependencies(imu_generate_messages_eus _imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/imu/msg/LocalizationControl.msg" NAME_WE)
add_dependencies(imu_generate_messages_eus _imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_geneus)
add_dependencies(imu_geneus imu_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(imu
  "/home/cicv/Message/src/imu/msg/SensorImu.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/common_msgs/msg/TimeStatus.msg;/home/cicv/Message/src/common_msgs/msg/LLH.msg;/home/cicv/Message/src/common_msgs/msg/Vector3WithCovariance.msg;/home/cicv/Message/src/common_msgs/msg/EulerWithCovariance.msg;/home/cicv/Message/src/common_msgs/msg/NavStatus.msg;/home/cicv/Message/src/common_msgs/msg/FaultVec.msg;/home/cicv/Message/src/imu/msg/LocalizationControl.msg;/home/cicv/Message/src/common_msgs/msg/Pose.msg;/home/cicv/Message/src/common_msgs/msg/Twist.msg;/home/cicv/Message/src/common_msgs/msg/UnsureVar.msg;/home/cicv/Message/src/common_msgs/msg/PoseQuaternion.msg;/home/cicv/Message/src/common_msgs/msg/FaultInfo.msg;/home/cicv/Message/src/common_msgs/msg/Vector3.msg;/home/cicv/Message/src/common_msgs/msg/Quaternion.msg;/home/cicv/Message/src/common_msgs/msg/DRPoseWithTime.msg;/home/cicv/Message/src/common_msgs/msg/TimeStatistics.msg;/home/cicv/Message/src/common_msgs/msg/PoseEuler.msg;/home/cicv/Message/src/common_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu
)
_generate_msg_lisp(imu
  "/home/cicv/Message/src/imu/msg/LocalizationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu
)

### Generating Services

### Generating Module File
_generate_module_lisp(imu
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(imu_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(imu_generate_messages imu_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cicv/Message/src/imu/msg/SensorImu.msg" NAME_WE)
add_dependencies(imu_generate_messages_lisp _imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/imu/msg/LocalizationControl.msg" NAME_WE)
add_dependencies(imu_generate_messages_lisp _imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_genlisp)
add_dependencies(imu_genlisp imu_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(imu
  "/home/cicv/Message/src/imu/msg/SensorImu.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/common_msgs/msg/TimeStatus.msg;/home/cicv/Message/src/common_msgs/msg/LLH.msg;/home/cicv/Message/src/common_msgs/msg/Vector3WithCovariance.msg;/home/cicv/Message/src/common_msgs/msg/EulerWithCovariance.msg;/home/cicv/Message/src/common_msgs/msg/NavStatus.msg;/home/cicv/Message/src/common_msgs/msg/FaultVec.msg;/home/cicv/Message/src/imu/msg/LocalizationControl.msg;/home/cicv/Message/src/common_msgs/msg/Pose.msg;/home/cicv/Message/src/common_msgs/msg/Twist.msg;/home/cicv/Message/src/common_msgs/msg/UnsureVar.msg;/home/cicv/Message/src/common_msgs/msg/PoseQuaternion.msg;/home/cicv/Message/src/common_msgs/msg/FaultInfo.msg;/home/cicv/Message/src/common_msgs/msg/Vector3.msg;/home/cicv/Message/src/common_msgs/msg/Quaternion.msg;/home/cicv/Message/src/common_msgs/msg/DRPoseWithTime.msg;/home/cicv/Message/src/common_msgs/msg/TimeStatistics.msg;/home/cicv/Message/src/common_msgs/msg/PoseEuler.msg;/home/cicv/Message/src/common_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imu
)
_generate_msg_nodejs(imu
  "/home/cicv/Message/src/imu/msg/LocalizationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imu
)

### Generating Services

### Generating Module File
_generate_module_nodejs(imu
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imu
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(imu_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(imu_generate_messages imu_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cicv/Message/src/imu/msg/SensorImu.msg" NAME_WE)
add_dependencies(imu_generate_messages_nodejs _imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/imu/msg/LocalizationControl.msg" NAME_WE)
add_dependencies(imu_generate_messages_nodejs _imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_gennodejs)
add_dependencies(imu_gennodejs imu_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(imu
  "/home/cicv/Message/src/imu/msg/SensorImu.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/common_msgs/msg/TimeStatus.msg;/home/cicv/Message/src/common_msgs/msg/LLH.msg;/home/cicv/Message/src/common_msgs/msg/Vector3WithCovariance.msg;/home/cicv/Message/src/common_msgs/msg/EulerWithCovariance.msg;/home/cicv/Message/src/common_msgs/msg/NavStatus.msg;/home/cicv/Message/src/common_msgs/msg/FaultVec.msg;/home/cicv/Message/src/imu/msg/LocalizationControl.msg;/home/cicv/Message/src/common_msgs/msg/Pose.msg;/home/cicv/Message/src/common_msgs/msg/Twist.msg;/home/cicv/Message/src/common_msgs/msg/UnsureVar.msg;/home/cicv/Message/src/common_msgs/msg/PoseQuaternion.msg;/home/cicv/Message/src/common_msgs/msg/FaultInfo.msg;/home/cicv/Message/src/common_msgs/msg/Vector3.msg;/home/cicv/Message/src/common_msgs/msg/Quaternion.msg;/home/cicv/Message/src/common_msgs/msg/DRPoseWithTime.msg;/home/cicv/Message/src/common_msgs/msg/TimeStatistics.msg;/home/cicv/Message/src/common_msgs/msg/PoseEuler.msg;/home/cicv/Message/src/common_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu
)
_generate_msg_py(imu
  "/home/cicv/Message/src/imu/msg/LocalizationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu
)

### Generating Services

### Generating Module File
_generate_module_py(imu
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(imu_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(imu_generate_messages imu_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cicv/Message/src/imu/msg/SensorImu.msg" NAME_WE)
add_dependencies(imu_generate_messages_py _imu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/imu/msg/LocalizationControl.msg" NAME_WE)
add_dependencies(imu_generate_messages_py _imu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(imu_genpy)
add_dependencies(imu_genpy imu_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS imu_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/imu
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET common_msgs_generate_messages_cpp)
  add_dependencies(imu_generate_messages_cpp common_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/imu
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET common_msgs_generate_messages_eus)
  add_dependencies(imu_generate_messages_eus common_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/imu
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET common_msgs_generate_messages_lisp)
  add_dependencies(imu_generate_messages_lisp common_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/imu
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET common_msgs_generate_messages_nodejs)
  add_dependencies(imu_generate_messages_nodejs common_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/imu
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET common_msgs_generate_messages_py)
  add_dependencies(imu_generate_messages_py common_msgs_generate_messages_py)
endif()
