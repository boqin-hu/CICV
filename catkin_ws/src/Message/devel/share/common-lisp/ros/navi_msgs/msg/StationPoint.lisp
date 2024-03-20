; Auto-generated. Do not edit!


(cl:in-package navi_msgs-msg)


;//! \htmlinclude StationPoint.msg.html

(cl:defclass <StationPoint> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (station_id
    :reader station_id
    :initarg :station_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StationPoint (<StationPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StationPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StationPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navi_msgs-msg:<StationPoint> is deprecated: use navi_msgs-msg:StationPoint instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <StationPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:x-val is deprecated.  Use navi_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <StationPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:y-val is deprecated.  Use navi_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'station_id-val :lambda-list '(m))
(cl:defmethod station_id-val ((m <StationPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:station_id-val is deprecated.  Use navi_msgs-msg:station_id instead.")
  (station_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StationPoint>) ostream)
  "Serializes a message object of type '<StationPoint>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'station_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StationPoint>) istream)
  "Deserializes a message object of type '<StationPoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StationPoint>)))
  "Returns string type for a message object of type '<StationPoint>"
  "navi_msgs/StationPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StationPoint)))
  "Returns string type for a message object of type 'StationPoint"
  "navi_msgs/StationPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StationPoint>)))
  "Returns md5sum for a message object of type '<StationPoint>"
  "cd87fa514ed6a37f6daab224ce9b0919")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StationPoint)))
  "Returns md5sum for a message object of type 'StationPoint"
  "cd87fa514ed6a37f6daab224ce9b0919")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StationPoint>)))
  "Returns full string definition for message of type '<StationPoint>"
  (cl:format cl:nil "float64 x~%float64 y~%uint16 station_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StationPoint)))
  "Returns full string definition for message of type 'StationPoint"
  (cl:format cl:nil "float64 x~%float64 y~%uint16 station_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StationPoint>))
  (cl:+ 0
     8
     8
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StationPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'StationPoint
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':station_id (station_id msg))
))
