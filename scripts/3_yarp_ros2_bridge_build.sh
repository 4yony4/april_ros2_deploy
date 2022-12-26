#. ros2_init.sh
current_path="$PWD"

cd ~/Dev2/ROS2/april_bridge
rm -rf install
rm -rf build
rm -rf log

export ROS1_INSTALL_PATH=/opt/ros/noetic
export ROS2_INSTALL_PATH=/opt/ros/galactic
source ${ROS1_INSTALL_PATH}/setup.bash
source ${ROS2_INSTALL_PATH}/setup.bash
. ~/Dev2/ROS/yarp_ros_ws/install_isolated/setup.bash
. ~/Dev2/ROS2/april_ros2/install/setup.bash
echo $CMAKE_PREFIX_PATH | tr ':' '\n'
cd ~/Dev2/ROS2/april_bridge/
colcon build --symlink-install --packages-select ros1_bridge --cmake-force-configure

cd $current_path