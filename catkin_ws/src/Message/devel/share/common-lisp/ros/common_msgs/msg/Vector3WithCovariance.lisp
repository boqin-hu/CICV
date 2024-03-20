; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude Vector3WithCovariance.msg.html

(cl:defclass <Vector3WithCovariance> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type common_msgs-msg:UnsureVar
    :initform (cl:make-instance 'common_msgs-msg:UnsureVar))
   (y
    :reader y
    :initarg :y
    :type common_msgs-msg:UnsureVar
    :initform (cl:make-instance 'common_msgs-msg:UnsureVar))
   (z
    :reader z
    :initarg :z
    :type common_msgs-msg:UnsureVar
    :initform (cl:make-instance 'common_msgs-msg:UnsureVar)))
)

(cl:defclass Vector3WithCovariance (<Vector3WithCovariance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vector3WithCovariance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vector3WithCovariance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<Vector3WithCovariance> is deprecated: use common_msgs-msg:Vector3WithCovariance instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Vector3WithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:x-val is deprecated.  Use common_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Vector3WithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:y-val is deprecated.  Use common_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Vector3WithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:z-val is deprecated.  Use common_msgs-msg:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vector3WithCovariance>) ostream)
  "Serializes a message object of type '<Vector3WithCovariance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'z) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vector3WithCovariance>) istream)
  "Deserializes a message object of type '<Vector3WithCovariance>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'z) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vector3WithCovariance>)))
  "Returns string type for a message object of type '<Vector3WithCovariance>"
  "common_msgs/Vector3WithCovariance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vector3WithCovariance)))
  "Returns string type for a message object of type 'Vector3WithCovariance"
  "common_msgs/Vector3WithCovariance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vector3WithCovariance>)))
  "Returns md5sum for a message object of type '<Vector3WithCovariance>"
  "f33be6fa24c988ddc4f60ceb1dee662b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vector3WithCovariance)))
  "Returns md5sum for a message object of type 'Vector3WithCovariance"
  "f33be6fa24c988ddc4f60ceb1dee662b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vector3WithCovariance>)))
  "Returns full string definition for message of type '<Vector3WithCovariance>"
  (cl:format cl:nil "UnsureVar 	x~%UnsureVar 	y~%UnsureVar 	z~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vector3WithCovariance)))
  "Returns full string definition for message of type 'Vector3WithCovariance"
  (cl:format cl:nil "UnsureVar 	x~%UnsureVar 	y~%UnsureVar 	z~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vector3WithCovariance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'z))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vector3WithCovariance>))
  "Converts a ROS message object to a list"
  (cl:list 'Vector3WithCovariance
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
