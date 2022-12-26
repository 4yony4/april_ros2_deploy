echo "Builing and Installing APRIL_ROS"

#source /opt/ros/galactic/setup.bash

cd ../../ROS2/SEM_SIM_IIT/src
rm .rosinstall
rm -rf dvs_msgs
rm -rf prophesee_event_msgs
rm -rf event_array_msgs
rm -rf metavision_ros_driver
rm -rf april_msgs
rm -rf event_ros_tools

cd ../
#wstool init src april_ros2.rosinstall

colcon build --packages-skip rgb_camera yarp_ros_interfaces yarp_ros_proxy
