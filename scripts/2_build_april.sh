current_dir="$PWD"

source ros2_init.sh

cd ../ROS2/SEM_SIM_IIT/

colcon build --packages-skip rgb_camera yarp_ros_interfaces yarp_ros_proxy