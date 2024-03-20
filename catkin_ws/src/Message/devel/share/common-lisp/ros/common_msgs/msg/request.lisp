; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude request.msg.html

(cl:defclass <request> (roslisp-msg-protocol:ros-message)
  ((diag_ID
    :reader diag_ID
    :initarg :diag_ID
    :type cl:fixnum
    :initform 0)
   (sub_ID
    :reader sub_ID
    :initarg :sub_ID
    :type cl:integer
    :initform 0)
   (diag_data
    :reader diag_data
    :initarg :diag_data
    :type cl:integer
    :initform 0)
   (info_vec
    :reader info_vec
    :initarg :info_vec
    :type (cl:vector common_msgs-msg:FaultInfo)
   :initform (cl:make-array 0 :element-type 'common_msgs-msg:FaultInfo :initial-element (cl:make-instance 'common_msgs-msg:FaultInfo))))
)

(cl:defclass request (<request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<request> is deprecated: use common_msgs-msg:request instead.")))

(cl:ensure-generic-function 'diag_ID-val :lambda-list '(m))
(cl:defmethod diag_ID-val ((m <request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:diag_ID-val is deprecated.  Use common_msgs-msg:diag_ID instead.")
  (diag_ID m))

(cl:ensure-generic-function 'sub_ID-val :lambda-list '(m))
(cl:defmethod sub_ID-val ((m <request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:sub_ID-val is deprecated.  Use common_msgs-msg:sub_ID instead.")
  (sub_ID m))

(cl:ensure-generic-function 'diag_data-val :lambda-list '(m))
(cl:defmethod diag_data-val ((m <request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:diag_data-val is deprecated.  Use common_msgs-msg:diag_data instead.")
  (diag_data m))

(cl:ensure-generic-function 'info_vec-val :lambda-list '(m))
(cl:defmethod info_vec-val ((m <request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:info_vec-val is deprecated.  Use common_msgs-msg:info_vec instead.")
  (info_vec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <request>) ostream)
  "Serializes a message object of type '<request>"
  (cl:let* ((signed (cl:slot-value msg 'diag_ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sub_ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'diag_data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'info_vec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'info_vec))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <request>) istream)
  "Deserializes a message object of type '<request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'diag_ID) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sub_ID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'diag_data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<request>)))
  "Returns string type for a message object of type '<request>"
  "common_msgs/request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'request)))
  "Returns string type for a message object of type 'request"
  "common_msgs/request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<request>)))
  "Returns md5sum for a message object of type '<request>"
  "8474d648f7f606e5d733ab5d6a81594f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'request)))
  "Returns md5sum for a message object of type 'request"
  "8474d648f7f606e5d733ab5d6a81594f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<request>)))
  "Returns full string definition for message of type '<request>"
  (cl:format cl:nil "int8    diag_ID~%int32    sub_ID ~%int32   diag_data~%FaultInfo[]    info_vec~%~%================================================================================~%MSG: common_msgs/FaultInfo~%float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'request)))
  "Returns full string definition for message of type 'request"
  (cl:format cl:nil "int8    diag_ID~%int32    sub_ID ~%int32   diag_data~%FaultInfo[]    info_vec~%~%================================================================================~%MSG: common_msgs/FaultInfo~%float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <request>))
  (cl:+ 0
     1
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'info_vec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <request>))
  "Converts a ROS message object to a list"
  (cl:list 'request
    (cl:cons ':diag_ID (diag_ID msg))
    (cl:cons ':sub_ID (sub_ID msg))
    (cl:cons ':diag_data (diag_data msg))
    (cl:cons ':info_vec (info_vec msg))
))
