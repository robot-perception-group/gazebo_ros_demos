#!/bin/bash
speed=$1
rostopic pub -1 /rrbot/motor0_velocity_controller/command std_msgs/Float64 "data: $speed" &
rostopic pub -1 /rrbot/motor1_velocity_controller/command std_msgs/Float64 "data: $speed" &
rostopic pub -1 /rrbot/motor2_velocity_controller/command std_msgs/Float64 "data: $speed" &
rostopic pub -1 /rrbot/motor3_velocity_controller/command std_msgs/Float64 "data: $speed" &
