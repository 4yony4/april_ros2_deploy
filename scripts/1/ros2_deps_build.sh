echo "Builing and Installing APRIL_ROS ROS2 Dependency Packages"
source /opt/ros/galactic/setup.bash

cd ../../ROS2/common_interfaces
colcon build
source ./install/setup.bash

cd ../../ROS2/vision_opencv
colcon build
source ./install/setup.bash

cd ../../ROS2/image_common
colcon build
source ./install/setup.bash

cd ../../ROS2/ament_lint
colcon build
source ./install/setup.bash

cd ../../ROS2/vision_msgs
colcon build
source ./install/setup.bash

cd ../../ROS2/april_msgs
colcon build
source ./install/setup.bash
