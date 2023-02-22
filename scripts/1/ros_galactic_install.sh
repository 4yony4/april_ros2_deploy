echo "INSTALLING ROS GALACTIC (ROS2) IF NOT PRESENT"

locale  # check for UTF-8

sudo apt -y update && sudo apt -y install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

locale  # verify settings

apt-cache policy | grep universe

sudo apt -y install software-properties-common
sudo add-apt-repository universe

sudo apt -y update && sudo apt -y install curl gnupg lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt -y update
sudo apt -y upgrade
sudo apt -y install ros-galactic-ros-base

sudo apt-get -y install python3-wstool
sudo apt -y install python3-colcon-common-extensions
sudo apt-get -y install ros-galactic-cv-bridge
sudo apt-get -y install ros-galactic-vision-opencv
sudo apt-get -y install ros-galactic-image-common
sudo apt-get -y install ros-galactic-ament-lint
#sudo apt-get -y install ros-galactic-vision-msgs

echo "INSTALL OPENCV AND OPENCV CONTRIB FROM SOURCE"
sudo apt-get -y install libeigen3-dev libboost-all-dev libceres-dev

#cd ~/Dev2/extra
#git clone https://github.com/opencv/opencv/
#git clone https://github.com/opencv/opencv_contrib/
#mkdir opencv/build/
#cd opencv/build/
#cmake -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules ..
#make -j8
#sudo make install

#sudo apt-get -y install python-rosinstall