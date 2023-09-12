#!/bin/bash

# Purpose of this script is to run the surface relay docker

# Let user know the script is starting
echo
echo Make sure the phidget sensors are in the following configuration with the phidget hub, then hit enter:
echo Temperature -- hub port 0
echo Amperage ----- hub port 1
echo Voltage ------ hub port 2
echo
echo Note: amperage sensor has 2 data ports to the phidget hub - use the bottom data port [AC RMS]
echo
read -p ""

docker run -it --privileged -v ~/docker_projects/docker_surface_relay/data_storage_sensors:/opt/ros2_ws/src/surface_relay/surface_relay/data_storage_sensors surface_relay
