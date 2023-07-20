echo "Installing YARP in the system"

sudo sh -c 'echo "deb http://www.icub.eu/ubuntu `lsb_release -cs` contrib/science" > /etc/apt/sources.list.d/icub.list'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 57A5ACB6110576A6
sudo apt update
sudo apt -y install yarp

echo "IMPORTANT! WE STILL HAVE TO ADD A BUILDING PROCESS FOR THE CUSTOM YARP ROS MSG FILES TO BE INSERTED IN THE YARP/ROSMSG FOLDER"