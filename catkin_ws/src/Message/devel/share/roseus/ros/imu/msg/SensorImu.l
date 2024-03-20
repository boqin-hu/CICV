;; Auto-generated. Do not edit!


(when (boundp 'imu::SensorImu)
  (if (not (find-package "IMU"))
    (make-package "IMU"))
  (shadow 'SensorImu (find-package "IMU")))
(unless (find-package "IMU::SENSORIMU")
  (make-package "IMU::SENSORIMU"))

(in-package "ROS")
;;//! \htmlinclude SensorImu.msg.html
(if (not (find-package "COMMON_MSGS"))
  (ros::roseus-add-msgs "common_msgs"))


(defclass imu::SensorImu
  :super ros::object
  :slots (_header _llh _pose _twist _acceleration _v _nav_status _dr_pose_and_time _localization_control ))

(defmethod imu::SensorImu
  (:init
   (&key
    ((:header __header) (instance common_msgs::Header :init))
    ((:llh __llh) (instance common_msgs::LLH :init))
    ((:pose __pose) (instance common_msgs::Pose :init))
    ((:twist __twist) (instance common_msgs::Twist :init))
    ((:acceleration __acceleration) (instance common_msgs::Vector3 :init))
    ((:v __v) (instance common_msgs::UnsureVar :init))
    ((:nav_status __nav_status) (instance common_msgs::NavStatus :init))
    ((:dr_pose_and_time __dr_pose_and_time) (instance common_msgs::DRPoseWithTime :init))
    ((:localization_control __localization_control) (instance imu::LocalizationControl :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _llh __llh)
   (setq _pose __pose)
   (setq _twist __twist)
   (setq _acceleration __acceleration)
   (setq _v __v)
   (setq _nav_status __nav_status)
   (setq _dr_pose_and_time __dr_pose_and_time)
   (setq _localization_control __localization_control)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:llh
   (&rest __llh)
   (if (keywordp (car __llh))
       (send* _llh __llh)
     (progn
       (if __llh (setq _llh (car __llh)))
       _llh)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:v
   (&rest __v)
   (if (keywordp (car __v))
       (send* _v __v)
     (progn
       (if __v (setq _v (car __v)))
       _v)))
  (:nav_status
   (&rest __nav_status)
   (if (keywordp (car __nav_status))
       (send* _nav_status __nav_status)
     (progn
       (if __nav_status (setq _nav_status (car __nav_status)))
       _nav_status)))
  (:dr_pose_and_time
   (&rest __dr_pose_and_time)
   (if (keywordp (car __dr_pose_and_time))
       (send* _dr_pose_and_time __dr_pose_and_time)
     (progn
       (if __dr_pose_and_time (setq _dr_pose_and_time (car __dr_pose_and_time)))
       _dr_pose_and_time)))
  (:localization_control
   (&rest __localization_control)
   (if (keywordp (car __localization_control))
       (send* _localization_control __localization_control)
     (progn
       (if __localization_control (setq _localization_control (car __localization_control)))
       _localization_control)))
  (:serialization-length
   ()
   (+
    ;; common_msgs/Header _header
    (send _header :serialization-length)
    ;; common_msgs/LLH _llh
    (send _llh :serialization-length)
    ;; common_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; common_msgs/Twist _twist
    (send _twist :serialization-length)
    ;; common_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
    ;; common_msgs/UnsureVar _v
    (send _v :serialization-length)
    ;; common_msgs/NavStatus _nav_status
    (send _nav_status :serialization-length)
    ;; common_msgs/DRPoseWithTime _dr_pose_and_time
    (send _dr_pose_and_time :serialization-length)
    ;; imu/LocalizationControl _localization_control
    (send _localization_control :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; common_msgs/Header _header
       (send _header :serialize s)
     ;; common_msgs/LLH _llh
       (send _llh :serialize s)
     ;; common_msgs/Pose _pose
       (send _pose :serialize s)
     ;; common_msgs/Twist _twist
       (send _twist :serialize s)
     ;; common_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
     ;; common_msgs/UnsureVar _v
       (send _v :serialize s)
     ;; common_msgs/NavStatus _nav_status
       (send _nav_status :serialize s)
     ;; common_msgs/DRPoseWithTime _dr_pose_and_time
       (send _dr_pose_and_time :serialize s)
     ;; imu/LocalizationControl _localization_control
       (send _localization_control :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; common_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; common_msgs/LLH _llh
     (send _llh :deserialize buf ptr-) (incf ptr- (send _llh :serialization-length))
   ;; common_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; common_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; common_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; common_msgs/UnsureVar _v
     (send _v :deserialize buf ptr-) (incf ptr- (send _v :serialization-length))
   ;; common_msgs/NavStatus _nav_status
     (send _nav_status :deserialize buf ptr-) (incf ptr- (send _nav_status :serialization-length))
   ;; common_msgs/DRPoseWithTime _dr_pose_and_time
     (send _dr_pose_and_time :deserialize buf ptr-) (incf ptr- (send _dr_pose_and_time :serialization-length))
   ;; imu/LocalizationControl _localization_control
     (send _localization_control :deserialize buf ptr-) (incf ptr- (send _localization_control :serialization-length))
   ;;
   self)
  )

(setf (get imu::SensorImu :md5sum-) "74871aed203561f29ce57a860f116fa6")
(setf (get imu::SensorImu :datatype-) "imu/SensorImu")
(setf (get imu::SensorImu :definition-)
      "common_msgs/Header 	header
common_msgs/LLH 	llh
common_msgs/Pose 	pose
common_msgs/Twist 	twist
common_msgs/Vector3 	acceleration
common_msgs/UnsureVar 	v
common_msgs/NavStatus 	nav_status
common_msgs/DRPoseWithTime dr_pose_and_time
LocalizationControl localization_control

================================================================================
MSG: common_msgs/Header
int32 sequence_num
float64 time_stamp
string 	module_name
string 	version
FaultVec 	fault_vec
TimeStatistics 	time_statistics
================================================================================
MSG: common_msgs/FaultVec
FaultInfo[] 	info_vec
int32 	module_fault_level

================================================================================
MSG: common_msgs/FaultInfo
float64 	timestamp_sec
string 	module_name
string 	version
int32 	error_code
string 	msg
int8 	fault_level
int8 	fault_type
================================================================================
MSG: common_msgs/TimeStatistics
TimeStatus[] 	dev_time_status_msg
float64 	sending_timestamp
================================================================================
MSG: common_msgs/TimeStatus
float64 	dtime
string 	source_node_name
string 	destination_node_name
================================================================================
MSG: common_msgs/LLH
UnsureVar 	lat
UnsureVar 	lon
UnsureVar 	height
================================================================================
MSG: common_msgs/UnsureVar
float64 	variable
float64 	var_std
================================================================================
MSG: common_msgs/Pose
PoseEuler  	pose_euler
PoseQuaternion 	pose_quaternion
int8  	status   # 0-normal  1-error
================================================================================
MSG: common_msgs/PoseEuler
Vector3WithCovariance 	position
EulerWithCovariance 	rotation
================================================================================
MSG: common_msgs/Vector3WithCovariance
UnsureVar 	x
UnsureVar 	y
UnsureVar 	z
================================================================================
MSG: common_msgs/EulerWithCovariance
UnsureVar 	roll
UnsureVar 	pitch
UnsureVar 	yaw
================================================================================
MSG: common_msgs/PoseQuaternion
Vector3WithCovariance 	position
Quaternion 	quaternion
Vector3  rpy_covariance	
================================================================================
MSG: common_msgs/Quaternion
float64 	x
float64 	y
float64 	z
float64 	w
================================================================================
MSG: common_msgs/Vector3
float64 	x
float64 	y
float64 	z
================================================================================
MSG: common_msgs/Twist
Vector3WithCovariance 	velocity
Vector3WithCovariance 	angular_velocity
================================================================================
MSG: common_msgs/NavStatus
float64 	utc_time
int8 	gps_status # 0-nofix  1-single  2-psrdiff  3-code_diff  4-narrow_init  5-narrow_float
int32 	pos_status
int32  	att_status
int32  	init_status
int32  	sate_num
float32  	hdop
float32  	pdop
float32  	diff_age
================================================================================
MSG: common_msgs/DRPoseWithTime
int32      week
float64    utctime
float64    dr_time
PoseEuler  pose_euler
================================================================================
MSG: imu/LocalizationControl
bool is_lidar_open
")



(provide :imu/SensorImu "74871aed203561f29ce57a860f116fa6")


