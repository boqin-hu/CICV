; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude PoseEuler.msg.html

(cl:defclass <PoseEuler> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type common_msgs-msg:Vector3WithCovariance
    :initform (cl:make-instance 'common_msgs-msg:Vector3WithCovariance))
   (rotation
    :reader rotation
    :initarg :rotation
    :type common_msgs-msg:EulerWithCovariance
    :initform (cl:make-instance 'common_msgs-msg:EulerWithCovariance)))
)

(cl:defclass PoseEuler (<PoseEuler>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseEuler>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseEuler)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<PoseEuler> is deprecated: use common_msgs-msg:PoseEuler instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PoseEuler>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:position-val is deprecated.  Use common_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <PoseEuler>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:rotation-val is deprecated.  Use common_msgs-msg:rotation instead.")
  (rotation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseEuler>) ostream)
  "Serializes a message object of type '<PoseEuler>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseEuler>) istream)
  "Deserializes a message object of type '<PoseEuler>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseEuler>)))
  "Returns string type for a message object of type '<PoseEuler>"
  "common_msgs/PoseEuler")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseEuler)))
  "Returns string type for a message object of type 'PoseEuler"
  "common_msgs/PoseEuler")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseEuler>)))
  "Returns md5sum for a message object of type '<PoseEuler>"
  "d8f0dec34a7aced56ccf5b23f28c3a53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseEuler)))
  "Returns md5sum for a message object of type 'PoseEuler"
  "d8f0dec34a7aced56ccf5b23f28c3a53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseEuler>)))
  "Returns full string definition for message of type '<PoseEuler>"
  (cl:format cl:nil "Vector3WithCovariance 	position~%EulerWithCovariance 	rotation~%================================================================================~%MSG: common_msgs/Vector3WithCovariance~%UnsureVar 	x~%UnsureVar 	y~%UnsureVar 	z~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%================================================================================~%MSG: common_msgs/EulerWithCovariance~%UnsureVar 	roll~%UnsureVar 	pitch~%UnsureVar 	yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseEuler)))
  "Returns full string definition for message of type 'PoseEuler"
  (cl:format cl:nil "Vector3WithCovariance 	position~%EulerWithCovariance 	rotation~%================================================================================~%MSG: common_msgs/Vector3WithCovariance~%UnsureVar 	x~%UnsureVar 	y~%UnsureVar 	z~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%================================================================================~%MSG: common_msgs/EulerWithCovariance~%UnsureVar 	roll~%UnsureVar 	pitch~%UnsureVar 	yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseEuler>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseEuler>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseEuler
    (cl:cons ':position (position msg))
    (cl:cons ':rotation (rotation msg))
))
