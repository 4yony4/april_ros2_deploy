
current_path="$PWD"
path_to_one="$PWD"/1
project_path=${current_path}/..

cd "$path_to_one"
source dirs_make.sh

#Install all environments
if [ -d "/opt/ros/noetic" ] 
then
    echo "ROS noetic already installed" 
else
    echo "Installing ROS noetic"
    cd "$path_to_one"
    source ros_noetic_install.sh
fi

if [ -d "/opt/ros/galactic" ] 
then
    echo "ROS galactic already installed" 
else
    echo "Installing ROS galactic"
    cd "$path_to_one"
    source ros_galactic_install.sh
fi

if [ -d "/usr/local/share/yarp" ] 
then
    echo "YARP already installed" 
else
    echo "Installing YARP"
    cd "$path_to_one"
    source yarp_install.sh
fi



cd "$path_to_one"
source clone_repos.sh

cd "$path_to_one"
#source ros2_deps_build.sh

cd "$path_to_one"
#source ros1_deps_build.sh


#cd "$current_path"
#echo $PWD
#BUILD ROS2 DEPENDENCIES AND BUILD APRIL_ROS2 & ROS2 APRIL_MSGS
gnome-terminal --title="BUILDING APRIL_ROS2" --tab -- bash -c "current_path="$PWD"; 
    path_to_one="$PWD"/1; project_path=${current_path}/..; cd "$path_to_one"; source ros2_deps_build.sh;
    cd $current_path; source ros2_init.sh; cd $path_to_one; source april_ros2_build.sh;
    cd $path_to_one; source april_msgs_ws_ROS2_build.sh; exec bash -i"

#BUILD ROS1 APRIL_ROS1
##gnome-terminal --title="BUILDING ROS1 APRIL_ROS1" --tab -- bash -c "cd $current_path; source ros1_init.sh; cd $path_to_one; source april_ros1_build.sh; exec bash -i"

#BUILD ROS1 APRIL_MSGS + APRIL_ROS1
gnome-terminal --title="BUILDING ROS1 APRIL_MSGS & APRIL_ROS" --tab -- bash -c "current_path="$PWD"; 
    path_to_one="$PWD"/1; project_path=${current_path}/..; cd "$path_to_one"; source ros1_deps_build.sh;
    cd $current_path; source ros1_init.sh; cd $path_to_one; source april_msgs_ws_ROS1_build.sh; exec bash -i"

#BUILD ROS2 APRIL_MSGS
#gnome-terminal --title="BUILDING ROS2 APRIL_MSGS" --tab -- bash -c "cd $current_path; source ros2_init.sh; cd $path_to_one; source april_msgs_ws_ROS2_build.sh; exec bash -i"
#gnome-terminal --title="BUILDING ROS2 APRIL_MSGS" --tab -- bash -c "current_path="$PWD"; 
#    path_to_one="$PWD"/1; project_path=${current_path}/..; cd "$path_to_one"; source ros2_deps_build.sh;
#     cd $path_to_one; source april_msgs_ws_ROS2_build.sh; exec bash -i"

#BUILD YARP DEMO APPS
gnome-terminal --title="BUILD YARP DEMO APPS" --tab -- bash -c "path_to_one="$PWD"/1; cd $path_to_one; source yarp_build.sh; exec bash -i"

cd "$current_path"