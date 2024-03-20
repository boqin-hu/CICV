; Auto-generated. Do not edit!


(cl:in-package imu-msg)


;//! \htmlinclude SensorImu.msg.html

(cl:defclass <SensorImu> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type common_msgs-msg:Header
    :initform (cl:make-instance 'common_msgs-msg:Header))
   (llh
    :reader llh
    :initarg :llh
    :type common_msgs-msg:LLH
    :initform (cl:make-instance 'common_msgs-msg:LLH))
   (pose
    :reader pose
    :initarg :pose
    :type common_msgs-msg:Pose
    :initform (cl:make-instance 'common_msgs-msg:Pose))
   (twist
    :reader twist
    :initarg :twist
    :type common_msgs-msg:Twist
    :initform (cl:make-instance 'common_msgs-msg:Twist))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type common_msgs-msg:Vector3
    :initform (cl:make-instance 'common_msgs-msg:Vector3))
   (v
    :reader v
    :initarg :v
    :type common_msgs-msg:UnsureVar
    :initform (cl:make-instance 'common_msgs-msg:UnsureVar))
   (nav_status
    :reader nav_status
    :initarg :nav_status
    :type common_msgs-msg:NavStatus
    :initform (cl:make-instance 'common_msgs-msg:NavStatus))
   (dr_pose_and_time
    :reader dr_pose_and_time
    :initarg :dr_pose_and_time
    :type common_msgs-msg:DRPoseWithTime
    :initform (cl:make-instance 'common_msgs-msg:DRPoseWithTime))
   (localization_control
    :reader localization_control
    :initarg :localization_control
    :type imu-msg:LocalizationControl
    :initform (cl:make-instance 'imu-msg:LocalizationControl)))
)

(cl:defclass SensorImu (<SensorImu>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorImu>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorImu)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imu-msg:<SensorImu> is deprecated: use imu-msg:SensorImu instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SensorImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu-msg:header-val is deprecated.  Use imu-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'llh-val :lambda-list '(m))
(cl:defmethod llh-val ((m <SensorImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu-msg:llh-val is deprecated.  Use imu-msg:llh instead.")
  (llh m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SensorImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu-msg:pose-val is deprecated.  Use imu-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <SensorImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu-msg:twist-val is deprecated.  Use imu-msg:twist instead.")
  (twist m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <SensorImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu-msg:acceleration-val is deprecated.  Use imu-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <SensorImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu-msg:v-val is deprecated.  Use imu-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'nav_status-val :lambda-list '(m))
(cl:defmethod nav_status-val ((m <SensorImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu-msg:nav_status-val is deprecated.  Use imu-msg:nav_status instead.")
  (nav_status m))

(cl:ensure-generic-function 'dr_pose_and_time-val :lambda-list '(m))
(cl:defmethod dr_pose_and_time-val ((m <SensorImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu-msg:dr_pose_and_time-val is deprecated.  Use imu-msg:dr_pose_and_time instead.")
  (dr_pose_and_time m))

(cl:ensure-generic-function 'localization_control-val :lambda-list '(m))
(cl:defmethod localization_control-val ((m <SensorImu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu-msg:localization_control-val is deprecated.  Use imu-msg:localization_control instead.")
  (localization_control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorImu>) ostream)
  "Serializes a message object of type '<SensorImu>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'llh) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'nav_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dr_pose_and_time) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'localization_control) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorImu>) istream)
  "Deserializes a message object of type '<SensorImu>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'llh) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'nav_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dr_pose_and_time) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'localization_control) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorImu>)))
  "Returns string type for a message object of type '<SensorImu>"
  "imu/SensorImu")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorImu)))
  "Returns string type for a message object of type 'SensorImu"
  "imu/SensorImu")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorImu>)))
  "Returns md5sum for a message object of type '<SensorImu>"
  "74871aed203561f29ce57a860f116fa6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorImu)))
  "Returns md5sum for a message object of type 'SensorImu"
  "74871aed203561f29ce57a860f116fa6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorImu>)))
  "Returns full string definition for message of type '<SensorImu>"
  (cl:format cl:nil "common_msgs/Header 	header~%common_msgs/LLH 	llh~%common_msgs/Pose 	pose~%common_msgs/Twist 	twist~%common_msgs/Vector3 	acceleration~%common_msgs/UnsureVar 	v~%common_msgs/NavStatus 	nav_status~%common_msgs/DRPoseWithTime dr_pose_and_time~%LocalizationControl localization_control~%~%================================================================================~%MSG: common_msgs/Header~%int32 sequence_num~%float64 time_stamp~%string 	module_name~%string 	version~%FaultVec 	fault_vec~%TimeStatistics 	time_statistics~%================================================================================~%MSG: common_msgs/FaultVec~%FaultInfo[] 	info_vec~%int32 	module_fault_level~%~%================================================================================~%MSG: common_msgs/FaultInfo~%float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%================================================================================~%MSG: common_msgs/TimeStatistics~%TimeStatus[] 	dev_time_status_msg~%float64 	sending_timestamp~%================================================================================~%MSG: common_msgs/TimeStatus~%float64 	dtime~%string 	source_node_name~%string 	destination_node_name~%================================================================================~%MSG: common_msgs/LLH~%UnsureVar 	lat~%UnsureVar 	lon~%UnsureVar 	height~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%================================================================================~%MSG: common_msgs/Pose~%PoseEuler  	pose_euler~%PoseQuaternion 	pose_quaternion~%int8  	status   # 0-normal  1-error~%================================================================================~%MSG: common_msgs/PoseEuler~%Vector3WithCovariance 	position~%EulerWithCovariance 	rotation~%================================================================================~%MSG: common_msgs/Vector3WithCovariance~%UnsureVar 	x~%UnsureVar 	y~%UnsureVar 	z~%================================================================================~%MSG: common_msgs/EulerWithCovariance~%UnsureVar 	roll~%UnsureVar 	pitch~%UnsureVar 	yaw~%================================================================================~%MSG: common_msgs/PoseQuaternion~%Vector3WithCovariance 	position~%Quaternion 	quaternion~%Vector3  rpy_covariance	~%================================================================================~%MSG: common_msgs/Quaternion~%float64 	x~%float64 	y~%float64 	z~%float64 	w~%================================================================================~%MSG: common_msgs/Vector3~%float64 	x~%float64 	y~%float64 	z~%================================================================================~%MSG: common_msgs/Twist~%Vector3WithCovariance 	velocity~%Vector3WithCovariance 	angular_velocity~%================================================================================~%MSG: common_msgs/NavStatus~%float64 	utc_time~%int8 	gps_status # 0-nofix  1-single  2-psrdiff  3-code_diff  4-narrow_init  5-narrow_float~%int32 	pos_status~%int32  	att_status~%int32  	init_status~%int32  	sate_num~%float32  	hdop~%float32  	pdop~%float32  	diff_age~%================================================================================~%MSG: common_msgs/DRPoseWithTime~%int32      week~%float64    utctime~%float64    dr_time~%PoseEuler  pose_euler~%================================================================================~%MSG: imu/LocalizationControl~%bool is_lidar_open~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorImu)))
  "Returns full string definition for message of type 'SensorImu"
  (cl:format cl:nil "common_msgs/Header 	header~%common_msgs/LLH 	llh~%common_msgs/Pose 	pose~%common_msgs/Twist 	twist~%common_msgs/Vector3 	acceleration~%common_msgs/UnsureVar 	v~%common_msgs/NavStatus 	nav_status~%common_msgs/DRPoseWithTime dr_pose_and_time~%LocalizationControl localization_control~%~%================================================================================~%MSG: common_msgs/Header~%int32 sequence_num~%float64 time_stamp~%string 	module_name~%string 	version~%FaultVec 	fault_vec~%TimeStatistics 	time_statistics~%================================================================================~%MSG: common_msgs/FaultVec~%FaultInfo[] 	info_vec~%int32 	module_fault_level~%~%================================================================================~%MSG: common_msgs/FaultInfo~%float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%================================================================================~%MSG: common_msgs/TimeStatistics~%TimeStatus[] 	dev_time_status_msg~%float64 	sending_timestamp~%================================================================================~%MSG: common_msgs/TimeStatus~%float64 	dtime~%string 	source_node_name~%string 	destination_node_name~%================================================================================~%MSG: common_msgs/LLH~%UnsureVar 	lat~%UnsureVar 	lon~%UnsureVar 	height~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%================================================================================~%MSG: common_msgs/Pose~%PoseEuler  	pose_euler~%PoseQuaternion 	pose_quaternion~%int8  	status   # 0-normal  1-error~%================================================================================~%MSG: common_msgs/PoseEuler~%Vector3WithCovariance 	position~%EulerWithCovariance 	rotation~%================================================================================~%MSG: common_msgs/Vector3WithCovariance~%UnsureVar 	x~%UnsureVar 	y~%UnsureVar 	z~%================================================================================~%MSG: common_msgs/EulerWithCovariance~%UnsureVar 	roll~%UnsureVar 	pitch~%UnsureVar 	yaw~%================================================================================~%MSG: common_msgs/PoseQuaternion~%Vector3WithCovariance 	position~%Quaternion 	quaternion~%Vector3  rpy_covariance	~%================================================================================~%MSG: common_msgs/Quaternion~%float64 	x~%float64 	y~%float64 	z~%float64 	w~%================================================================================~%MSG: common_msgs/Vector3~%float64 	x~%float64 	y~%float64 	z~%================================================================================~%MSG: common_msgs/Twist~%Vector3WithCovariance 	velocity~%Vector3WithCovariance 	angular_velocity~%================================================================================~%MSG: common_msgs/NavStatus~%float64 	utc_time~%int8 	gps_status # 0-nofix  1-single  2-psrdiff  3-code_diff  4-narrow_init  5-narrow_float~%int32 	pos_status~%int32  	att_status~%int32  	init_status~%int32  	sate_num~%float32  	hdop~%float32  	pdop~%float32  	diff_age~%================================================================================~%MSG: common_msgs/DRPoseWithTime~%int32      week~%float64    utctime~%float64    dr_time~%PoseEuler  pose_euler~%================================================================================~%MSG: imu/LocalizationControl~%bool is_lidar_open~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorImu>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'llh))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'nav_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dr_pose_and_time))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'localization_control))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorImu>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorImu
    (cl:cons ':header (header msg))
    (cl:cons ':llh (llh msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':twist (twist msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':v (v msg))
    (cl:cons ':nav_status (nav_status msg))
    (cl:cons ':dr_pose_and_time (dr_pose_and_time msg))
    (cl:cons ':localization_control (localization_control msg))
))
