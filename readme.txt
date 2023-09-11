SURFACE RELAY

Steps to using this Dockerfile:
[1] build the docker
./build_docker_surface_relay

[2] make sure phidget sensors are plugged in to the phidget hub, and that the phidget hub is plugged into the jetson orin via usb connection before starting the docker
Sensor -------- Phidget hub port
Temperature --- hub port 0
Amperature ---- hub port 1
Voltage ------- hub port 2

Note: amperage sensor has 2 data ports to the phidget hub - use the bottom data port [AC RMS]

[3] run the dockerfile
./run_docker_surface_relay

[4] within the docker navigate to the correct folder and start the monitoring system
cd src/surface_relay/surface_relay
./run_surface_relay_health_monitoring.sh
