echo "Builing and Installing APRIL_ROS2"

#source /opt/ros/galactic/setup.bash
#current_path="$PWD"
#cd ${current_path}/../..
#project_path="$PWD"
#echo "!!!!!!!!!!!!!!!!  ------->>>>>>>>>>>>   ${project_path}"
source ${project_path}/scripts/ros2_init.sh


cd ${project_path}/ROS2/SEM_SIM_IIT/src
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
