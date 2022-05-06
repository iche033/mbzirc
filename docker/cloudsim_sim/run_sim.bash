#!/usr/bin/env bash

. /opt/ros/galactic/setup.bash
. ~/mbzirc_ws/install/setup.sh

mkdir -p /tmp/ign/logs

export ROS_LOG_DIR=/tmp/ign/logs/ros
ros2 launch ros_ign_gazebo ign_gazebo.launch.py ign_args:="-v 4 -r $@"
