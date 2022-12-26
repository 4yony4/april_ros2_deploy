
current_path="$PWD"
path_to_one="$PWD"/1

cd "$path_to_one"
source dirs_make.sh

#Install all environments
cd "$path_to_one"
source ros_noetic_install.sh
cd "$path_to_one"
source ros_galactic_install.sh
cd "$path_to_one"
source yarp_install.sh


cd "$path_to_one"
source clone_repos.sh

cd "$path_to_one"
source ros2_deps_build.sh


cd "$path_to_one"
#BUILD ROS2 DEPENDENCIES AND BUILD APRIL_ROS2
gnome-terminal --title="BUILDING APRIL_ROS2" --tab -- bash -c "cd $current_path; source ros2_init.sh; cd $path_to_one; source april_ros_build.sh; exec bash -i"

#BUILD ROS1 YARP_ROS_WS
gnome-terminal --title="BUILDING ROS1 YARP_ROS_WS" --tab -- bash -c "cd $current_path; source ros1_init.sh; cd $path_to_one; source yarp_ros_ws_build.sh; exec bash -i"

#BUILD YARP DEMO APPS
gnome-terminal --title="BUILD YARP DEMO APPS" --tab -- bash -c "cd $path_to_one; source yarp_build.sh; exec bash -i"

cd "$current_path"