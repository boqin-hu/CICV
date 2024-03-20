; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude EulerWithCovariance.msg.html

(cl:defclass <EulerWithCovariance> (roslisp-msg-protocol:ros-message)
  ((roll
    :reader roll
    :initarg :roll
    :type common_msgs-msg:UnsureVar
    :initform (cl:make-instance 'common_msgs-msg:UnsureVar))
   (pitch
    :reader pitch
    :initarg :pitch
    :type common_msgs-msg:UnsureVar
    :initform (cl:make-instance 'common_msgs-msg:UnsureVar))
   (yaw
    :reader yaw
    :initarg :yaw
    :type common_msgs-msg:UnsureVar
    :initform (cl:make-instance 'common_msgs-msg:UnsureVar)))
)

(cl:defclass EulerWithCovariance (<EulerWithCovariance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EulerWithCovariance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EulerWithCovariance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<EulerWithCovariance> is deprecated: use common_msgs-msg:EulerWithCovariance instead.")))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <EulerWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:roll-val is deprecated.  Use common_msgs-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <EulerWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:pitch-val is deprecated.  Use common_msgs-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <EulerWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:yaw-val is deprecated.  Use common_msgs-msg:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EulerWithCovariance>) ostream)
  "Serializes a message object of type '<EulerWithCovariance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roll) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pitch) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'yaw) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EulerWithCovariance>) istream)
  "Deserializes a message object of type '<EulerWithCovariance>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roll) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pitch) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'yaw) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EulerWithCovariance>)))
  "Returns string type for a message object of type '<EulerWithCovariance>"
  "common_msgs/EulerWithCovariance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EulerWithCovariance)))
  "Returns string type for a message object of type 'EulerWithCovariance"
  "common_msgs/EulerWithCovariance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EulerWithCovariance>)))
  "Returns md5sum for a message object of type '<EulerWithCovariance>"
  "2def418964c79641088af4505a57e1a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EulerWithCovariance)))
  "Returns md5sum for a message object of type 'EulerWithCovariance"
  "2def418964c79641088af4505a57e1a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EulerWithCovariance>)))
  "Returns full string definition for message of type '<EulerWithCovariance>"
  (cl:format cl:nil "UnsureVar 	roll~%UnsureVar 	pitch~%UnsureVar 	yaw~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EulerWithCovariance)))
  "Returns full string definition for message of type 'EulerWithCovariance"
  (cl:format cl:nil "UnsureVar 	roll~%UnsureVar 	pitch~%UnsureVar 	yaw~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EulerWithCovariance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roll))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pitch))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'yaw))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EulerWithCovariance>))
  "Converts a ROS message object to a list"
  (cl:list 'EulerWithCovariance
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
))
