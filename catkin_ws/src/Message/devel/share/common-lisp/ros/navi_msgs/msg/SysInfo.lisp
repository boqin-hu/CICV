; Auto-generated. Do not edit!


(cl:in-package navi_msgs-msg)


;//! \htmlinclude SysInfo.msg.html

(cl:defclass <SysInfo> (roslisp-msg-protocol:ros-message)
  ((cpu_occupied
    :reader cpu_occupied
    :initarg :cpu_occupied
    :type cl:float
    :initform 0.0)
   (mem_occupied
    :reader mem_occupied
    :initarg :mem_occupied
    :type cl:float
    :initform 0.0)
   (cur_mileage
    :reader cur_mileage
    :initarg :cur_mileage
    :type cl:float
    :initform 0.0)
   (history_mileage
    :reader history_mileage
    :initarg :history_mileage
    :type cl:float
    :initform 0.0))
)

(cl:defclass SysInfo (<SysInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navi_msgs-msg:<SysInfo> is deprecated: use navi_msgs-msg:SysInfo instead.")))

(cl:ensure-generic-function 'cpu_occupied-val :lambda-list '(m))
(cl:defmethod cpu_occupied-val ((m <SysInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:cpu_occupied-val is deprecated.  Use navi_msgs-msg:cpu_occupied instead.")
  (cpu_occupied m))

(cl:ensure-generic-function 'mem_occupied-val :lambda-list '(m))
(cl:defmethod mem_occupied-val ((m <SysInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:mem_occupied-val is deprecated.  Use navi_msgs-msg:mem_occupied instead.")
  (mem_occupied m))

(cl:ensure-generic-function 'cur_mileage-val :lambda-list '(m))
(cl:defmethod cur_mileage-val ((m <SysInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:cur_mileage-val is deprecated.  Use navi_msgs-msg:cur_mileage instead.")
  (cur_mileage m))

(cl:ensure-generic-function 'history_mileage-val :lambda-list '(m))
(cl:defmethod history_mileage-val ((m <SysInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:history_mileage-val is deprecated.  Use navi_msgs-msg:history_mileage instead.")
  (history_mileage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysInfo>) ostream)
  "Serializes a message object of type '<SysInfo>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cpu_occupied))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mem_occupied))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cur_mileage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'history_mileage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysInfo>) istream)
  "Deserializes a message object of type '<SysInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpu_occupied) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mem_occupied) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cur_mileage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'history_mileage) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysInfo>)))
  "Returns string type for a message object of type '<SysInfo>"
  "navi_msgs/SysInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysInfo)))
  "Returns string type for a message object of type 'SysInfo"
  "navi_msgs/SysInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysInfo>)))
  "Returns md5sum for a message object of type '<SysInfo>"
  "32c91a41efe8d7f00d4b592a7b9c6532")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysInfo)))
  "Returns md5sum for a message object of type 'SysInfo"
  "32c91a41efe8d7f00d4b592a7b9c6532")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysInfo>)))
  "Returns full string definition for message of type '<SysInfo>"
  (cl:format cl:nil "float32  cpu_occupied~%float32  mem_occupied~%float64  cur_mileage~%float64  history_mileage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysInfo)))
  "Returns full string definition for message of type 'SysInfo"
  (cl:format cl:nil "float32  cpu_occupied~%float32  mem_occupied~%float64  cur_mileage~%float64  history_mileage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysInfo>))
  (cl:+ 0
     4
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SysInfo
    (cl:cons ':cpu_occupied (cpu_occupied msg))
    (cl:cons ':mem_occupied (mem_occupied msg))
    (cl:cons ':cur_mileage (cur_mileage msg))
    (cl:cons ':history_mileage (history_mileage msg))
))
