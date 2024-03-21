#!/bin/bash                 

HERE=$(pwd)
docker run \
    -w /dpi \
    -it -u root --privileged=true \
    --rm \
    --name=Cicv_dpi \
    --network=host \
    -e ROS_MASTER_URI=http://localhost:11311 \
    ab584eeba99e \
    /bin/bash 

