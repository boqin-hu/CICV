启动步骤：
A.先安说明启动VTD软件（直到camera窗口能看到车辆）；
B.1.执行./docker_run_ros2vtd.sh，2.source install/setup.bash; 3.roslaunch rosToVtd rosToVtd.launch (启动ros与vtd的通讯程序)
C.1.执行./docker_run_vtd2ros.sh，2.source install/setup.bash; 3.roslaunch vtdToRos vtdToRos.launch (启动vtd与ros的通讯程序)
D.1.执行./docker_run_dpi.sh，2../dpi_ros_apps-v0.0.0-ubuntu18-x86_64-20240126/bin/run.sh (启动dpi程序)
E.1.执行./docker_run_stattion.sh，2../A.sh (发送终点topic)
F.1.执行./docker_run.sh进入代码仓的编辑环境，2.catkin_make -j20 (若没有编译过需要执行编译，若代码仓有改动也需要编译)，3.source devel/setup.bash，4.roslaunch planning pnc.launch