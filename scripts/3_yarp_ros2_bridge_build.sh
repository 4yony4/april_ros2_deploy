#. ros2_init.sh
current_path="$PWD"
cd ${current_path}/..
project_path="$PWD"

#echo ${project_path}

cd ${project_path}/ROS2/SEM_SIM_IIT
#rm -rf install
#rm -rf build
#rm -rf log

export ROS1_INSTALL_PATH=/opt/ros/noetic
export ROS2_INSTALL_PATH=/opt/ros/galactic
source ${ROS1_INSTALL_PATH}/setup.bash
source ${ROS2_INSTALL_PATH}/setup.bash

#source ${project_path}/ROS/yarp_ros_ws/install_isolated/setup.bash
source ${project_path}/ROS/april_ros/install_isolated/setup.bash

source ${project_path}/ROS2/SEM_SIM_IIT/install/setup.bash
echo $CMAKE_PREFIX_PATH | tr ':' '\n'

cd ${project_path}/ROS2/april_bridge/
colcon build --symlink-install --packages-select ros1_bridge --cmake-force-configure

cd $current_path