echo "CLONNING ALL REPOS !!!! IMPORTANT TO ADD SSH KEY TO BOTH APRILPROJECTEU AND IIT COGNITIVE"
#current_path="$PWD"
#cd ${current_path}/../..
#project_path="$PWD"

cd ${project_path}/ROS2
#git clone --branch galactic-dev https://github.com/YonyIIT/april_ros2.git
#git clone --branch galactic https://github.com/ros2/common_interfaces.git
#git clone --branch galactic https://github.com/ros-perception/vision_opencv.git
#git clone --branch galactic https://github.com/ros-perception/image_common.git
#git clone --branch galactic https://github.com/ament/ament_lint.git

#git clone --branch galactic git@github.com:aprilprojecteu/april_msgs.git
#git clone --branch galactic https://github.com/YonyIIT/april_msgs.git
git clone --branch galactic git@github.com:YonyIIT/april_msgs.git
git clone --branch galactic-dev git@github.com:aprilprojecteu/SEM_SIM_IIT.git
#git clone --branch galactic https://github.com/ros2/common_interfaces.git
#git clone --branch galactic https://github.com/ros-perception/vision_opencv.git
#git clone --branch galactic https://github.com/ros-perception/image_common.git
#git clone --branch galactic https://github.com/ament/ament_lint.git
git clone --branch galactic https://github.com/YonyIIT/vision_msgs.git
#git clone --branch galactic https://github.com/ros/diagnostics.git
#git clone --branch galactic https://github.com/ros-perception/vision_msgs.git

cd ${project_path}/ROS2/april_bridge/src
git clone --branch galactic https://github.com/ros2/ros1_bridge.git

cd ${project_path}/ROS/april_ros/src
#git clone https://github.com/YonyIIT/yarp_ros_ws.git
#git clone --branch galactic https://github.com/YonyIIT/april_msgs.git
git clone --branch galactic git@github.com:YonyIIT/april_msgs.git
#git clone --branch galactic git@github.com:aprilprojecteu/april_msgs.git
#git clone --branch noetic git@github.com:aprilprojecteu/april_msgs.git
git clone --branch noetic https://github.com/YonyIIT/vision_msgs.git
git clone --branch main https://github.com/YonyIIT/yarp_msgs_ros1.git yarp
#git clone --branch noetic-devel https://github.com/ros/diagnostics.git



cd ${project_path}/yarp
#git clone https://github.com/YonyIIT/vojext-hpe.git
git clone https://github.com/YonyIIT/yarp_ros_talker.git
#git clone https://github.com/YonyIIT/yarp_ros_talker.git

