; Auto-generated. Do not edit!


(cl:in-package navi_msgs-msg)


;//! \htmlinclude NavParas.msg.html

(cl:defclass <NavParas> (roslisp-msg-protocol:ros-message)
  ((nav_operate
    :reader nav_operate
    :initarg :nav_operate
    :type cl:string
    :initform "")
   (station_id
    :reader station_id
    :initarg :station_id
    :type cl:integer
    :initform 0)
   (end_point
    :reader end_point
    :initarg :end_point
    :type navi_msgs-msg:Point2D
    :initform (cl:make-instance 'navi_msgs-msg:Point2D)))
)

(cl:defclass NavParas (<NavParas>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavParas>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavParas)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navi_msgs-msg:<NavParas> is deprecated: use navi_msgs-msg:NavParas instead.")))

(cl:ensure-generic-function 'nav_operate-val :lambda-list '(m))
(cl:defmethod nav_operate-val ((m <NavParas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:nav_operate-val is deprecated.  Use navi_msgs-msg:nav_operate instead.")
  (nav_operate m))

(cl:ensure-generic-function 'station_id-val :lambda-list '(m))
(cl:defmethod station_id-val ((m <NavParas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:station_id-val is deprecated.  Use navi_msgs-msg:station_id instead.")
  (station_id m))

(cl:ensure-generic-function 'end_point-val :lambda-list '(m))
(cl:defmethod end_point-val ((m <NavParas>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:end_point-val is deprecated.  Use navi_msgs-msg:end_point instead.")
  (end_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavParas>) ostream)
  "Serializes a message object of type '<NavParas>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'nav_operate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'nav_operate))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'station_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'station_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavParas>) istream)
  "Deserializes a message object of type '<NavParas>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nav_operate) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'nav_operate) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'station_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavParas>)))
  "Returns string type for a message object of type '<NavParas>"
  "navi_msgs/NavParas")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavParas)))
  "Returns string type for a message object of type 'NavParas"
  "navi_msgs/NavParas")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavParas>)))
  "Returns md5sum for a message object of type '<NavParas>"
  "922cf09137c76b3b8e2d97ff35c31b17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavParas)))
  "Returns md5sum for a message object of type 'NavParas"
  "922cf09137c76b3b8e2d97ff35c31b17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavParas>)))
  "Returns full string definition for message of type '<NavParas>"
  (cl:format cl:nil "string nav_operate ~%uint32 station_id~%Point2D end_point~%~%~%================================================================================~%MSG: navi_msgs/Point2D~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavParas)))
  "Returns full string definition for message of type 'NavParas"
  (cl:format cl:nil "string nav_operate ~%uint32 station_id~%Point2D end_point~%~%~%================================================================================~%MSG: navi_msgs/Point2D~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavParas>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'nav_operate))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavParas>))
  "Converts a ROS message object to a list"
  (cl:list 'NavParas
    (cl:cons ':nav_operate (nav_operate msg))
    (cl:cons ':station_id (station_id msg))
    (cl:cons ':end_point (end_point msg))
))
