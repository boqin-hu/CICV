# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "map_msgs: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imap_msgs:/home/cicv/Message/src/map_msgs/msg;-Icommon_msgs:/home/cicv/Message/src/common_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(map_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cicv/Message/src/map_msgs/msg/RoutePlan.msg" NAME_WE)
add_custom_target(_map_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "map_msgs" "/home/cicv/Message/src/map_msgs/msg/RoutePlan.msg" "common_msgs/TimeStatus:common_msgs/TimeStatistics:common_msgs/FaultVec:common_msgs/FaultInfo:map_msgs/MissionPoint:common_msgs/Header"
)

get_filename_component(_filename "/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg" NAME_WE)
add_custom_target(_map_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "map_msgs" "/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(map_msgs
  "/home/cicv/Message/src/map_msgs/msg/RoutePlan.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/common_msgs/msg/TimeStatus.msg;/home/cicv/Message/src/common_msgs/msg/TimeStatistics.msg;/home/cicv/Message/src/common_msgs/msg/FaultVec.msg;/home/cicv/Message/src/common_msgs/msg/FaultInfo.msg;/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg;/home/cicv/Message/src/common_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/map_msgs
)
_generate_msg_cpp(map_msgs
  "/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/map_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(map_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/map_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(map_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(map_msgs_generate_messages map_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cicv/Message/src/map_msgs/msg/RoutePlan.msg" NAME_WE)
add_dependencies(map_msgs_generate_messages_cpp _map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg" NAME_WE)
add_dependencies(map_msgs_generate_messages_cpp _map_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(map_msgs_gencpp)
add_dependencies(map_msgs_gencpp map_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS map_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(map_msgs
  "/home/cicv/Message/src/map_msgs/msg/RoutePlan.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/common_msgs/msg/TimeStatus.msg;/home/cicv/Message/src/common_msgs/msg/TimeStatistics.msg;/home/cicv/Message/src/common_msgs/msg/FaultVec.msg;/home/cicv/Message/src/common_msgs/msg/FaultInfo.msg;/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg;/home/cicv/Message/src/common_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/map_msgs
)
_generate_msg_eus(map_msgs
  "/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/map_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(map_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/map_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(map_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(map_msgs_generate_messages map_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cicv/Message/src/map_msgs/msg/RoutePlan.msg" NAME_WE)
add_dependencies(map_msgs_generate_messages_eus _map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg" NAME_WE)
add_dependencies(map_msgs_generate_messages_eus _map_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(map_msgs_geneus)
add_dependencies(map_msgs_geneus map_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS map_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(map_msgs
  "/home/cicv/Message/src/map_msgs/msg/RoutePlan.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/common_msgs/msg/TimeStatus.msg;/home/cicv/Message/src/common_msgs/msg/TimeStatistics.msg;/home/cicv/Message/src/common_msgs/msg/FaultVec.msg;/home/cicv/Message/src/common_msgs/msg/FaultInfo.msg;/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg;/home/cicv/Message/src/common_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/map_msgs
)
_generate_msg_lisp(map_msgs
  "/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/map_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(map_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/map_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(map_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(map_msgs_generate_messages map_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cicv/Message/src/map_msgs/msg/RoutePlan.msg" NAME_WE)
add_dependencies(map_msgs_generate_messages_lisp _map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg" NAME_WE)
add_dependencies(map_msgs_generate_messages_lisp _map_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(map_msgs_genlisp)
add_dependencies(map_msgs_genlisp map_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS map_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(map_msgs
  "/home/cicv/Message/src/map_msgs/msg/RoutePlan.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/common_msgs/msg/TimeStatus.msg;/home/cicv/Message/src/common_msgs/msg/TimeStatistics.msg;/home/cicv/Message/src/common_msgs/msg/FaultVec.msg;/home/cicv/Message/src/common_msgs/msg/FaultInfo.msg;/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg;/home/cicv/Message/src/common_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/map_msgs
)
_generate_msg_nodejs(map_msgs
  "/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/map_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(map_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/map_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(map_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(map_msgs_generate_messages map_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cicv/Message/src/map_msgs/msg/RoutePlan.msg" NAME_WE)
add_dependencies(map_msgs_generate_messages_nodejs _map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg" NAME_WE)
add_dependencies(map_msgs_generate_messages_nodejs _map_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(map_msgs_gennodejs)
add_dependencies(map_msgs_gennodejs map_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS map_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(map_msgs
  "/home/cicv/Message/src/map_msgs/msg/RoutePlan.msg"
  "${MSG_I_FLAGS}"
  "/home/cicv/Message/src/common_msgs/msg/TimeStatus.msg;/home/cicv/Message/src/common_msgs/msg/TimeStatistics.msg;/home/cicv/Message/src/common_msgs/msg/FaultVec.msg;/home/cicv/Message/src/common_msgs/msg/FaultInfo.msg;/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg;/home/cicv/Message/src/common_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_msgs
)
_generate_msg_py(map_msgs
  "/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(map_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(map_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(map_msgs_generate_messages map_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cicv/Message/src/map_msgs/msg/RoutePlan.msg" NAME_WE)
add_dependencies(map_msgs_generate_messages_py _map_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cicv/Message/src/map_msgs/msg/MissionPoint.msg" NAME_WE)
add_dependencies(map_msgs_generate_messages_py _map_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(map_msgs_genpy)
add_dependencies(map_msgs_genpy map_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS map_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/map_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/map_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET common_msgs_generate_messages_cpp)
  add_dependencies(map_msgs_generate_messages_cpp common_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(map_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/map_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/map_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET common_msgs_generate_messages_eus)
  add_dependencies(map_msgs_generate_messages_eus common_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(map_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/map_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/map_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET common_msgs_generate_messages_lisp)
  add_dependencies(map_msgs_generate_messages_lisp common_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(map_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/map_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/map_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET common_msgs_generate_messages_nodejs)
  add_dependencies(map_msgs_generate_messages_nodejs common_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(map_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/map_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET common_msgs_generate_messages_py)
  add_dependencies(map_msgs_generate_messages_py common_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(map_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
