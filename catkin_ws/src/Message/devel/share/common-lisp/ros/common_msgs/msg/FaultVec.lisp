; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude FaultVec.msg.html

(cl:defclass <FaultVec> (roslisp-msg-protocol:ros-message)
  ((info_vec
    :reader info_vec
    :initarg :info_vec
    :type (cl:vector common_msgs-msg:FaultInfo)
   :initform (cl:make-array 0 :element-type 'common_msgs-msg:FaultInfo :initial-element (cl:make-instance 'common_msgs-msg:FaultInfo)))
   (module_fault_level
    :reader module_fault_level
    :initarg :module_fault_level
    :type cl:integer
    :initform 0))
)

(cl:defclass FaultVec (<FaultVec>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaultVec>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaultVec)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<FaultVec> is deprecated: use common_msgs-msg:FaultVec instead.")))

(cl:ensure-generic-function 'info_vec-val :lambda-list '(m))
(cl:defmethod info_vec-val ((m <FaultVec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:info_vec-val is deprecated.  Use common_msgs-msg:info_vec instead.")
  (info_vec m))

(cl:ensure-generic-function 'module_fault_level-val :lambda-list '(m))
(cl:defmethod module_fault_level-val ((m <FaultVec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:module_fault_level-val is deprecated.  Use common_msgs-msg:module_fault_level instead.")
  (module_fault_level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaultVec>) ostream)
  "Serializes a message object of type '<FaultVec>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'info_vec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'info_vec))
  (cl:let* ((signed (cl:slot-value msg 'module_fault_level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaultVec>) istream)
  "Deserializes a message object of type '<FaultVec>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'module_fault_level) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaultVec>)))
  "Returns string type for a message object of type '<FaultVec>"
  "common_msgs/FaultVec")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaultVec)))
  "Returns string type for a message object of type 'FaultVec"
  "common_msgs/FaultVec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaultVec>)))
  "Returns md5sum for a message object of type '<FaultVec>"
  "32507500d69130d261243cee8a95edc3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaultVec)))
  "Returns md5sum for a message object of type 'FaultVec"
  "32507500d69130d261243cee8a95edc3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaultVec>)))
  "Returns full string definition for message of type '<FaultVec>"
  (cl:format cl:nil "FaultInfo[] 	info_vec~%int32 	module_fault_level~%~%================================================================================~%MSG: common_msgs/FaultInfo~%float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaultVec)))
  "Returns full string definition for message of type 'FaultVec"
  (cl:format cl:nil "FaultInfo[] 	info_vec~%int32 	module_fault_level~%~%================================================================================~%MSG: common_msgs/FaultInfo~%float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaultVec>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'info_vec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaultVec>))
  "Converts a ROS message object to a list"
  (cl:list 'FaultVec
    (cl:cons ':info_vec (info_vec msg))
    (cl:cons ':module_fault_level (module_fault_level msg))
))
