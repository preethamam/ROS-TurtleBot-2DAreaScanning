cmake_minimum_required(VERSION 2.8.3)
project(line_tracing)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  cv_bridge
  image_transport
  roscpp
  sensor_msgs
  std_msgs
)

find_package(OpenCV REQUIRED)


################################################
## Declare ROS messages, services and actions ##
################################################
add_message_files(
  FILES
  theta_stamped.msg
  cmd_stamped.msg
  hsv_thresh.msg
)

## Generate added messages and services with any dependencies listed here
generate_messages(DEPENDENCIES std_msgs)


################################################
## Declare ROS dynamic reconfigure parameters ##
################################################


###################################
## catkin specific configuration ##
###################################
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES cv_bridge_cpp
#  CATKIN_DEPENDS cv_bridge image_transport roscpp sensor_msgs std_msgs
#  DEPENDS system_lib
)

###########
## Build ##
###########


## Specify additional locations of header files
## Your package locations should be listed before other locations

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
  ${OpenCV_INCLUDE_DIRS}
)

add_executable(line_tracing_node src/line_tracing_node.cpp)
add_dependencies(line_tracing_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(line_tracing_node ${catkin_LIBRARIES} ${OpenCV_LIBS})


add_executable(area_detecting_node src/area_detecting_node.cpp)
add_dependencies(area_detecting_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(area_detecting_node ${catkin_LIBRARIES} ${OpenCV_LIBS})

#############
## Install ##
#############


#############
## Testing ##
#############
