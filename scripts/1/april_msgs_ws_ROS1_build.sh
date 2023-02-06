current_path="$PWD"
cd ${current_path}/../..
project_path="$PWD"

source /opt/ros/noetic/setup.bash

cd ${project_path}/ROS/april_ros
catkin_make_isolated --install
