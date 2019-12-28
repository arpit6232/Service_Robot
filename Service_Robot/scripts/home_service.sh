#!/bin/sh
xterm -hold -e " roslaunch turtlebot_gazebo arpit_world.launch " &
sleep 5

xterm -hold -e " roslaunch turtlebot_gazebo amcl_demo_arpit.launch " &
sleep 5

xterm -hold -e " roslaunch turtlebot_rviz_launchers view_navigation_arpit.launch " &
sleep 5

xterm -hold -e " roslaunch pick_objects double_objects_picking.launch " &
sleep 5

xterm -hold -e " rosrun add_markers add_markers_odom"
