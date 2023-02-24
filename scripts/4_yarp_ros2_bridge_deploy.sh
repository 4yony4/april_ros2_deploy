current_path="$PWD"
project_path=${current_path}/..

#START YARP SERVER
gnome-terminal --title="YARP SERVER" --tab -- bash -c "export ROS_MASTER_URI=http://localhost:11311; yarpserver --ros; exec bash -i"

#START ROSCORE (ROS1 SERVER)
gnome-terminal --title="ROSCORE ROS1 Server" --tab -- bash -c "source /opt/ros/noetic/setup.bash; roscore; exec bash -i"

#START YARP TALKER
gnome-terminal --title="YARP TALKER" --tab -- bash -c "sleep 2; cd ../yarp/yarp_ros_talker/build/;./talker; exec bash -i"

#START ROS1 <---> ROS2 BRIDGE
gnome-terminal --title="ROS1 <--> ROS2 Bridge" --tab -- bash -c "current_path="$PWD"; project_path=${current_path}/..; source ros1_init.sh; source ros2_init.sh; cd ../ROS2/april_bridge;source install/local_setup.bash;export ROS_MASTER_URI=http://localhost:11311; ros2 run ros1_bridge dynamic_bridge; exec bash -i"

#START YARP TALKER
gnome-terminal --title="SEM_SIM_IIT RECEIVER" --tab -- bash -c "project_path=${current_path}/..;sleep 2;source $current_path/ros2_init.sh;cd ../ROS2/SEM_SIM_IIT;source install/local_setup.sh;ros2 run yarp_ros_proxy yrp_main; exec bash -i"



