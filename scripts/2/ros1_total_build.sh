source /opt/ros/noetic/setup.bash

cd ${project_path}/ROS/april_ros
catkin_make_isolated --install
catkin_make install