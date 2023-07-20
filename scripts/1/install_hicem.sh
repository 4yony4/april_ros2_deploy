curl -u "vdJC317b1QvRBnu:24R8zQ" -H "X-Requested-With: XMLHttpRequest" "https://cloud.piap.pl/public.php/webdav/hicem_core.deb" -o hicem_core.deb
sudo dpkg -i hicem_core.deb


cd ${project_path}/extra/
git clone --depth 1 --branch 4.0.1 https://github.com/BehaviorTree/BehaviorTree.CPP.git
cd BehaviorTree.CPP
mkdir build; cd build
cmake ..
make
sudo make install

cd ${project_path}/extra/
git clone --depth 1 --branch v1.44.2 https://github.com/libuv/libuv.git
cd libuv
mkdir build; cd build
cmake ..
make -j $(nproc)
sudo make install

rosdep install --from-paths src --ignore-src -r -y

cd ${project_path}/ROS/april_ros/src
git clone git@github.com:aprilprojecteu/diagnostic_module.git
git clone git@github.com:aprilprojecteu/ohaus_defender_msgs.git
git clone git@github.com:UniversalRobots/Universal_Robots_ROS_Driver.git
git clone git@github.com:aprilprojecteu/ur_policy_control.git

cd ${project_path}/ROS/april_ros/src
git clone git@github.com:aprilprojecteu/hicem_april.git
cd ..
source /opt/ros/noetic/setup.bash
rosdep install --from-paths src --ignore-src -r -y
#catkin build --cmake-args -DCMAKE_BUILD_TYPE=Release

catkin_make install