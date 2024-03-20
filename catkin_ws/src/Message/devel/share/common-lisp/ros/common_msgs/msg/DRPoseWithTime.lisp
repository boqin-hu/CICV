; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude DRPoseWithTime.msg.html

(cl:defclass <DRPoseWithTime> (roslisp-msg-protocol:ros-message)
  ((week
    :reader week
    :initarg :week
    :type cl:integer
    :initform 0)
   (utctime
    :reader utctime
    :initarg :utctime
    :type cl:float
    :initform 0.0)
   (dr_time
    :reader dr_time
    :initarg :dr_time
    :type cl:float
    :initform 0.0)
   (pose_euler
    :reader pose_euler
    :initarg :pose_euler
    :type common_msgs-msg:PoseEuler
    :initform (cl:make-instance 'common_msgs-msg:PoseEuler)))
)

(cl:defclass DRPoseWithTime (<DRPoseWithTime>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DRPoseWithTime>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DRPoseWithTime)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<DRPoseWithTime> is deprecated: use common_msgs-msg:DRPoseWithTime instead.")))

(cl:ensure-generic-function 'week-val :lambda-list '(m))
(cl:defmethod week-val ((m <DRPoseWithTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:week-val is deprecated.  Use common_msgs-msg:week instead.")
  (week m))

(cl:ensure-generic-function 'utctime-val :lambda-list '(m))
(cl:defmethod utctime-val ((m <DRPoseWithTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:utctime-val is deprecated.  Use common_msgs-msg:utctime instead.")
  (utctime m))

(cl:ensure-generic-function 'dr_time-val :lambda-list '(m))
(cl:defmethod dr_time-val ((m <DRPoseWithTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:dr_time-val is deprecated.  Use common_msgs-msg:dr_time instead.")
  (dr_time m))

(cl:ensure-generic-function 'pose_euler-val :lambda-list '(m))
(cl:defmethod pose_euler-val ((m <DRPoseWithTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:pose_euler-val is deprecated.  Use common_msgs-msg:pose_euler instead.")
  (pose_euler m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DRPoseWithTime>) ostream)
  "Serializes a message object of type '<DRPoseWithTime>"
  (cl:let* ((signed (cl:slot-value msg 'week)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'utctime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dr_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_euler) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DRPoseWithTime>) istream)
  "Deserializes a message object of type '<DRPoseWithTime>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'week) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'utctime) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dr_time) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_euler) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DRPoseWithTime>)))
  "Returns string type for a message object of type '<DRPoseWithTime>"
  "common_msgs/DRPoseWithTime")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DRPoseWithTime)))
  "Returns string type for a message object of type 'DRPoseWithTime"
  "common_msgs/DRPoseWithTime")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DRPoseWithTime>)))
  "Returns md5sum for a message object of type '<DRPoseWithTime>"
  "e3866a48419eccf2d481c14a6c62e1f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DRPoseWithTime)))
  "Returns md5sum for a message object of type 'DRPoseWithTime"
  "e3866a48419eccf2d481c14a6c62e1f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DRPoseWithTime>)))
  "Returns full string definition for message of type '<DRPoseWithTime>"
  (cl:format cl:nil "int32      week~%float64    utctime~%float64    dr_time~%PoseEuler  pose_euler~%================================================================================~%MSG: common_msgs/PoseEuler~%Vector3WithCovariance 	position~%EulerWithCovariance 	rotation~%================================================================================~%MSG: common_msgs/Vector3WithCovariance~%UnsureVar 	x~%UnsureVar 	y~%UnsureVar 	z~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%================================================================================~%MSG: common_msgs/EulerWithCovariance~%UnsureVar 	roll~%UnsureVar 	pitch~%UnsureVar 	yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DRPoseWithTime)))
  "Returns full string definition for message of type 'DRPoseWithTime"
  (cl:format cl:nil "int32      week~%float64    utctime~%float64    dr_time~%PoseEuler  pose_euler~%================================================================================~%MSG: common_msgs/PoseEuler~%Vector3WithCovariance 	position~%EulerWithCovariance 	rotation~%================================================================================~%MSG: common_msgs/Vector3WithCovariance~%UnsureVar 	x~%UnsureVar 	y~%UnsureVar 	z~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%================================================================================~%MSG: common_msgs/EulerWithCovariance~%UnsureVar 	roll~%UnsureVar 	pitch~%UnsureVar 	yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DRPoseWithTime>))
  (cl:+ 0
     4
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_euler))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DRPoseWithTime>))
  "Converts a ROS message object to a list"
  (cl:list 'DRPoseWithTime
    (cl:cons ':week (week msg))
    (cl:cons ':utctime (utctime msg))
    (cl:cons ':dr_time (dr_time msg))
    (cl:cons ':pose_euler (pose_euler msg))
))
