current_dir="$PWD"

source ros2_init.sh
cd ../ROS2/SEM_SIM_IIT/
source install/setup.bash

ros2 launch sim sim.launch.py

cd $current_dir