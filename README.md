# Gazebo ROS Demos

* Original Author: Dave Coleman <davetcoleman@gmail.com>
* Modified by: Eric Price <eric.price@ifr.uni-stuttgart.de>
* License: GNU General Public License, version 3 (GPL-3.0)

Example robots and code for interfacing Gazebo with ROS -- multicopter edition

## Requirements

* ROS Noetic: (http://wiki.ros.org/noetic/Installation/Ubuntu) - use ros-noetic-desktop-full
* Additional ROS packages:

      apt-get install ros-noetic-controller-interface ros-noetic-controller-manager ros-noetic-controller-manager-msgs ros-noetic-control-toolbox ros-noetic-cv-camera ros-noetic-desktop-full ros-noetic-diff-drive-controller ros-noetic-effort-controllers ros-noetic-forward-command-controller ros-noetic-joint-limits-interface ros-noetic-joint-state-controller ros-noetic-marker-msgs ros-noetic-mrpt2 ros-noetic-mrpt-msgs ros-noetic-octomap-msgs ros-noetic-octomap-ros ros-noetic-perception ros-noetic-position-controllers ros-noetic-stage ros-noetic-stage-ros ros-noetic-transmission-interface

* Make a catkin workspace and put this repository in the src subfolder (http://wiki.ros.org/catkin/Tutorials/create_a_workspace)

## Quick Start

    roslaunch rrbot_gazebo rrbot_world.launch

Start the engines:

    speed=300;
    rostopic pub -1 /rrbot/motor0_velocity_controller/command std_msgs/Float64 "data: $speed" &
    rostopic pub -1 /rrbot/motor1_velocity_controller/command std_msgs/Float64 "data: $speed" &

## Further reading:

* Learn to modify the robot with the URDF tutorial (http://gazebosim.org/tutorials/?tut=ros_urdf) See also file rrbot_description/urdf/rrbot.xacro within this repository 
* Tutorial about available sensors for ROS/Gazebo (http://gazebosim.org/tutorials?tut=ros_gzplugins) - especially P3D, camera and IMU
* Writing a ROS subscriber and/or publisher in C++ and Python (Find it on http://wiki.ros.org/ROS/Tutorials )

## Develop and Contribute

We welcome any contributions to this repo and encourage you to fork the project then send pull requests back to this parent repo. Thanks for your help!
