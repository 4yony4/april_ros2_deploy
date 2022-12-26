echo "GENERATING YARP MSG IN ROS"

current_path_2="$PWD"

origin_path=~/Dev2/yarp/yarp_ros_talker/rosmsgs
for file in "$origin_path"/*.msg
do
  #echo "$entry"
  filename_only=$(basename "$file" .msg)
  echo "Processing $filename_only to yarp for generation"
  sudo cp $file /usr/local/include
  cd /usr/local/include
  sudo yarpidl_rosmsg "$filename_only.msg"
  sudo cp "$filename_only.h" $origin_path/..
done

cd $current_path_2