; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude Twist.msg.html

(cl:defclass <Twist> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type common_msgs-msg:Vector3WithCovariance
    :initform (cl:make-instance 'common_msgs-msg:Vector3WithCovariance))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type common_msgs-msg:Vector3WithCovariance
    :initform (cl:make-instance 'common_msgs-msg:Vector3WithCovariance)))
)

(cl:defclass Twist (<Twist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Twist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Twist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<Twist> is deprecated: use common_msgs-msg:Twist instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Twist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:velocity-val is deprecated.  Use common_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <Twist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:angular_velocity-val is deprecated.  Use common_msgs-msg:angular_velocity instead.")
  (angular_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Twist>) ostream)
  "Serializes a message object of type '<Twist>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Twist>) istream)
  "Deserializes a message object of type '<Twist>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Twist>)))
  "Returns string type for a message object of type '<Twist>"
  "common_msgs/Twist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Twist)))
  "Returns string type for a message object of type 'Twist"
  "common_msgs/Twist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Twist>)))
  "Returns md5sum for a message object of type '<Twist>"
  "89e6e36950801075ca0366daae3a0780")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Twist)))
  "Returns md5sum for a message object of type 'Twist"
  "89e6e36950801075ca0366daae3a0780")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Twist>)))
  "Returns full string definition for message of type '<Twist>"
  (cl:format cl:nil "Vector3WithCovariance 	velocity~%Vector3WithCovariance 	angular_velocity~%================================================================================~%MSG: common_msgs/Vector3WithCovariance~%UnsureVar 	x~%UnsureVar 	y~%UnsureVar 	z~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Twist)))
  "Returns full string definition for message of type 'Twist"
  (cl:format cl:nil "Vector3WithCovariance 	velocity~%Vector3WithCovariance 	angular_velocity~%================================================================================~%MSG: common_msgs/Vector3WithCovariance~%UnsureVar 	x~%UnsureVar 	y~%UnsureVar 	z~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Twist>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Twist>))
  "Converts a ROS message object to a list"
  (cl:list 'Twist
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
))
