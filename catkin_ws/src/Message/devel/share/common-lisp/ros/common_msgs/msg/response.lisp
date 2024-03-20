; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude response.msg.html

(cl:defclass <response> (roslisp-msg-protocol:ros-message)
  ((response_ID
    :reader response_ID
    :initarg :response_ID
    :type cl:fixnum
    :initform 0)
   (sub_ID
    :reader sub_ID
    :initarg :sub_ID
    :type cl:fixnum
    :initform 0)
   (response_data
    :reader response_data
    :initarg :response_data
    :type cl:fixnum
    :initform 0)
   (slightfault
    :reader slightfault
    :initarg :slightfault
    :type cl:fixnum
    :initform 0)
   (middlefault
    :reader middlefault
    :initarg :middlefault
    :type cl:fixnum
    :initform 0)
   (severfault
    :reader severfault
    :initarg :severfault
    :type cl:fixnum
    :initform 0)
   (deadlyfault
    :reader deadlyfault
    :initarg :deadlyfault
    :type cl:fixnum
    :initform 0)
   (info_vec
    :reader info_vec
    :initarg :info_vec
    :type (cl:vector common_msgs-msg:FaultInfo)
   :initform (cl:make-array 0 :element-type 'common_msgs-msg:FaultInfo :initial-element (cl:make-instance 'common_msgs-msg:FaultInfo))))
)

(cl:defclass response (<response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<response> is deprecated: use common_msgs-msg:response instead.")))

(cl:ensure-generic-function 'response_ID-val :lambda-list '(m))
(cl:defmethod response_ID-val ((m <response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:response_ID-val is deprecated.  Use common_msgs-msg:response_ID instead.")
  (response_ID m))

(cl:ensure-generic-function 'sub_ID-val :lambda-list '(m))
(cl:defmethod sub_ID-val ((m <response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:sub_ID-val is deprecated.  Use common_msgs-msg:sub_ID instead.")
  (sub_ID m))

(cl:ensure-generic-function 'response_data-val :lambda-list '(m))
(cl:defmethod response_data-val ((m <response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:response_data-val is deprecated.  Use common_msgs-msg:response_data instead.")
  (response_data m))

(cl:ensure-generic-function 'slightfault-val :lambda-list '(m))
(cl:defmethod slightfault-val ((m <response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:slightfault-val is deprecated.  Use common_msgs-msg:slightfault instead.")
  (slightfault m))

(cl:ensure-generic-function 'middlefault-val :lambda-list '(m))
(cl:defmethod middlefault-val ((m <response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:middlefault-val is deprecated.  Use common_msgs-msg:middlefault instead.")
  (middlefault m))

(cl:ensure-generic-function 'severfault-val :lambda-list '(m))
(cl:defmethod severfault-val ((m <response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:severfault-val is deprecated.  Use common_msgs-msg:severfault instead.")
  (severfault m))

(cl:ensure-generic-function 'deadlyfault-val :lambda-list '(m))
(cl:defmethod deadlyfault-val ((m <response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:deadlyfault-val is deprecated.  Use common_msgs-msg:deadlyfault instead.")
  (deadlyfault m))

(cl:ensure-generic-function 'info_vec-val :lambda-list '(m))
(cl:defmethod info_vec-val ((m <response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:info_vec-val is deprecated.  Use common_msgs-msg:info_vec instead.")
  (info_vec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <response>) ostream)
  "Serializes a message object of type '<response>"
  (cl:let* ((signed (cl:slot-value msg 'response_ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sub_ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'response_data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'slightfault)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'middlefault)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'severfault)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'deadlyfault)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'info_vec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'info_vec))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <response>) istream)
  "Deserializes a message object of type '<response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response_ID) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sub_ID) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response_data) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'slightfault) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'middlefault) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'severfault) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'deadlyfault) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'info_vec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'info_vec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'common_msgs-msg:FaultInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<response>)))
  "Returns string type for a message object of type '<response>"
  "common_msgs/response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'response)))
  "Returns string type for a message object of type 'response"
  "common_msgs/response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<response>)))
  "Returns md5sum for a message object of type '<response>"
  "d370e960b936f004fa2ba4ee8e469d8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'response)))
  "Returns md5sum for a message object of type 'response"
  "d370e960b936f004fa2ba4ee8e469d8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<response>)))
  "Returns full string definition for message of type '<response>"
  (cl:format cl:nil "int8   response_ID~%int8   sub_ID~%int8  response_data~%int8  slightfault~%int8  middlefault~%int8  severfault ~%int8  deadlyfault ~%FaultInfo[]    info_vec~%~%================================================================================~%MSG: common_msgs/FaultInfo~%float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'response)))
  "Returns full string definition for message of type 'response"
  (cl:format cl:nil "int8   response_ID~%int8   sub_ID~%int8  response_data~%int8  slightfault~%int8  middlefault~%int8  severfault ~%int8  deadlyfault ~%FaultInfo[]    info_vec~%~%================================================================================~%MSG: common_msgs/FaultInfo~%float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <response>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'info_vec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <response>))
  "Converts a ROS message object to a list"
  (cl:list 'response
    (cl:cons ':response_ID (response_ID msg))
    (cl:cons ':sub_ID (sub_ID msg))
    (cl:cons ':response_data (response_data msg))
    (cl:cons ':slightfault (slightfault msg))
    (cl:cons ':middlefault (middlefault msg))
    (cl:cons ':severfault (severfault msg))
    (cl:cons ':deadlyfault (deadlyfault msg))
    (cl:cons ':info_vec (info_vec msg))
))
