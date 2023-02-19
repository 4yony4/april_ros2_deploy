echo "Builing and Installing APRIL_ROS ROS1 Dependency Packages"
source /opt/ros/noetic/setup.bash

cd ../../ROS/april_ros
catkin_make_isolated --install
catkin_make install
#catkin_make
#source ./devel_isolated/setup.bash

