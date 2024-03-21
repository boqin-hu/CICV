#!/bin/bash                 

HERE=$(pwd)
docker run \
    -v $HERE/catkin_ws:/workspace \
    -w /workspace \
    -it -u root --privileged=true \
    --rm \
    --name=Cicv_planning \
    --network=host \
    -e ROS_MASTER_URI=http://localhost:11311 \
    ab584eeba99e \
    /bin/bash 

