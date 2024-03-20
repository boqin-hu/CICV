; Auto-generated. Do not edit!


(cl:in-package navi_msgs-msg)


;//! \htmlinclude TimeStamp.msg.html

(cl:defclass <TimeStamp> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type cl:integer
    :initform 0)
   (ns
    :reader ns
    :initarg :ns
    :type cl:integer
    :initform 0))
)

(cl:defclass TimeStamp (<TimeStamp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeStamp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeStamp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navi_msgs-msg:<TimeStamp> is deprecated: use navi_msgs-msg:TimeStamp instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <TimeStamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:s-val is deprecated.  Use navi_msgs-msg:s instead.")
  (s m))

(cl:ensure-generic-function 'ns-val :lambda-list '(m))
(cl:defmethod ns-val ((m <TimeStamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:ns-val is deprecated.  Use navi_msgs-msg:ns instead.")
  (ns m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeStamp>) ostream)
  "Serializes a message object of type '<TimeStamp>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 's)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 's)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 's)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 's)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 's)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 's)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 's)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 's)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ns)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeStamp>) istream)
  "Deserializes a message object of type '<TimeStamp>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 's)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 's)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 's)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 's)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 's)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 's)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 's)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 's)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ns)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeStamp>)))
  "Returns string type for a message object of type '<TimeStamp>"
  "navi_msgs/TimeStamp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeStamp)))
  "Returns string type for a message object of type 'TimeStamp"
  "navi_msgs/TimeStamp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeStamp>)))
  "Returns md5sum for a message object of type '<TimeStamp>"
  "239b6a0a87ff2c711f5fde0f2b68a67d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeStamp)))
  "Returns md5sum for a message object of type 'TimeStamp"
  "239b6a0a87ff2c711f5fde0f2b68a67d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeStamp>)))
  "Returns full string definition for message of type '<TimeStamp>"
  (cl:format cl:nil "uint64 s~%uint64 ns~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeStamp)))
  "Returns full string definition for message of type 'TimeStamp"
  (cl:format cl:nil "uint64 s~%uint64 ns~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeStamp>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeStamp>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeStamp
    (cl:cons ':s (s msg))
    (cl:cons ':ns (ns msg))
))
