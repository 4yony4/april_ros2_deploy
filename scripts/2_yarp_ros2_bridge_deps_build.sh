echo "BUILDING THE BRIDGE"
echo "DELETING OLD DATA"

current_path="$PWD"
path_to_one="$PWD"/1
path_to_two="$PWD"/2

cd ${current_path}/..
project_path="$PWD"



cd ${project_path}/ROS2/april_msgs/
rm -rf install
rm -rf build
rm -rf log


cd ${project_path}/ROS2/april_bridge/
rm -rf install
rm -rf build
rm -rf log


cd ${project_path}/ROS/april_ros/
rm -rf build_isolated
rm -rf devel_isolated
rm -rf install_isolated
rm -rf install
rm -rf build
rm -rf log

#source $path_to_two/yarp_rosmsg_build.sh

#echo "BUILDING ROS1 ROS2 INTERFACES"

cd "$path_to_one"
#BUILD ROS2 DEPENDENCIES AND BUILD SEM_SIM_IIT
#gnome-terminal --title="BUILDING SEM_SIM_IIT" --tab -- bash -c "current_path="$PWD"; path_to_one="$PWD"/1; project_path=${current_path}/..; cd $current_path; source ros2_init.sh; cd $path_to_one; source april_ros2_build.sh; exec bash -i"

#BUILD ROS1 APRIL_MSGS
#gnome-terminal --title="BUILDING ROS1 APRIL_MSGS & APRIL_ROS" --tab -- bash -c "current_path="$PWD"; path_to_one="$PWD"/1; project_path=${current_path}/..; cd $current_path; source ros1_init.sh; cd $path_to_one; source april_msgs_ws_ROS1_build.sh; exec bash -i"

#BUILD ROS2 APRIL_MSGS
#gnome-terminal --title="BUILDING ROS2 APRIL_MSGS" --tab -- bash -c "current_path="$PWD"; path_to_one="$PWD"/1; 
#project_path=${current_path}/..; cd $current_path; source ros2_init.sh; cd $path_to_one; 
#source april_msgs_ws_ROS2_build.sh; source ros2_deps_build.sh; source april_ros2_buid.sh; exec bash -i"

#BUILD ROS1 TOTAL
gnome-terminal --title="BUILDING ROS1 TOTAL" --tab -- bash -c "current_path="$PWD"; path_to_two="$PWD"/2; project_path=${current_path}/..; cd $path_to_two; source ros1_total_build.sh; exec bash -i"

gnome-terminal --title="BUILDING ROS2 TOTAL" --tab -- bash -c "current_path="$PWD"; path_to_two="$PWD"/2; project_path=${current_path}/..; cd $path_to_two; source ros2_total_build.sh; exec bash -i"


cd "$current_path"