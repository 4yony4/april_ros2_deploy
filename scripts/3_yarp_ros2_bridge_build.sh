#. ros2_init.sh
current_path="$PWD"
cd ${current_path}/..
project_path="$PWD"

#echo ${project_path}

cd ${project_path}/ROS2/april_bridge
rm -rf install
rm -rf build
rm -rf log

export ROS1_INSTALL_PATH=/opt/ros/noetic
export ROS2_INSTALL_PATH=/opt/ros/galactic
source ${ROS1_INSTALL_PATH}/setup.bash
source ${ROS2_INSTALL_PATH}/setup.bash

#source ${project_path}/ROS/extra/install_isolated/setup.bash
source ${project_path}/ROS/april_ros/install_isolated/setup.bash
source ${project_path}/ROS2/vision_msgs/install/local_setup.bash
source ${project_path}/ROS2/april_msgs/install/local_setup.bash

#source ${project_path}/ROS/april_ros/install_isolated/setup.bash
#source ${project_path}/ROS2/april_msgs/install/setup.bash

#source ${project_path}/ROS/yarp_ros_ws/install_isolated/setup.bash
#source ${project_path}/ROS/april_ros/install/setup.bash
#source ${project_path}/ROS/april_ros/install/setup.bash

#source ${project_path}/ROS2/SEM_SIM_IIT/install/setup.bash
#source ${project_path}/ROS2/ament_lint/install/setup.bash
#source ${project_path}/ROS2/april_msgs/install/setup.bash
#source ${project_path}/ROS2/common_interfaces/install/setup.bash
#source ${project_path}/ROS2/image_common/install/setup.bash
#source ${project_path}/ROS2/vision_msgs/install/setup.bash
#source ${project_path}/ROS2/vision_opencv/install/setup.bash
echo $CMAKE_PREFIX_PATH | tr ':' '\n'

cd ${project_path}/ROS2/april_bridge/
colcon build --symlink-install --packages-select ros1_bridge --cmake-force-configure

cd $current_path