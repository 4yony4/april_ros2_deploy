current_path="$PWD"
path_to_one="$PWD"/1
path_to_two="$PWD"/2

cd ${current_path}/..
project_path="$PWD"

source /opt/ros/noetic/setup.bash
source ${project_path}/ROS/april_ros/devel_isolated/setup.bash


