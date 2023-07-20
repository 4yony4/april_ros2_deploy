current_path="$PWD"
path_to_three="$PWD"/3
project_path=${current_path}/..

gnome-terminal --title="BUILDING ROS BRIDGE" --tab -- bash -c "current_path="$PWD"; project_path=${current_path}/..; cd $current_path/3; source ros_bridge_build.sh; exec bash -i"