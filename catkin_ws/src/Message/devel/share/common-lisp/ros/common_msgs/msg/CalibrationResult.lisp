; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude CalibrationResult.msg.html

(cl:defclass <CalibrationResult> (roslisp-msg-protocol:ros-message)
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
   (info
    :reader info
    :initarg :info
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CalibrationResult (<CalibrationResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrationResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrationResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<CalibrationResult> is deprecated: use common_msgs-msg:CalibrationResult instead.")))

(cl:ensure-generic-function 'timestamp_sec-val :lambda-list '(m))
(cl:defmethod timestamp_sec-val ((m <CalibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:timestamp_sec-val is deprecated.  Use common_msgs-msg:timestamp_sec instead.")
  (timestamp_sec m))

(cl:ensure-generic-function 'module_name-val :lambda-list '(m))
(cl:defmethod module_name-val ((m <CalibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:module_name-val is deprecated.  Use common_msgs-msg:module_name instead.")
  (module_name m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <CalibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:version-val is deprecated.  Use common_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <CalibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:info-val is deprecated.  Use common_msgs-msg:info instead.")
  (info m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CalibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:status-val is deprecated.  Use common_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrationResult>) ostream)
  "Serializes a message object of type '<CalibrationResult>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrationResult>) istream)
  "Deserializes a message object of type '<CalibrationResult>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrationResult>)))
  "Returns string type for a message object of type '<CalibrationResult>"
  "common_msgs/CalibrationResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrationResult)))
  "Returns string type for a message object of type 'CalibrationResult"
  "common_msgs/CalibrationResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrationResult>)))
  "Returns md5sum for a message object of type '<CalibrationResult>"
  "7389e3af2197513b2128e672d4f25be4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrationResult)))
  "Returns md5sum for a message object of type 'CalibrationResult"
  "7389e3af2197513b2128e672d4f25be4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrationResult>)))
  "Returns full string definition for message of type '<CalibrationResult>"
  (cl:format cl:nil "float64  timestamp_sec~%string 	module_name~%string 	version~%string 	info~%int8 	status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrationResult)))
  "Returns full string definition for message of type 'CalibrationResult"
  (cl:format cl:nil "float64  timestamp_sec~%string 	module_name~%string 	version~%string 	info~%int8 	status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrationResult>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'module_name))
     4 (cl:length (cl:slot-value msg 'version))
     4 (cl:length (cl:slot-value msg 'info))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrationResult>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrationResult
    (cl:cons ':timestamp_sec (timestamp_sec msg))
    (cl:cons ':module_name (module_name msg))
    (cl:cons ':version (version msg))
    (cl:cons ':info (info msg))
    (cl:cons ':status (status msg))
))
