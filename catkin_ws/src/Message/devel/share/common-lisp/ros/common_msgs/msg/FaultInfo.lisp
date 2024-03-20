; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude FaultInfo.msg.html

(cl:defclass <FaultInfo> (roslisp-msg-protocol:ros-message)
  ((timestamp_sec
    :reader timestamp_sec
    :initarg :timestamp_sec
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
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform "")
   (fault_level
    :reader fault_level
    :initarg :fault_level
    :type cl:fixnum
    :initform 0)
   (fault_type
    :reader fault_type
    :initarg :fault_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FaultInfo (<FaultInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaultInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaultInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<FaultInfo> is deprecated: use common_msgs-msg:FaultInfo instead.")))

(cl:ensure-generic-function 'timestamp_sec-val :lambda-list '(m))
(cl:defmethod timestamp_sec-val ((m <FaultInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:timestamp_sec-val is deprecated.  Use common_msgs-msg:timestamp_sec instead.")
  (timestamp_sec m))

(cl:ensure-generic-function 'module_name-val :lambda-list '(m))
(cl:defmethod module_name-val ((m <FaultInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:module_name-val is deprecated.  Use common_msgs-msg:module_name instead.")
  (module_name m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <FaultInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:version-val is deprecated.  Use common_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <FaultInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:error_code-val is deprecated.  Use common_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <FaultInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:msg-val is deprecated.  Use common_msgs-msg:msg instead.")
  (msg m))

(cl:ensure-generic-function 'fault_level-val :lambda-list '(m))
(cl:defmethod fault_level-val ((m <FaultInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:fault_level-val is deprecated.  Use common_msgs-msg:fault_level instead.")
  (fault_level m))

(cl:ensure-generic-function 'fault_type-val :lambda-list '(m))
(cl:defmethod fault_type-val ((m <FaultInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:fault_type-val is deprecated.  Use common_msgs-msg:fault_type instead.")
  (fault_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaultInfo>) ostream)
  "Serializes a message object of type '<FaultInfo>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp_sec))))
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
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
  (cl:let* ((signed (cl:slot-value msg 'fault_level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fault_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaultInfo>) istream)
  "Deserializes a message object of type '<FaultInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp_sec) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fault_level) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fault_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaultInfo>)))
  "Returns string type for a message object of type '<FaultInfo>"
  "common_msgs/FaultInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaultInfo)))
  "Returns string type for a message object of type 'FaultInfo"
  "common_msgs/FaultInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaultInfo>)))
  "Returns md5sum for a message object of type '<FaultInfo>"
  "1b5939be01d58923002cbc6c918b82ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaultInfo)))
  "Returns md5sum for a message object of type 'FaultInfo"
  "1b5939be01d58923002cbc6c918b82ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaultInfo>)))
  "Returns full string definition for message of type '<FaultInfo>"
  (cl:format cl:nil "float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaultInfo)))
  "Returns full string definition for message of type 'FaultInfo"
  (cl:format cl:nil "float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaultInfo>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'module_name))
     4 (cl:length (cl:slot-value msg 'version))
     4
     4 (cl:length (cl:slot-value msg 'msg))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaultInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'FaultInfo
    (cl:cons ':timestamp_sec (timestamp_sec msg))
    (cl:cons ':module_name (module_name msg))
    (cl:cons ':version (version msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':msg (msg msg))
    (cl:cons ':fault_level (fault_level msg))
    (cl:cons ':fault_type (fault_type msg))
))
