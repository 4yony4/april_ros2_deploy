source /opt/ros/galactic/setup.bash

cd ${project_path}/ROS2/vision_msgs
colcon build
source install/setup.bash

cd ${project_path}/ROS2/april_msgs
colcon build
source install/setup.bash

cd ${project_path}/ROS2/SEM_SIM_IIT
rm -rf build
rm -rf install
rm -rf log

#cd ${project_path}/ROS2/SEM_SIM_IIT/src
#rm .rosinstall
#rm -rf dvs_msgs
#rm -rf prophesee_event_msgs
#rm -rf event_array_msgs
#rm -rf metavision_ros_driver
#rm -rf april_msgs
#rm -rf event_ros_tools

#cd ../
#wstool init src april_ros2.rosinstall

#colcon build --packages-skip rgb_camera yarp_ros_interfaces yarp_ros_proxy
colcon build --packages-skip rgb_camera yarp_ros_interfaces