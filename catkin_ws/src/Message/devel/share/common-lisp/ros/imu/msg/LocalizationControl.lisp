; Auto-generated. Do not edit!


(cl:in-package imu-msg)


;//! \htmlinclude LocalizationControl.msg.html

(cl:defclass <LocalizationControl> (roslisp-msg-protocol:ros-message)
  ((is_lidar_open
    :reader is_lidar_open
    :initarg :is_lidar_open
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LocalizationControl (<LocalizationControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizationControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizationControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imu-msg:<LocalizationControl> is deprecated: use imu-msg:LocalizationControl instead.")))

(cl:ensure-generic-function 'is_lidar_open-val :lambda-list '(m))
(cl:defmethod is_lidar_open-val ((m <LocalizationControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu-msg:is_lidar_open-val is deprecated.  Use imu-msg:is_lidar_open instead.")
  (is_lidar_open m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizationControl>) ostream)
  "Serializes a message object of type '<LocalizationControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_lidar_open) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizationControl>) istream)
  "Deserializes a message object of type '<LocalizationControl>"
    (cl:setf (cl:slot-value msg 'is_lidar_open) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizationControl>)))
  "Returns string type for a message object of type '<LocalizationControl>"
  "imu/LocalizationControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizationControl)))
  "Returns string type for a message object of type 'LocalizationControl"
  "imu/LocalizationControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizationControl>)))
  "Returns md5sum for a message object of type '<LocalizationControl>"
  "a5bdebbf6b9fb5d72cc29e9f5a1240ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizationControl)))
  "Returns md5sum for a message object of type 'LocalizationControl"
  "a5bdebbf6b9fb5d72cc29e9f5a1240ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizationControl>)))
  "Returns full string definition for message of type '<LocalizationControl>"
  (cl:format cl:nil "bool is_lidar_open~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizationControl)))
  "Returns full string definition for message of type 'LocalizationControl"
  (cl:format cl:nil "bool is_lidar_open~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizationControl>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizationControl>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizationControl
    (cl:cons ':is_lidar_open (is_lidar_open msg))
))
