#!/bin/sh
xterm -hold -e " roslaunch turtlebot_gazebo turtlebot_world.launch " &
sleep 5

xterm -hold -e " roslaunch turtlebot_gazebo gmapping_demo.launch " &
sleep 5

xterm -hold -e "  roslaunch turtlebot_rviz_launchers view_navigation.launch " &
sleep 5

xterm -hold -e " roslaunch turtlebot_teleop keyboard_teleop.launch "