# IIT - APRIL SCRIPTS FOR DEPLOYMENT

# Table of Contents  

# PRE-REQUISITES

IMPORTANT: Before trying to run the SCRIPTS, you have to add an SSH pair both to the gitlab.iit cognitive as well as in github.com/april
* [IIT GITLAB](https://gitlab.iit.it/cognitiveInteraction)
* [APRIL GITHUB](https://github.com/aprilprojecteu/)

Without the SSH key pairs, it wont be able to download all the repos and it will fail.

# SCRIPTS DESCRIPTION
## 1_first_time_april_total_deploy.sh

Will run all necessary configuration to download ROS NOETIC and ROS GALACTIC (the ros version we are using) as well as YARP. 

It will also clone all necessary repos and create folders "~/Dev2/ROS, ~/Dev2/ROS2, ~/Dev2/yarp".

In ~/Dev2/ROS all ROS1 noetic code will be stored.
In ~/Dev2/ROS2 all ROS2 galactic code will be stored.
In ~/Dev2/yarp all Yarp code will be stored. Here we will have all YARP programs running.

## 2_yarp_ros2_bridge_deps_build.sh
Before building the bridge, you may need to rebuild April_Ros2 and yarp_ros_proxy so it can identify the new custom messages in our bridge.

## 3_yarp_ros2_bridge_build.sh
Will build the Bridge. IF THERE IS AN ERROR, try executing the previous script 2_yarp_ros2_bridge_deps_build.sh.

## 4_yarp_ros2_bridge_deploy.sh
Will run the bridge. After few seconds a message from YARP should arrive to the ROS2 node. For now its a simple custom message named "Yarpinfo.msg" with a string.