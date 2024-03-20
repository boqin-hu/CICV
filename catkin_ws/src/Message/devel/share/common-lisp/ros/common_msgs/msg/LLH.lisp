; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude LLH.msg.html

(cl:defclass <LLH> (roslisp-msg-protocol:ros-message)
  ((lat
    :reader lat
    :initarg :lat
    :type common_msgs-msg:UnsureVar
    :initform (cl:make-instance 'common_msgs-msg:UnsureVar))
   (lon
    :reader lon
    :initarg :lon
    :type common_msgs-msg:UnsureVar
    :initform (cl:make-instance 'common_msgs-msg:UnsureVar))
   (height
    :reader height
    :initarg :height
    :type common_msgs-msg:UnsureVar
    :initform (cl:make-instance 'common_msgs-msg:UnsureVar)))
)

(cl:defclass LLH (<LLH>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LLH>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LLH)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<LLH> is deprecated: use common_msgs-msg:LLH instead.")))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <LLH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:lat-val is deprecated.  Use common_msgs-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <LLH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:lon-val is deprecated.  Use common_msgs-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <LLH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:height-val is deprecated.  Use common_msgs-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LLH>) ostream)
  "Serializes a message object of type '<LLH>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lat) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lon) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'height) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LLH>) istream)
  "Deserializes a message object of type '<LLH>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lat) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lon) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'height) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LLH>)))
  "Returns string type for a message object of type '<LLH>"
  "common_msgs/LLH")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LLH)))
  "Returns string type for a message object of type 'LLH"
  "common_msgs/LLH")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LLH>)))
  "Returns md5sum for a message object of type '<LLH>"
  "903e0c8677e34a871ad57acebdb42ffd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LLH)))
  "Returns md5sum for a message object of type 'LLH"
  "903e0c8677e34a871ad57acebdb42ffd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LLH>)))
  "Returns full string definition for message of type '<LLH>"
  (cl:format cl:nil "UnsureVar 	lat~%UnsureVar 	lon~%UnsureVar 	height~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LLH)))
  "Returns full string definition for message of type 'LLH"
  (cl:format cl:nil "UnsureVar 	lat~%UnsureVar 	lon~%UnsureVar 	height~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LLH>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lat))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lon))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'height))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LLH>))
  "Converts a ROS message object to a list"
  (cl:list 'LLH
    (cl:cons ':lat (lat msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':height (height msg))
))
