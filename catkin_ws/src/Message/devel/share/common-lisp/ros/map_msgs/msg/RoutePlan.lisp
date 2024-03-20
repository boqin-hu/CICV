; Auto-generated. Do not edit!


(cl:in-package map_msgs-msg)


;//! \htmlinclude RoutePlan.msg.html

(cl:defclass <RoutePlan> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type common_msgs-msg:Header
    :initform (cl:make-instance 'common_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (point
    :reader point
    :initarg :point
    :type map_msgs-msg:MissionPoint
    :initform (cl:make-instance 'map_msgs-msg:MissionPoint))
   (global_road
    :reader global_road
    :initarg :global_road
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0))
)

(cl:defclass RoutePlan (<RoutePlan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoutePlan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoutePlan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_msgs-msg:<RoutePlan> is deprecated: use map_msgs-msg:RoutePlan instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RoutePlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-msg:header-val is deprecated.  Use map_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RoutePlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-msg:id-val is deprecated.  Use map_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <RoutePlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-msg:result-val is deprecated.  Use map_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <RoutePlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-msg:point-val is deprecated.  Use map_msgs-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'global_road-val :lambda-list '(m))
(cl:defmethod global_road-val ((m <RoutePlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-msg:global_road-val is deprecated.  Use map_msgs-msg:global_road instead.")
  (global_road m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <RoutePlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-msg:length-val is deprecated.  Use map_msgs-msg:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoutePlan>) ostream)
  "Serializes a message object of type '<RoutePlan>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'global_road))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'global_road))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoutePlan>) istream)
  "Deserializes a message object of type '<RoutePlan>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'global_road) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'global_road)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoutePlan>)))
  "Returns string type for a message object of type '<RoutePlan>"
  "map_msgs/RoutePlan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoutePlan)))
  "Returns string type for a message object of type 'RoutePlan"
  "map_msgs/RoutePlan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoutePlan>)))
  "Returns md5sum for a message object of type '<RoutePlan>"
  "1649acf7166b841933455501b38710c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoutePlan)))
  "Returns md5sum for a message object of type 'RoutePlan"
  "1649acf7166b841933455501b38710c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoutePlan>)))
  "Returns full string definition for message of type '<RoutePlan>"
  (cl:format cl:nil "common_msgs/Header header~%int32 id~%int32 result~%MissionPoint point~%string[] global_road~%float64 length~%================================================================================~%MSG: common_msgs/Header~%int32 sequence_num~%float64 time_stamp~%string 	module_name~%string 	version~%FaultVec 	fault_vec~%TimeStatistics 	time_statistics~%================================================================================~%MSG: common_msgs/FaultVec~%FaultInfo[] 	info_vec~%int32 	module_fault_level~%~%================================================================================~%MSG: common_msgs/FaultInfo~%float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%================================================================================~%MSG: common_msgs/TimeStatistics~%TimeStatus[] 	dev_time_status_msg~%float64 	sending_timestamp~%================================================================================~%MSG: common_msgs/TimeStatus~%float64 	dtime~%string 	source_node_name~%string 	destination_node_name~%================================================================================~%MSG: map_msgs/MissionPoint~%float64 xg~%float64 yg~%float64 heading~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoutePlan)))
  "Returns full string definition for message of type 'RoutePlan"
  (cl:format cl:nil "common_msgs/Header header~%int32 id~%int32 result~%MissionPoint point~%string[] global_road~%float64 length~%================================================================================~%MSG: common_msgs/Header~%int32 sequence_num~%float64 time_stamp~%string 	module_name~%string 	version~%FaultVec 	fault_vec~%TimeStatistics 	time_statistics~%================================================================================~%MSG: common_msgs/FaultVec~%FaultInfo[] 	info_vec~%int32 	module_fault_level~%~%================================================================================~%MSG: common_msgs/FaultInfo~%float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%================================================================================~%MSG: common_msgs/TimeStatistics~%TimeStatus[] 	dev_time_status_msg~%float64 	sending_timestamp~%================================================================================~%MSG: common_msgs/TimeStatus~%float64 	dtime~%string 	source_node_name~%string 	destination_node_name~%================================================================================~%MSG: map_msgs/MissionPoint~%float64 xg~%float64 yg~%float64 heading~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoutePlan>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'global_road) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoutePlan>))
  "Converts a ROS message object to a list"
  (cl:list 'RoutePlan
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':result (result msg))
    (cl:cons ':point (point msg))
    (cl:cons ':global_road (global_road msg))
    (cl:cons ':length (length msg))
))
