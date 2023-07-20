# IIT - APRIL SCRIPTS FOR DEPLOYMENT

# Table of Contents  

# PRE-REQUISITES

IMPORTANT: Before trying to run the SCRIPTS, you have to add an SSH pair both to the gitlab.iit cognitive as well as in github.com/april
* [IIT GITLAB](https://gitlab.iit.it/cognitiveInteraction)
* [APRIL GITHUB](https://github.com/aprilprojecteu/)

Without the SSH key pairs, it wont be able to download all the repos and it will fail.

# IMPORTANT!!!!!
1) ALL MSGS that will come from YARP DOCKER HAVE TO GO IN THE /ROS/APRIL_ROS/YARP/MSG folder, and then it has to be related in the /ROS2/APRIL_MSGS/map_rules.xml. Example: /yarp/msg/yrpmsg1.msg <----> /april_msgs/msgs/yrpmsg1.msg. The results for this will be seen at the end of script 3. If it doesn't, then something is failing.

2) ALL MSGS CANNOT BE NAMED WITH CERTAIN CHARACTERS. Please avoid using "-" or any other non-alphanumeric characters for the topics and etc. It will fail if ROS2 regex is not respected.

# SCRIPTS DESCRIPTION
## 1_first_time_april_total_deploy.sh

Will run all necessary configuration to download ROS NOETIC and ROS GALACTIC (the ros version we are using) as well as YARP. 

It will also clone all necessary repos and create folders "~/Dev2/ROS, ~/Dev2/ROS2

In ~/Dev2/ROS all ROS1 noetic code will be stored.
In ~/Dev2/ROS2 all ROS2 galactic code will be stored.


## 2_yarp_ros2_bridge_deps_build.sh
This script will build ROS1 and ROS2 completely, BEFORE it will be used to create the bridge (script 3).


## 3_yarp_ros2_bridge_build.sh
Will build the Bridge. IF THERE IS AN ERROR, try executing the previous script 2_yarp_ros2_bridge_deps_build.sh.

## 4_yarp_ros2_bridge_deploy.sh
RUNS the ROSCORE, ROS1 <-------> ROS2 bridge and SEM_SIM Listener in ROS2.