current_path="$PWD"

#START YARP SERVER
gnome-terminal --title="YARP SERVER" --tab -- bash -c "export ROS_MASTER_URI=http://localhost:11311; yarpserver --ros; exec bash -i"

#START ROSCORE (ROS1 SERVER)
gnome-terminal --title="ROSCORE ROS1 Server" --tab -- bash -c "source /opt/ros/noetic/setup.bash; roscore; exec bash -i"

#START YARP TALKER
gnome-terminal --title="YARP TALKER" --tab -- bash -c "sleep 2; cd ~/Dev2/yarp/yarp_ros_talker/build/;./talker; exec bash -i"

#START ROS1 <---> ROS2 BRIDGE
gnome-terminal --title="ROS1 <--> ROS2 Bridge" --tab -- bash -c "cd ~/Dev2/ROS2/april_bridge;source install/local_setup.bash;export ROS_MASTER_URI=http://localhost:11311; ros2 run ros1_bridge dynamic_bridge; exec bash -i"

#START YARP TALKER
gnome-terminal --title="APRIL ROS2 RECEIVER" --tab -- bash -c "sleep 2;source $current_path/ros2_init.sh;cd ~/Dev2/ROS2/april_ros2;source install/local_setup.sh;ros2 run yarp_ros_proxy yrp_main; exec bash -i"



