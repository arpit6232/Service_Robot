# Udacity_Map_My_World

![Output](https://github.com/arpit6232/Service_Robot/blob/master/ezgif.com-crop.gif)

### Launch

- Visit the ![RTAB map github page](https://github.com/introlab/rtabmap_ros) and install the RTAB map ROS package
- Then clone this repository into your src folder of your catkin workspace
- Open the mapping.launch in the launch folder using gedit or vim(your preferred editor)
- Change the topic names in the <arg> commands to the topic names that are published by your robot. You can find these names in the urdf (.gazebo) file
- Open three terminal windows
- Run `roslaunch my_robot warehouse_world.launch` in the first terminal window to open the Gazebo world with robot and RViz
- Run `roslaunch my_robot mapping.launch` in the second terminal window
- Select *map* in the Rviz Global Options as the */map* topic is now available
- Next, select the *MapCloud* topic to display the 3D cloud of the environment visible to the robot in rviz
- In the third terminal, you can then use *teleop* by running `rosrun teleop_twist_keyboard teleop_twist_keyboard.py` or by running `roslaunch turtlebot_teleop keyboard_teleop.launch`
- Explore the world now to build a map
- Best Practices: Move slowly for the map to build to create a map with low no of passes. You can maximize the loop closures by going over similar paths two or three times
 - After exploring the entire map, close all the terminals
 - Open the RTAB map database viewer. The rtabmap-databaseViewer is a great tool for exploring your database when you are done generating it. It is isolated from ROS and allows for complete analysis of your mapping session. This is how you will check for loop closures, generate 3D maps for viewing, extract images, check feature mapping rich zones, and much more
 - Run `rtabmap-databaseViewer ~/.ros/rtabmap.db` 
 - Once open, we will need to add some windows to get a better view of the relevant information, so:
        - Say yes to using the database parameters
        - View -> Constraint View
        - View -> Graph View 
