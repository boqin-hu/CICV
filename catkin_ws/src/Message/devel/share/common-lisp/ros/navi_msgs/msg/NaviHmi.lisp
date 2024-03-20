; Auto-generated. Do not edit!


(cl:in-package navi_msgs-msg)


;//! \htmlinclude NaviHmi.msg.html

(cl:defclass <NaviHmi> (roslisp-msg-protocol:ros-message)
  ((timestamp_sec
    :reader timestamp_sec
    :initarg :timestamp_sec
    :type cl:float
    :initform 0.0)
   (interactive
    :reader interactive
    :initarg :interactive
    :type cl:integer
    :initform 0)
   (event_type
    :reader event_type
    :initarg :event_type
    :type cl:integer
    :initform 0)
   (event_id
    :reader event_id
    :initarg :event_id
    :type cl:integer
    :initform 0))
)

(cl:defclass NaviHmi (<NaviHmi>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaviHmi>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaviHmi)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navi_msgs-msg:<NaviHmi> is deprecated: use navi_msgs-msg:NaviHmi instead.")))

(cl:ensure-generic-function 'timestamp_sec-val :lambda-list '(m))
(cl:defmethod timestamp_sec-val ((m <NaviHmi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:timestamp_sec-val is deprecated.  Use navi_msgs-msg:timestamp_sec instead.")
  (timestamp_sec m))

(cl:ensure-generic-function 'interactive-val :lambda-list '(m))
(cl:defmethod interactive-val ((m <NaviHmi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:interactive-val is deprecated.  Use navi_msgs-msg:interactive instead.")
  (interactive m))

(cl:ensure-generic-function 'event_type-val :lambda-list '(m))
(cl:defmethod event_type-val ((m <NaviHmi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:event_type-val is deprecated.  Use navi_msgs-msg:event_type instead.")
  (event_type m))

(cl:ensure-generic-function 'event_id-val :lambda-list '(m))
(cl:defmethod event_id-val ((m <NaviHmi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:event_id-val is deprecated.  Use navi_msgs-msg:event_id instead.")
  (event_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaviHmi>) ostream)
  "Serializes a message object of type '<NaviHmi>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp_sec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'interactive)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'event_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'event_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaviHmi>) istream)
  "Deserializes a message object of type '<NaviHmi>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'interactive) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'event_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'event_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaviHmi>)))
  "Returns string type for a message object of type '<NaviHmi>"
  "navi_msgs/NaviHmi")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviHmi)))
  "Returns string type for a message object of type 'NaviHmi"
  "navi_msgs/NaviHmi")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaviHmi>)))
  "Returns md5sum for a message object of type '<NaviHmi>"
  "5b2932c5457cada5cc44e42751723cc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaviHmi)))
  "Returns md5sum for a message object of type 'NaviHmi"
  "5b2932c5457cada5cc44e42751723cc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaviHmi>)))
  "Returns full string definition for message of type '<NaviHmi>"
  (cl:format cl:nil "float64   timestamp_sec~%int32     interactive #600:任务状态 800：播报~%int32     event_type  #0：车辆进站 1：车辆起步 2：车辆清车 3：任务提醒~%int32     event_id    #event_type = 0||1 id=\"站点id\"；event_type = 2 id=0；event_type=3 0:空闲/结束 1：执行 2：异常~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaviHmi)))
  "Returns full string definition for message of type 'NaviHmi"
  (cl:format cl:nil "float64   timestamp_sec~%int32     interactive #600:任务状态 800：播报~%int32     event_type  #0：车辆进站 1：车辆起步 2：车辆清车 3：任务提醒~%int32     event_id    #event_type = 0||1 id=\"站点id\"；event_type = 2 id=0；event_type=3 0:空闲/结束 1：执行 2：异常~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaviHmi>))
  (cl:+ 0
     8
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaviHmi>))
  "Converts a ROS message object to a list"
  (cl:list 'NaviHmi
    (cl:cons ':timestamp_sec (timestamp_sec msg))
    (cl:cons ':interactive (interactive msg))
    (cl:cons ':event_type (event_type msg))
    (cl:cons ':event_id (event_id msg))
))
