; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude SingleTrafficLight.msg.html

(cl:defclass <SingleTrafficLight> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (tracking_time
    :reader tracking_time
    :initarg :tracking_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass SingleTrafficLight (<SingleTrafficLight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SingleTrafficLight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SingleTrafficLight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<SingleTrafficLight> is deprecated: use common_msgs-msg:SingleTrafficLight instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <SingleTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:color-val is deprecated.  Use common_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SingleTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:id-val is deprecated.  Use common_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <SingleTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:confidence-val is deprecated.  Use common_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'tracking_time-val :lambda-list '(m))
(cl:defmethod tracking_time-val ((m <SingleTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:tracking_time-val is deprecated.  Use common_msgs-msg:tracking_time instead.")
  (tracking_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SingleTrafficLight>) ostream)
  "Serializes a message object of type '<SingleTrafficLight>"
  (cl:let* ((signed (cl:slot-value msg 'color)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tracking_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SingleTrafficLight>) istream)
  "Deserializes a message object of type '<SingleTrafficLight>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tracking_time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SingleTrafficLight>)))
  "Returns string type for a message object of type '<SingleTrafficLight>"
  "common_msgs/SingleTrafficLight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SingleTrafficLight)))
  "Returns string type for a message object of type 'SingleTrafficLight"
  "common_msgs/SingleTrafficLight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SingleTrafficLight>)))
  "Returns md5sum for a message object of type '<SingleTrafficLight>"
  "2061b2d7b133ea8f4ea7826bb7846d41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SingleTrafficLight)))
  "Returns md5sum for a message object of type 'SingleTrafficLight"
  "2061b2d7b133ea8f4ea7826bb7846d41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SingleTrafficLight>)))
  "Returns full string definition for message of type '<SingleTrafficLight>"
  (cl:format cl:nil "int8 color #UNKNOWN_COLOR = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;~%int32 id # Traffic light string-ID in the map data.~%float32 confidence  #How confidence about the detected results, between 0 and 1.~%float32 tracking_time  # Duration of the traffic light since detected.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SingleTrafficLight)))
  "Returns full string definition for message of type 'SingleTrafficLight"
  (cl:format cl:nil "int8 color #UNKNOWN_COLOR = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;~%int32 id # Traffic light string-ID in the map data.~%float32 confidence  #How confidence about the detected results, between 0 and 1.~%float32 tracking_time  # Duration of the traffic light since detected.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SingleTrafficLight>))
  (cl:+ 0
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SingleTrafficLight>))
  "Converts a ROS message object to a list"
  (cl:list 'SingleTrafficLight
    (cl:cons ':color (color msg))
    (cl:cons ':id (id msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':tracking_time (tracking_time msg))
))
