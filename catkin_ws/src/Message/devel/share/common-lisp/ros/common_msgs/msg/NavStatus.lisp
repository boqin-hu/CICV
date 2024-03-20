; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude NavStatus.msg.html

(cl:defclass <NavStatus> (roslisp-msg-protocol:ros-message)
  ((utc_time
    :reader utc_time
    :initarg :utc_time
    :type cl:float
    :initform 0.0)
   (gps_status
    :reader gps_status
    :initarg :gps_status
    :type cl:fixnum
    :initform 0)
   (pos_status
    :reader pos_status
    :initarg :pos_status
    :type cl:integer
    :initform 0)
   (att_status
    :reader att_status
    :initarg :att_status
    :type cl:integer
    :initform 0)
   (init_status
    :reader init_status
    :initarg :init_status
    :type cl:integer
    :initform 0)
   (sate_num
    :reader sate_num
    :initarg :sate_num
    :type cl:integer
    :initform 0)
   (hdop
    :reader hdop
    :initarg :hdop
    :type cl:float
    :initform 0.0)
   (pdop
    :reader pdop
    :initarg :pdop
    :type cl:float
    :initform 0.0)
   (diff_age
    :reader diff_age
    :initarg :diff_age
    :type cl:float
    :initform 0.0))
)

(cl:defclass NavStatus (<NavStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<NavStatus> is deprecated: use common_msgs-msg:NavStatus instead.")))

(cl:ensure-generic-function 'utc_time-val :lambda-list '(m))
(cl:defmethod utc_time-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:utc_time-val is deprecated.  Use common_msgs-msg:utc_time instead.")
  (utc_time m))

(cl:ensure-generic-function 'gps_status-val :lambda-list '(m))
(cl:defmethod gps_status-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:gps_status-val is deprecated.  Use common_msgs-msg:gps_status instead.")
  (gps_status m))

(cl:ensure-generic-function 'pos_status-val :lambda-list '(m))
(cl:defmethod pos_status-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:pos_status-val is deprecated.  Use common_msgs-msg:pos_status instead.")
  (pos_status m))

(cl:ensure-generic-function 'att_status-val :lambda-list '(m))
(cl:defmethod att_status-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:att_status-val is deprecated.  Use common_msgs-msg:att_status instead.")
  (att_status m))

(cl:ensure-generic-function 'init_status-val :lambda-list '(m))
(cl:defmethod init_status-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:init_status-val is deprecated.  Use common_msgs-msg:init_status instead.")
  (init_status m))

(cl:ensure-generic-function 'sate_num-val :lambda-list '(m))
(cl:defmethod sate_num-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:sate_num-val is deprecated.  Use common_msgs-msg:sate_num instead.")
  (sate_num m))

(cl:ensure-generic-function 'hdop-val :lambda-list '(m))
(cl:defmethod hdop-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:hdop-val is deprecated.  Use common_msgs-msg:hdop instead.")
  (hdop m))

(cl:ensure-generic-function 'pdop-val :lambda-list '(m))
(cl:defmethod pdop-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:pdop-val is deprecated.  Use common_msgs-msg:pdop instead.")
  (pdop m))

(cl:ensure-generic-function 'diff_age-val :lambda-list '(m))
(cl:defmethod diff_age-val ((m <NavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:diff_age-val is deprecated.  Use common_msgs-msg:diff_age instead.")
  (diff_age m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavStatus>) ostream)
  "Serializes a message object of type '<NavStatus>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'utc_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'gps_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pos_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'att_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'init_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sate_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hdop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pdop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_age))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavStatus>) istream)
  "Deserializes a message object of type '<NavStatus>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'utc_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'att_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'init_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sate_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hdop) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pdop) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_age) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavStatus>)))
  "Returns string type for a message object of type '<NavStatus>"
  "common_msgs/NavStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavStatus)))
  "Returns string type for a message object of type 'NavStatus"
  "common_msgs/NavStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavStatus>)))
  "Returns md5sum for a message object of type '<NavStatus>"
  "66cf32030c6e7f18df10ff34df97d9cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavStatus)))
  "Returns md5sum for a message object of type 'NavStatus"
  "66cf32030c6e7f18df10ff34df97d9cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavStatus>)))
  "Returns full string definition for message of type '<NavStatus>"
  (cl:format cl:nil "float64 	utc_time~%int8 	gps_status # 0-nofix  1-single  2-psrdiff  3-code_diff  4-narrow_init  5-narrow_float~%int32 	pos_status~%int32  	att_status~%int32  	init_status~%int32  	sate_num~%float32  	hdop~%float32  	pdop~%float32  	diff_age~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavStatus)))
  "Returns full string definition for message of type 'NavStatus"
  (cl:format cl:nil "float64 	utc_time~%int8 	gps_status # 0-nofix  1-single  2-psrdiff  3-code_diff  4-narrow_init  5-narrow_float~%int32 	pos_status~%int32  	att_status~%int32  	init_status~%int32  	sate_num~%float32  	hdop~%float32  	pdop~%float32  	diff_age~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavStatus>))
  (cl:+ 0
     8
     1
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NavStatus
    (cl:cons ':utc_time (utc_time msg))
    (cl:cons ':gps_status (gps_status msg))
    (cl:cons ':pos_status (pos_status msg))
    (cl:cons ':att_status (att_status msg))
    (cl:cons ':init_status (init_status msg))
    (cl:cons ':sate_num (sate_num msg))
    (cl:cons ':hdop (hdop msg))
    (cl:cons ':pdop (pdop msg))
    (cl:cons ':diff_age (diff_age msg))
))
