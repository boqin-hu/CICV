; Auto-generated. Do not edit!


(cl:in-package navi_msgs-msg)


;//! \htmlinclude WifiInfo.msg.html

(cl:defclass <WifiInfo> (roslisp-msg-protocol:ros-message)
  ((wifi_name
    :reader wifi_name
    :initarg :wifi_name
    :type cl:string
    :initform "")
   (level
    :reader level
    :initarg :level
    :type cl:integer
    :initform 0))
)

(cl:defclass WifiInfo (<WifiInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WifiInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WifiInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navi_msgs-msg:<WifiInfo> is deprecated: use navi_msgs-msg:WifiInfo instead.")))

(cl:ensure-generic-function 'wifi_name-val :lambda-list '(m))
(cl:defmethod wifi_name-val ((m <WifiInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:wifi_name-val is deprecated.  Use navi_msgs-msg:wifi_name instead.")
  (wifi_name m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <WifiInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:level-val is deprecated.  Use navi_msgs-msg:level instead.")
  (level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WifiInfo>) ostream)
  "Serializes a message object of type '<WifiInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'wifi_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'wifi_name))
  (cl:let* ((signed (cl:slot-value msg 'level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WifiInfo>) istream)
  "Deserializes a message object of type '<WifiInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wifi_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'wifi_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'level) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WifiInfo>)))
  "Returns string type for a message object of type '<WifiInfo>"
  "navi_msgs/WifiInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WifiInfo)))
  "Returns string type for a message object of type 'WifiInfo"
  "navi_msgs/WifiInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WifiInfo>)))
  "Returns md5sum for a message object of type '<WifiInfo>"
  "2208983a79b60f616ffc67f0aae922b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WifiInfo)))
  "Returns md5sum for a message object of type 'WifiInfo"
  "2208983a79b60f616ffc67f0aae922b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WifiInfo>)))
  "Returns full string definition for message of type '<WifiInfo>"
  (cl:format cl:nil "string  wifi_name~%int32  level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WifiInfo)))
  "Returns full string definition for message of type 'WifiInfo"
  (cl:format cl:nil "string  wifi_name~%int32  level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WifiInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'wifi_name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WifiInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'WifiInfo
    (cl:cons ':wifi_name (wifi_name msg))
    (cl:cons ':level (level msg))
))
