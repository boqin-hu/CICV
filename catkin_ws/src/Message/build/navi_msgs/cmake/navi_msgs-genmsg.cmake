# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "navi_msgs: 13 messages, 0 services")

set(MSG_I_FLAGS "-Inavi_msgs:/home/cicv/Message/src/navi_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(navi_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviTask.msg" NAME_WE)
add_custom_target(_navi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navi_msgs" "/home/cicv/Message/src/navi_msgs/msg/NaviTask.msg" "navi_msgs/TimeStamp:navi_msgs/StationPoint:navi_msgs/VehHeader"
)

get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviHmi.msg" NAME_WE)
add_custom_target(_navi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navi_msgs" "/home/cicv/Message/src/navi_msgs/msg/NaviHmi.msg" ""
)

get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviTaskStatus.msg" NAME_WE)
add_custom_target(_navi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navi_msgs" "/home/cicv/Message/src/navi_msgs/msg/NaviTaskStatus.msg" "navi_msgs/TimeStamp:navi_msgs/VehHeader"
)

get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg" NAME_WE)
add_custom_target(_navi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navi_msgs" "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg" ""
)

get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg" NAME_WE)
add_custom_target(_navi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navi_msgs" "/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg" ""
)

get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/SysInfo.msg" NAME_WE)
add_custom_target(_navi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navi_msgs" "/home/cicv/Message/src/navi_msgs/msg/SysInfo.msg" ""
)

get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg" NAME_WE)
add_custom_target(_navi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navi_msgs" "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg" ""
)

get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg" NAME_WE)
add_custom_target(_navi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navi_msgs" "/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg" "navi_msgs/TimeStamp"
)

get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehPosition.msg" NAME_WE)
add_custom_target(_navi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navi_msgs" "/home/cicv/Message/src/navi_msgs/msg/VehPosition.msg" "navi_msgs/TimeStamp:navi_msgs/VehHeader:navi_msgs/Point2D"
)

get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehStatus.msg" NAME_WE)
add_custom_target(_navi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navi_msgs" "/home/cicv/Message/src/navi_msgs/msg/VehStatus.msg" "navi_msgs/TimeStamp:navi_msgs/VehHeader"
)

get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/WifiInfo.msg" NAME_WE)
add_custom_target(_navi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navi_msgs" "/home/cicv/Message/src/navi_msgs/msg/WifiInfo.msg" ""
)

get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NavParas.msg" NAME_WE)
add_custom_target(_navi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navi_msgs" "/home/cicv/Message/src/navi_msgs/msg/NavParas.msg" "navi_msgs/Point2D"
)

get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NavPose.msg" NAME_WE)
add_custom_target(_navi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navi_msgs" "/home/cicv/Message/src/navi_msgs/msg/NavPose.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NaviTask.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navi_msgs
)
_generate_msg_cpp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NaviHmi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navi_msgs
)
_generate_msg_cpp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NaviTaskStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navi_msgs
)
_generate_msg_cpp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navi_msgs
)
_generate_msg_cpp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navi_msgs
)
_generate_msg_cpp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/SysInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navi_msgs
)
_generate_msg_cpp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navi_msgs
)
_generate_msg_cpp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navi_msgs
)
_generate_msg_cpp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/VehPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg;/home/cicv/Message/src/navi_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navi_msgs
)
_generate_msg_cpp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/VehStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navi_msgs
)
_generate_msg_cpp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/WifiInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navi_msgs
)
_generate_msg_cpp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NavParas.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navi_msgs
)
_generate_msg_cpp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NavPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navi_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(navi_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navi_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(navi_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(navi_msgs_generate_messages navi_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviTask.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_cpp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviHmi.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_cpp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviTaskStatus.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_cpp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_cpp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_cpp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/SysInfo.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_cpp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_cpp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_cpp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehPosition.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_cpp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehStatus.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_cpp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/WifiInfo.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_cpp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NavParas.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_cpp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NavPose.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_cpp _navi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navi_msgs_gencpp)
add_dependencies(navi_msgs_gencpp navi_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navi_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NaviTask.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navi_msgs
)
_generate_msg_eus(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NaviHmi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navi_msgs
)
_generate_msg_eus(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NaviTaskStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navi_msgs
)
_generate_msg_eus(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navi_msgs
)
_generate_msg_eus(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navi_msgs
)
_generate_msg_eus(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/SysInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navi_msgs
)
_generate_msg_eus(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navi_msgs
)
_generate_msg_eus(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navi_msgs
)
_generate_msg_eus(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/VehPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg;/home/cicv/Message/src/navi_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navi_msgs
)
_generate_msg_eus(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/VehStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navi_msgs
)
_generate_msg_eus(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/WifiInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navi_msgs
)
_generate_msg_eus(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NavParas.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navi_msgs
)
_generate_msg_eus(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NavPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navi_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(navi_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navi_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(navi_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(navi_msgs_generate_messages navi_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviTask.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_eus _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviHmi.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_eus _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviTaskStatus.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_eus _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_eus _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_eus _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/SysInfo.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_eus _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_eus _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_eus _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehPosition.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_eus _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehStatus.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_eus _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/WifiInfo.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_eus _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NavParas.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_eus _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NavPose.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_eus _navi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navi_msgs_geneus)
add_dependencies(navi_msgs_geneus navi_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navi_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NaviTask.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navi_msgs
)
_generate_msg_lisp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NaviHmi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navi_msgs
)
_generate_msg_lisp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NaviTaskStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navi_msgs
)
_generate_msg_lisp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navi_msgs
)
_generate_msg_lisp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navi_msgs
)
_generate_msg_lisp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/SysInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navi_msgs
)
_generate_msg_lisp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navi_msgs
)
_generate_msg_lisp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navi_msgs
)
_generate_msg_lisp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/VehPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg;/home/cicv/Message/src/navi_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navi_msgs
)
_generate_msg_lisp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/VehStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navi_msgs
)
_generate_msg_lisp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/WifiInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navi_msgs
)
_generate_msg_lisp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NavParas.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navi_msgs
)
_generate_msg_lisp(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NavPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navi_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(navi_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navi_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(navi_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(navi_msgs_generate_messages navi_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviTask.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_lisp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviHmi.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_lisp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviTaskStatus.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_lisp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_lisp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_lisp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/SysInfo.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_lisp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_lisp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_lisp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehPosition.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_lisp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehStatus.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_lisp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/WifiInfo.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_lisp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NavParas.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_lisp _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NavPose.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_lisp _navi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navi_msgs_genlisp)
add_dependencies(navi_msgs_genlisp navi_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navi_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NaviTask.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navi_msgs
)
_generate_msg_nodejs(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NaviHmi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navi_msgs
)
_generate_msg_nodejs(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NaviTaskStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navi_msgs
)
_generate_msg_nodejs(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navi_msgs
)
_generate_msg_nodejs(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navi_msgs
)
_generate_msg_nodejs(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/SysInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navi_msgs
)
_generate_msg_nodejs(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navi_msgs
)
_generate_msg_nodejs(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navi_msgs
)
_generate_msg_nodejs(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/VehPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg;/home/cicv/Message/src/navi_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navi_msgs
)
_generate_msg_nodejs(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/VehStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navi_msgs
)
_generate_msg_nodejs(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/WifiInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navi_msgs
)
_generate_msg_nodejs(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NavParas.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navi_msgs
)
_generate_msg_nodejs(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NavPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navi_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(navi_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navi_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(navi_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(navi_msgs_generate_messages navi_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviTask.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_nodejs _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviHmi.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_nodejs _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviTaskStatus.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_nodejs _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_nodejs _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_nodejs _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/SysInfo.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_nodejs _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_nodejs _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_nodejs _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehPosition.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_nodejs _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehStatus.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_nodejs _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/WifiInfo.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_nodejs _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NavParas.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_nodejs _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NavPose.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_nodejs _navi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navi_msgs_gennodejs)
add_dependencies(navi_msgs_gennodejs navi_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navi_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NaviTask.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs
)
_generate_msg_py(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NaviHmi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs
)
_generate_msg_py(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NaviTaskStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs
)
_generate_msg_py(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs
)
_generate_msg_py(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs
)
_generate_msg_py(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/SysInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs
)
_generate_msg_py(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs
)
_generate_msg_py(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs
)
_generate_msg_py(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/VehPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg;/home/cicv/Message/src/navi_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs
)
_generate_msg_py(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/VehStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg;/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs
)
_generate_msg_py(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/WifiInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs
)
_generate_msg_py(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NavParas.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs
)
_generate_msg_py(navi_msgs
  "/home/cicv/Message/src/navi_msgs/msg/NavPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(navi_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(navi_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(navi_msgs_generate_messages navi_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviTask.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_py _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviHmi.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_py _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NaviTaskStatus.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_py _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/Point2D.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_py _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/StationPoint.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_py _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/SysInfo.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_py _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/TimeStamp.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_py _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehHeader.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_py _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehPosition.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_py _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/VehStatus.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_py _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/WifiInfo.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_py _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NavParas.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_py _navi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/navi_msgs/msg/NavPose.msg" NAME_WE)
add_dependencies(navi_msgs_generate_messages_py _navi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navi_msgs_genpy)
add_dependencies(navi_msgs_genpy navi_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navi_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navi_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navi_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(navi_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(navi_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navi_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navi_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(navi_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(navi_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navi_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navi_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(navi_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(navi_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navi_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navi_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(navi_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(navi_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navi_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(navi_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(navi_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
