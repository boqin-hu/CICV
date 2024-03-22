#!/bin/bash                 

HERE=$(pwd)
docker run \
    -w /VtdRosConnector \
    -it -u root --privileged=true \
    --rm \
    --name=Cicv_ros2vtd \
    --network=host \
    -e ROS_MASTER_URI=http://localhost:11311 \
    cicv_hbq:latest \
    /bin/bash 

