; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude MissionPoint.msg.html

(cl:defclass <MissionPoint> (roslisp-msg-protocol:ros-message)
  ((xg
    :reader xg
    :initarg :xg
    :type cl:float
    :initform 0.0)
   (yg
    :reader yg
    :initarg :yg
    :type cl:float
    :initform 0.0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0))
)

(cl:defclass MissionPoint (<MissionPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<MissionPoint> is deprecated: use common_msgs-msg:MissionPoint instead.")))

(cl:ensure-generic-function 'xg-val :lambda-list '(m))
(cl:defmethod xg-val ((m <MissionPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:xg-val is deprecated.  Use common_msgs-msg:xg instead.")
  (xg m))

(cl:ensure-generic-function 'yg-val :lambda-list '(m))
(cl:defmethod yg-val ((m <MissionPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:yg-val is deprecated.  Use common_msgs-msg:yg instead.")
  (yg m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <MissionPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:heading-val is deprecated.  Use common_msgs-msg:heading instead.")
  (heading m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionPoint>) ostream)
  "Serializes a message object of type '<MissionPoint>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionPoint>) istream)
  "Deserializes a message object of type '<MissionPoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xg) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yg) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionPoint>)))
  "Returns string type for a message object of type '<MissionPoint>"
  "common_msgs/MissionPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionPoint)))
  "Returns string type for a message object of type 'MissionPoint"
  "common_msgs/MissionPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionPoint>)))
  "Returns md5sum for a message object of type '<MissionPoint>"
  "98d4522e42072043a81f851094862e51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionPoint)))
  "Returns md5sum for a message object of type 'MissionPoint"
  "98d4522e42072043a81f851094862e51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionPoint>)))
  "Returns full string definition for message of type '<MissionPoint>"
  (cl:format cl:nil "float64 xg~%float64 yg~%float64 heading~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionPoint)))
  "Returns full string definition for message of type 'MissionPoint"
  (cl:format cl:nil "float64 xg~%float64 yg~%float64 heading~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionPoint>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionPoint
    (cl:cons ':xg (xg msg))
    (cl:cons ':yg (yg msg))
    (cl:cons ':heading (heading msg))
))
