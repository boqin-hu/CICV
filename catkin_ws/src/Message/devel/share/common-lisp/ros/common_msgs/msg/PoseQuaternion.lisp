; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude PoseQuaternion.msg.html

(cl:defclass <PoseQuaternion> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type common_msgs-msg:Vector3WithCovariance
    :initform (cl:make-instance 'common_msgs-msg:Vector3WithCovariance))
   (quaternion
    :reader quaternion
    :initarg :quaternion
    :type common_msgs-msg:Quaternion
    :initform (cl:make-instance 'common_msgs-msg:Quaternion))
   (rpy_covariance
    :reader rpy_covariance
    :initarg :rpy_covariance
    :type common_msgs-msg:Vector3
    :initform (cl:make-instance 'common_msgs-msg:Vector3)))
)

(cl:defclass PoseQuaternion (<PoseQuaternion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseQuaternion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseQuaternion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<PoseQuaternion> is deprecated: use common_msgs-msg:PoseQuaternion instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PoseQuaternion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:position-val is deprecated.  Use common_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'quaternion-val :lambda-list '(m))
(cl:defmethod quaternion-val ((m <PoseQuaternion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:quaternion-val is deprecated.  Use common_msgs-msg:quaternion instead.")
  (quaternion m))

(cl:ensure-generic-function 'rpy_covariance-val :lambda-list '(m))
(cl:defmethod rpy_covariance-val ((m <PoseQuaternion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:rpy_covariance-val is deprecated.  Use common_msgs-msg:rpy_covariance instead.")
  (rpy_covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseQuaternion>) ostream)
  "Serializes a message object of type '<PoseQuaternion>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'quaternion) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy_covariance) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseQuaternion>) istream)
  "Deserializes a message object of type '<PoseQuaternion>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'quaternion) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy_covariance) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseQuaternion>)))
  "Returns string type for a message object of type '<PoseQuaternion>"
  "common_msgs/PoseQuaternion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseQuaternion)))
  "Returns string type for a message object of type 'PoseQuaternion"
  "common_msgs/PoseQuaternion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseQuaternion>)))
  "Returns md5sum for a message object of type '<PoseQuaternion>"
  "c198d5fc129720a7ae62198ae0b52dfa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseQuaternion)))
  "Returns md5sum for a message object of type 'PoseQuaternion"
  "c198d5fc129720a7ae62198ae0b52dfa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseQuaternion>)))
  "Returns full string definition for message of type '<PoseQuaternion>"
  (cl:format cl:nil "Vector3WithCovariance 	position~%Quaternion 	quaternion~%Vector3  rpy_covariance	~%================================================================================~%MSG: common_msgs/Vector3WithCovariance~%UnsureVar 	x~%UnsureVar 	y~%UnsureVar 	z~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%================================================================================~%MSG: common_msgs/Quaternion~%float64 	x~%float64 	y~%float64 	z~%float64 	w~%================================================================================~%MSG: common_msgs/Vector3~%float64 	x~%float64 	y~%float64 	z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseQuaternion)))
  "Returns full string definition for message of type 'PoseQuaternion"
  (cl:format cl:nil "Vector3WithCovariance 	position~%Quaternion 	quaternion~%Vector3  rpy_covariance	~%================================================================================~%MSG: common_msgs/Vector3WithCovariance~%UnsureVar 	x~%UnsureVar 	y~%UnsureVar 	z~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%================================================================================~%MSG: common_msgs/Quaternion~%float64 	x~%float64 	y~%float64 	z~%float64 	w~%================================================================================~%MSG: common_msgs/Vector3~%float64 	x~%float64 	y~%float64 	z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseQuaternion>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'quaternion))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy_covariance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseQuaternion>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseQuaternion
    (cl:cons ':position (position msg))
    (cl:cons ':quaternion (quaternion msg))
    (cl:cons ':rpy_covariance (rpy_covariance msg))
))
