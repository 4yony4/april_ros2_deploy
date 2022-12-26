echo "BUILDING THE BRIDGE"
echo "DELETING OLD DATA"

current_path="$PWD"
path_to_one="$PWD"/1
path_to_two="$PWD"/2

cd ~/Dev2/ROS2/april_ros2
rm -rf install
rm -rf build
rm -rf log

cd ~/Dev2/ROS2/april_bridge/
rm -rf install
rm -rf build
rm -rf log

cd ~/Dev2/ROS/yarp_ros_ws/
rm -rf build_isolated
rm -rf devel_isolated
rm -rf install_isolated

source $path_to_two/yarp_rosmsg_build.sh

echo "BUILDING ROS1 ROS2 INTERFACES"

cd "$path_to_one"
#BUILD ROS2 DEPENDENCIES AND BUILD APRIL_ROS2
gnome-terminal --title="BUILDING APRIL_ROS2" --tab -- bash -c "cd $current_path; source ros2_init.sh; cd $path_to_one; source april_ros_build.sh; exec bash -i"

#BUILD ROS1 YARP_ROS_WS
gnome-terminal --title="BUILDING ROS1 YARP_ROS_WS" --tab -- bash -c "cd $current_path; source ros1_init.sh; cd $path_to_one; source yarp_ros_ws_build.sh; exec bash -i"

cd "$current_path"