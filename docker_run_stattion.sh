#!/bin/bash                 

HERE=$(pwd)
docker run \
    -w /stattion_pub \
    -it -u root --privileged=true \
    --rm \
    --name=Cicv_stattion \
    --network=host \
    -e ROS_MASTER_URI=http://localhost:11311 \
    cicv_hbq:latest \
    /bin/bash 

