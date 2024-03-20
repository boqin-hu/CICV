; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude PerceptionObjects.msg.html

(cl:defclass <PerceptionObjects> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type common_msgs-msg:Header
    :initform (cl:make-instance 'common_msgs-msg:Header))
   (objs
    :reader objs
    :initarg :objs
    :type (cl:vector perception_msgs-msg:Object)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:Object :initial-element (cl:make-instance 'perception_msgs-msg:Object)))
   (cells
    :reader cells
    :initarg :cells
    :type (cl:vector perception_msgs-msg:ObstacleCell)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:ObstacleCell :initial-element (cl:make-instance 'perception_msgs-msg:ObstacleCell))))
)

(cl:defclass PerceptionObjects (<PerceptionObjects>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerceptionObjects>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerceptionObjects)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<PerceptionObjects> is deprecated: use perception_msgs-msg:PerceptionObjects instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PerceptionObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objs-val :lambda-list '(m))
(cl:defmethod objs-val ((m <PerceptionObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:objs-val is deprecated.  Use perception_msgs-msg:objs instead.")
  (objs m))

(cl:ensure-generic-function 'cells-val :lambda-list '(m))
(cl:defmethod cells-val ((m <PerceptionObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:cells-val is deprecated.  Use perception_msgs-msg:cells instead.")
  (cells m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerceptionObjects>) ostream)
  "Serializes a message object of type '<PerceptionObjects>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cells))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cells))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerceptionObjects>) istream)
  "Deserializes a message object of type '<PerceptionObjects>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:Object))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cells) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cells)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:ObstacleCell))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerceptionObjects>)))
  "Returns string type for a message object of type '<PerceptionObjects>"
  "perception_msgs/PerceptionObjects")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerceptionObjects)))
  "Returns string type for a message object of type 'PerceptionObjects"
  "perception_msgs/PerceptionObjects")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerceptionObjects>)))
  "Returns md5sum for a message object of type '<PerceptionObjects>"
  "79908444545b6666f901065dc0df6345")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerceptionObjects)))
  "Returns md5sum for a message object of type 'PerceptionObjects"
  "79908444545b6666f901065dc0df6345")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerceptionObjects>)))
  "Returns full string definition for message of type '<PerceptionObjects>"
  (cl:format cl:nil "common_msgs/Header header~%Object[] objs~%ObstacleCell[] cells~%================================================================================~%MSG: common_msgs/Header~%int32 sequence_num~%float64 time_stamp~%string 	module_name~%string 	version~%FaultVec 	fault_vec~%TimeStatistics 	time_statistics~%================================================================================~%MSG: common_msgs/FaultVec~%FaultInfo[] 	info_vec~%int32 	module_fault_level~%~%================================================================================~%MSG: common_msgs/FaultInfo~%float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%================================================================================~%MSG: common_msgs/TimeStatistics~%TimeStatus[] 	dev_time_status_msg~%float64 	sending_timestamp~%================================================================================~%MSG: common_msgs/TimeStatus~%float64 	dtime~%string 	source_node_name~%string 	destination_node_name~%================================================================================~%MSG: perception_msgs/Object~%uint32 id 						# obstacle ID.~%float32 x  		# relative distance of x, VCS, unit: m~%float32 y 		# relative distance of y, VCS, unit: m~%float32 z 						# relative distance of z, VCS, unit: m~%float32 vxrel     # relative speed of x, VCS, unit: m/s~%float32 vyrel     # relative speed of y, VCS, unit: m/s~%float64 xabs      # relative distance of x, VCS, unit: m~%float64 yabs      # relative distance of y, VCS, unit: m~%float32 vxabs     # relative speed of x, VCS, unit: m/s~%float32 vyabs     # relative speed of y, VCS, unit: m/s~%float32 width     # unit: m~%float32 length    # unit: m~%float32 height     				# unit: m~%float32 speed      				# unit: m/s~%float32 heading      			# unit: du~%uint8 type 					# CAR_TYPE=0, TRUCK_TYPE=1, PEDESTRIAN_TYPE=2, CYCLIST_TYPE=3, UNKNOWN_TYPE=4, UNKNOWN_MOVABLE_TYPE=5, UNKNOWN_UNMOVABLE_TYPE=6~%uint8 source 					# VISION=0x0000 MOBILEYE=0x0001 LIDAR=0x0100 RADAR=0x0200 ARS_0=0x0201   ARS_1=0x0202  ARS_2=0x0203  ARS_3=0x0204~%float32 confidence				# 0.0~~1.0~%uint32 age						# ~%uint8 velocitystatus 			# ~%ObstacleCell[] cells ~%~%# uint8 track_level~%# uint8 invi_count~%# uint8 vis_count~%~%# float32 acc_x~%# float32 acc_y~%~%~%================================================================================~%MSG: perception_msgs/ObstacleCell~%int32 idc~%float64 x~%float64 y~%float64 xg~%float64 yg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerceptionObjects)))
  "Returns full string definition for message of type 'PerceptionObjects"
  (cl:format cl:nil "common_msgs/Header header~%Object[] objs~%ObstacleCell[] cells~%================================================================================~%MSG: common_msgs/Header~%int32 sequence_num~%float64 time_stamp~%string 	module_name~%string 	version~%FaultVec 	fault_vec~%TimeStatistics 	time_statistics~%================================================================================~%MSG: common_msgs/FaultVec~%FaultInfo[] 	info_vec~%int32 	module_fault_level~%~%================================================================================~%MSG: common_msgs/FaultInfo~%float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%================================================================================~%MSG: common_msgs/TimeStatistics~%TimeStatus[] 	dev_time_status_msg~%float64 	sending_timestamp~%================================================================================~%MSG: common_msgs/TimeStatus~%float64 	dtime~%string 	source_node_name~%string 	destination_node_name~%================================================================================~%MSG: perception_msgs/Object~%uint32 id 						# obstacle ID.~%float32 x  		# relative distance of x, VCS, unit: m~%float32 y 		# relative distance of y, VCS, unit: m~%float32 z 						# relative distance of z, VCS, unit: m~%float32 vxrel     # relative speed of x, VCS, unit: m/s~%float32 vyrel     # relative speed of y, VCS, unit: m/s~%float64 xabs      # relative distance of x, VCS, unit: m~%float64 yabs      # relative distance of y, VCS, unit: m~%float32 vxabs     # relative speed of x, VCS, unit: m/s~%float32 vyabs     # relative speed of y, VCS, unit: m/s~%float32 width     # unit: m~%float32 length    # unit: m~%float32 height     				# unit: m~%float32 speed      				# unit: m/s~%float32 heading      			# unit: du~%uint8 type 					# CAR_TYPE=0, TRUCK_TYPE=1, PEDESTRIAN_TYPE=2, CYCLIST_TYPE=3, UNKNOWN_TYPE=4, UNKNOWN_MOVABLE_TYPE=5, UNKNOWN_UNMOVABLE_TYPE=6~%uint8 source 					# VISION=0x0000 MOBILEYE=0x0001 LIDAR=0x0100 RADAR=0x0200 ARS_0=0x0201   ARS_1=0x0202  ARS_2=0x0203  ARS_3=0x0204~%float32 confidence				# 0.0~~1.0~%uint32 age						# ~%uint8 velocitystatus 			# ~%ObstacleCell[] cells ~%~%# uint8 track_level~%# uint8 invi_count~%# uint8 vis_count~%~%# float32 acc_x~%# float32 acc_y~%~%~%================================================================================~%MSG: perception_msgs/ObstacleCell~%int32 idc~%float64 x~%float64 y~%float64 xg~%float64 yg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerceptionObjects>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cells) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerceptionObjects>))
  "Converts a ROS message object to a list"
  (cl:list 'PerceptionObjects
    (cl:cons ':header (header msg))
    (cl:cons ':objs (objs msg))
    (cl:cons ':cells (cells msg))
))
