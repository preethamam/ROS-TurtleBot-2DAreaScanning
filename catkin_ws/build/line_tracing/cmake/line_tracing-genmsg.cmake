# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "line_tracing: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iline_tracing:/home/turtlebot/catkin_ws/src/line_tracing/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(line_tracing_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/cmd_stamped.msg" NAME_WE)
add_custom_target(_line_tracing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "line_tracing" "/home/turtlebot/catkin_ws/src/line_tracing/msg/cmd_stamped.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/hsv_thresh.msg" NAME_WE)
add_custom_target(_line_tracing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "line_tracing" "/home/turtlebot/catkin_ws/src/line_tracing/msg/hsv_thresh.msg" ""
)

get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/theta_stamped.msg" NAME_WE)
add_custom_target(_line_tracing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "line_tracing" "/home/turtlebot/catkin_ws/src/line_tracing/msg/theta_stamped.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(line_tracing
  "/home/turtlebot/catkin_ws/src/line_tracing/msg/cmd_stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_tracing
)
_generate_msg_cpp(line_tracing
  "/home/turtlebot/catkin_ws/src/line_tracing/msg/hsv_thresh.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_tracing
)
_generate_msg_cpp(line_tracing
  "/home/turtlebot/catkin_ws/src/line_tracing/msg/theta_stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_tracing
)

### Generating Services

### Generating Module File
_generate_module_cpp(line_tracing
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_tracing
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(line_tracing_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(line_tracing_generate_messages line_tracing_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/cmd_stamped.msg" NAME_WE)
add_dependencies(line_tracing_generate_messages_cpp _line_tracing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/hsv_thresh.msg" NAME_WE)
add_dependencies(line_tracing_generate_messages_cpp _line_tracing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/theta_stamped.msg" NAME_WE)
add_dependencies(line_tracing_generate_messages_cpp _line_tracing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(line_tracing_gencpp)
add_dependencies(line_tracing_gencpp line_tracing_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS line_tracing_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(line_tracing
  "/home/turtlebot/catkin_ws/src/line_tracing/msg/cmd_stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_tracing
)
_generate_msg_eus(line_tracing
  "/home/turtlebot/catkin_ws/src/line_tracing/msg/hsv_thresh.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_tracing
)
_generate_msg_eus(line_tracing
  "/home/turtlebot/catkin_ws/src/line_tracing/msg/theta_stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_tracing
)

### Generating Services

### Generating Module File
_generate_module_eus(line_tracing
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_tracing
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(line_tracing_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(line_tracing_generate_messages line_tracing_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/cmd_stamped.msg" NAME_WE)
add_dependencies(line_tracing_generate_messages_eus _line_tracing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/hsv_thresh.msg" NAME_WE)
add_dependencies(line_tracing_generate_messages_eus _line_tracing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/theta_stamped.msg" NAME_WE)
add_dependencies(line_tracing_generate_messages_eus _line_tracing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(line_tracing_geneus)
add_dependencies(line_tracing_geneus line_tracing_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS line_tracing_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(line_tracing
  "/home/turtlebot/catkin_ws/src/line_tracing/msg/cmd_stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_tracing
)
_generate_msg_lisp(line_tracing
  "/home/turtlebot/catkin_ws/src/line_tracing/msg/hsv_thresh.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_tracing
)
_generate_msg_lisp(line_tracing
  "/home/turtlebot/catkin_ws/src/line_tracing/msg/theta_stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_tracing
)

### Generating Services

### Generating Module File
_generate_module_lisp(line_tracing
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_tracing
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(line_tracing_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(line_tracing_generate_messages line_tracing_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/cmd_stamped.msg" NAME_WE)
add_dependencies(line_tracing_generate_messages_lisp _line_tracing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/hsv_thresh.msg" NAME_WE)
add_dependencies(line_tracing_generate_messages_lisp _line_tracing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/theta_stamped.msg" NAME_WE)
add_dependencies(line_tracing_generate_messages_lisp _line_tracing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(line_tracing_genlisp)
add_dependencies(line_tracing_genlisp line_tracing_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS line_tracing_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(line_tracing
  "/home/turtlebot/catkin_ws/src/line_tracing/msg/cmd_stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_tracing
)
_generate_msg_nodejs(line_tracing
  "/home/turtlebot/catkin_ws/src/line_tracing/msg/hsv_thresh.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_tracing
)
_generate_msg_nodejs(line_tracing
  "/home/turtlebot/catkin_ws/src/line_tracing/msg/theta_stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_tracing
)

### Generating Services

### Generating Module File
_generate_module_nodejs(line_tracing
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_tracing
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(line_tracing_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(line_tracing_generate_messages line_tracing_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/cmd_stamped.msg" NAME_WE)
add_dependencies(line_tracing_generate_messages_nodejs _line_tracing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/hsv_thresh.msg" NAME_WE)
add_dependencies(line_tracing_generate_messages_nodejs _line_tracing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/theta_stamped.msg" NAME_WE)
add_dependencies(line_tracing_generate_messages_nodejs _line_tracing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(line_tracing_gennodejs)
add_dependencies(line_tracing_gennodejs line_tracing_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS line_tracing_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(line_tracing
  "/home/turtlebot/catkin_ws/src/line_tracing/msg/cmd_stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_tracing
)
_generate_msg_py(line_tracing
  "/home/turtlebot/catkin_ws/src/line_tracing/msg/hsv_thresh.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_tracing
)
_generate_msg_py(line_tracing
  "/home/turtlebot/catkin_ws/src/line_tracing/msg/theta_stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_tracing
)

### Generating Services

### Generating Module File
_generate_module_py(line_tracing
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_tracing
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(line_tracing_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(line_tracing_generate_messages line_tracing_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/cmd_stamped.msg" NAME_WE)
add_dependencies(line_tracing_generate_messages_py _line_tracing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/hsv_thresh.msg" NAME_WE)
add_dependencies(line_tracing_generate_messages_py _line_tracing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/turtlebot/catkin_ws/src/line_tracing/msg/theta_stamped.msg" NAME_WE)
add_dependencies(line_tracing_generate_messages_py _line_tracing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(line_tracing_genpy)
add_dependencies(line_tracing_genpy line_tracing_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS line_tracing_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_tracing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/line_tracing
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(line_tracing_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_tracing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/line_tracing
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(line_tracing_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_tracing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/line_tracing
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(line_tracing_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_tracing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/line_tracing
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(line_tracing_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_tracing)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_tracing\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/line_tracing
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(line_tracing_generate_messages_py std_msgs_generate_messages_py)
endif()
