; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude Header.msg.html

(cl:defclass <Header> (roslisp-msg-protocol:ros-message)
  ((sequence_num
    :reader sequence_num
    :initarg :sequence_num
    :type cl:integer
    :initform 0)
   (time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:float
    :initform 0.0)
   (module_name
    :reader module_name
    :initarg :module_name
    :type cl:string
    :initform "")
   (version
    :reader version
    :initarg :version
    :type cl:string
    :initform "")
   (fault_vec
    :reader fault_vec
    :initarg :fault_vec
    :type common_msgs-msg:FaultVec
    :initform (cl:make-instance 'common_msgs-msg:FaultVec))
   (time_statistics
    :reader time_statistics
    :initarg :time_statistics
    :type common_msgs-msg:TimeStatistics
    :initform (cl:make-instance 'common_msgs-msg:TimeStatistics)))
)

(cl:defclass Header (<Header>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Header>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Header)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<Header> is deprecated: use common_msgs-msg:Header instead.")))

(cl:ensure-generic-function 'sequence_num-val :lambda-list '(m))
(cl:defmethod sequence_num-val ((m <Header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:sequence_num-val is deprecated.  Use common_msgs-msg:sequence_num instead.")
  (sequence_num m))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <Header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:time_stamp-val is deprecated.  Use common_msgs-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'module_name-val :lambda-list '(m))
(cl:defmethod module_name-val ((m <Header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:module_name-val is deprecated.  Use common_msgs-msg:module_name instead.")
  (module_name m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <Header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:version-val is deprecated.  Use common_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'fault_vec-val :lambda-list '(m))
(cl:defmethod fault_vec-val ((m <Header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:fault_vec-val is deprecated.  Use common_msgs-msg:fault_vec instead.")
  (fault_vec m))

(cl:ensure-generic-function 'time_statistics-val :lambda-list '(m))
(cl:defmethod time_statistics-val ((m <Header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:time_statistics-val is deprecated.  Use common_msgs-msg:time_statistics instead.")
  (time_statistics m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Header>) ostream)
  "Serializes a message object of type '<Header>"
  (cl:let* ((signed (cl:slot-value msg 'sequence_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_stamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'module_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'module_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'version))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fault_vec) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'time_statistics) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Header>) istream)
  "Deserializes a message object of type '<Header>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sequence_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_stamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'module_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'module_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fault_vec) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'time_statistics) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Header>)))
  "Returns string type for a message object of type '<Header>"
  "common_msgs/Header")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Header)))
  "Returns string type for a message object of type 'Header"
  "common_msgs/Header")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Header>)))
  "Returns md5sum for a message object of type '<Header>"
  "e31935db661363d21d899876e48cac39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Header)))
  "Returns md5sum for a message object of type 'Header"
  "e31935db661363d21d899876e48cac39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Header>)))
  "Returns full string definition for message of type '<Header>"
  (cl:format cl:nil "int32 sequence_num~%float64 time_stamp~%string 	module_name~%string 	version~%FaultVec 	fault_vec~%TimeStatistics 	time_statistics~%================================================================================~%MSG: common_msgs/FaultVec~%FaultInfo[] 	info_vec~%int32 	module_fault_level~%~%================================================================================~%MSG: common_msgs/FaultInfo~%float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%================================================================================~%MSG: common_msgs/TimeStatistics~%TimeStatus[] 	dev_time_status_msg~%float64 	sending_timestamp~%================================================================================~%MSG: common_msgs/TimeStatus~%float64 	dtime~%string 	source_node_name~%string 	destination_node_name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Header)))
  "Returns full string definition for message of type 'Header"
  (cl:format cl:nil "int32 sequence_num~%float64 time_stamp~%string 	module_name~%string 	version~%FaultVec 	fault_vec~%TimeStatistics 	time_statistics~%================================================================================~%MSG: common_msgs/FaultVec~%FaultInfo[] 	info_vec~%int32 	module_fault_level~%~%================================================================================~%MSG: common_msgs/FaultInfo~%float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%================================================================================~%MSG: common_msgs/TimeStatistics~%TimeStatus[] 	dev_time_status_msg~%float64 	sending_timestamp~%================================================================================~%MSG: common_msgs/TimeStatus~%float64 	dtime~%string 	source_node_name~%string 	destination_node_name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Header>))
  (cl:+ 0
     4
     8
     4 (cl:length (cl:slot-value msg 'module_name))
     4 (cl:length (cl:slot-value msg 'version))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fault_vec))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'time_statistics))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Header>))
  "Converts a ROS message object to a list"
  (cl:list 'Header
    (cl:cons ':sequence_num (sequence_num msg))
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':module_name (module_name msg))
    (cl:cons ':version (version msg))
    (cl:cons ':fault_vec (fault_vec msg))
    (cl:cons ':time_statistics (time_statistics msg))
))
