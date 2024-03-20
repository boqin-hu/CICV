; Auto-generated. Do not edit!


(cl:in-package canbus_msgs-msg)


;//! \htmlinclude CanFault.msg.html

(cl:defclass <CanFault> (roslisp-msg-protocol:ros-message)
  ((can_fault_flag
    :reader can_fault_flag
    :initarg :can_fault_flag
    :type cl:fixnum
    :initform 0)
   (can103_fault_flag
    :reader can103_fault_flag
    :initarg :can103_fault_flag
    :type cl:fixnum
    :initform 0)
   (mmw_lidar0_flag
    :reader mmw_lidar0_flag
    :initarg :mmw_lidar0_flag
    :type cl:fixnum
    :initform 0)
   (mmw_lidar1_flag
    :reader mmw_lidar1_flag
    :initarg :mmw_lidar1_flag
    :type cl:fixnum
    :initform 0)
   (mmw_lidar3_flag
    :reader mmw_lidar3_flag
    :initarg :mmw_lidar3_flag
    :type cl:fixnum
    :initform 0)
   (mmw_lidar5_flag
    :reader mmw_lidar5_flag
    :initarg :mmw_lidar5_flag
    :type cl:fixnum
    :initform 0)
   (mmw_lidar7_flag
    :reader mmw_lidar7_flag
    :initarg :mmw_lidar7_flag
    :type cl:fixnum
    :initform 0)
   (ult_5C8_flag
    :reader ult_5C8_flag
    :initarg :ult_5C8_flag
    :type cl:fixnum
    :initform 0)
   (ult_5C9_flag
    :reader ult_5C9_flag
    :initarg :ult_5C9_flag
    :type cl:fixnum
    :initform 0)
   (can_busoff_flag
    :reader can_busoff_flag
    :initarg :can_busoff_flag
    :type cl:fixnum
    :initform 0)
   (can103_busoff_flag
    :reader can103_busoff_flag
    :initarg :can103_busoff_flag
    :type cl:fixnum
    :initform 0)
   (canbus_module_level1_flag
    :reader canbus_module_level1_flag
    :initarg :canbus_module_level1_flag
    :type cl:fixnum
    :initform 0)
   (canbus_module_level2_flag
    :reader canbus_module_level2_flag
    :initarg :canbus_module_level2_flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CanFault (<CanFault>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CanFault>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CanFault)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name canbus_msgs-msg:<CanFault> is deprecated: use canbus_msgs-msg:CanFault instead.")))

(cl:ensure-generic-function 'can_fault_flag-val :lambda-list '(m))
(cl:defmethod can_fault_flag-val ((m <CanFault>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader canbus_msgs-msg:can_fault_flag-val is deprecated.  Use canbus_msgs-msg:can_fault_flag instead.")
  (can_fault_flag m))

(cl:ensure-generic-function 'can103_fault_flag-val :lambda-list '(m))
(cl:defmethod can103_fault_flag-val ((m <CanFault>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader canbus_msgs-msg:can103_fault_flag-val is deprecated.  Use canbus_msgs-msg:can103_fault_flag instead.")
  (can103_fault_flag m))

(cl:ensure-generic-function 'mmw_lidar0_flag-val :lambda-list '(m))
(cl:defmethod mmw_lidar0_flag-val ((m <CanFault>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader canbus_msgs-msg:mmw_lidar0_flag-val is deprecated.  Use canbus_msgs-msg:mmw_lidar0_flag instead.")
  (mmw_lidar0_flag m))

(cl:ensure-generic-function 'mmw_lidar1_flag-val :lambda-list '(m))
(cl:defmethod mmw_lidar1_flag-val ((m <CanFault>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader canbus_msgs-msg:mmw_lidar1_flag-val is deprecated.  Use canbus_msgs-msg:mmw_lidar1_flag instead.")
  (mmw_lidar1_flag m))

(cl:ensure-generic-function 'mmw_lidar3_flag-val :lambda-list '(m))
(cl:defmethod mmw_lidar3_flag-val ((m <CanFault>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader canbus_msgs-msg:mmw_lidar3_flag-val is deprecated.  Use canbus_msgs-msg:mmw_lidar3_flag instead.")
  (mmw_lidar3_flag m))

(cl:ensure-generic-function 'mmw_lidar5_flag-val :lambda-list '(m))
(cl:defmethod mmw_lidar5_flag-val ((m <CanFault>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader canbus_msgs-msg:mmw_lidar5_flag-val is deprecated.  Use canbus_msgs-msg:mmw_lidar5_flag instead.")
  (mmw_lidar5_flag m))

(cl:ensure-generic-function 'mmw_lidar7_flag-val :lambda-list '(m))
(cl:defmethod mmw_lidar7_flag-val ((m <CanFault>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader canbus_msgs-msg:mmw_lidar7_flag-val is deprecated.  Use canbus_msgs-msg:mmw_lidar7_flag instead.")
  (mmw_lidar7_flag m))

(cl:ensure-generic-function 'ult_5C8_flag-val :lambda-list '(m))
(cl:defmethod ult_5C8_flag-val ((m <CanFault>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader canbus_msgs-msg:ult_5C8_flag-val is deprecated.  Use canbus_msgs-msg:ult_5C8_flag instead.")
  (ult_5C8_flag m))

(cl:ensure-generic-function 'ult_5C9_flag-val :lambda-list '(m))
(cl:defmethod ult_5C9_flag-val ((m <CanFault>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader canbus_msgs-msg:ult_5C9_flag-val is deprecated.  Use canbus_msgs-msg:ult_5C9_flag instead.")
  (ult_5C9_flag m))

(cl:ensure-generic-function 'can_busoff_flag-val :lambda-list '(m))
(cl:defmethod can_busoff_flag-val ((m <CanFault>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader canbus_msgs-msg:can_busoff_flag-val is deprecated.  Use canbus_msgs-msg:can_busoff_flag instead.")
  (can_busoff_flag m))

(cl:ensure-generic-function 'can103_busoff_flag-val :lambda-list '(m))
(cl:defmethod can103_busoff_flag-val ((m <CanFault>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader canbus_msgs-msg:can103_busoff_flag-val is deprecated.  Use canbus_msgs-msg:can103_busoff_flag instead.")
  (can103_busoff_flag m))

(cl:ensure-generic-function 'canbus_module_level1_flag-val :lambda-list '(m))
(cl:defmethod canbus_module_level1_flag-val ((m <CanFault>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader canbus_msgs-msg:canbus_module_level1_flag-val is deprecated.  Use canbus_msgs-msg:canbus_module_level1_flag instead.")
  (canbus_module_level1_flag m))

(cl:ensure-generic-function 'canbus_module_level2_flag-val :lambda-list '(m))
(cl:defmethod canbus_module_level2_flag-val ((m <CanFault>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader canbus_msgs-msg:canbus_module_level2_flag-val is deprecated.  Use canbus_msgs-msg:canbus_module_level2_flag instead.")
  (canbus_module_level2_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CanFault>) ostream)
  "Serializes a message object of type '<CanFault>"
  (cl:let* ((signed (cl:slot-value msg 'can_fault_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'can103_fault_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mmw_lidar0_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mmw_lidar1_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mmw_lidar3_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mmw_lidar5_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mmw_lidar7_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ult_5C8_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ult_5C9_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'can_busoff_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'can103_busoff_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'canbus_module_level1_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'canbus_module_level2_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CanFault>) istream)
  "Deserializes a message object of type '<CanFault>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'can_fault_flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'can103_fault_flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mmw_lidar0_flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mmw_lidar1_flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mmw_lidar3_flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mmw_lidar5_flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mmw_lidar7_flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ult_5C8_flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ult_5C9_flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'can_busoff_flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'can103_busoff_flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'canbus_module_level1_flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'canbus_module_level2_flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CanFault>)))
  "Returns string type for a message object of type '<CanFault>"
  "canbus_msgs/CanFault")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CanFault)))
  "Returns string type for a message object of type 'CanFault"
  "canbus_msgs/CanFault")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CanFault>)))
  "Returns md5sum for a message object of type '<CanFault>"
  "c8ae15ad4df221ade0f55c8006aaa5ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CanFault)))
  "Returns md5sum for a message object of type 'CanFault"
  "c8ae15ad4df221ade0f55c8006aaa5ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CanFault>)))
  "Returns full string definition for message of type '<CanFault>"
  (cl:format cl:nil "int16   can_fault_flag~%int16   can103_fault_flag~%int16   mmw_lidar0_flag~%int16   mmw_lidar1_flag~%int16   mmw_lidar3_flag~%int16   mmw_lidar5_flag~%int16   mmw_lidar7_flag~%int16   ult_5C8_flag~%int16   ult_5C9_flag~%int16   can_busoff_flag~%int16   can103_busoff_flag~%int16   canbus_module_level1_flag~%int16   canbus_module_level2_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CanFault)))
  "Returns full string definition for message of type 'CanFault"
  (cl:format cl:nil "int16   can_fault_flag~%int16   can103_fault_flag~%int16   mmw_lidar0_flag~%int16   mmw_lidar1_flag~%int16   mmw_lidar3_flag~%int16   mmw_lidar5_flag~%int16   mmw_lidar7_flag~%int16   ult_5C8_flag~%int16   ult_5C9_flag~%int16   can_busoff_flag~%int16   can103_busoff_flag~%int16   canbus_module_level1_flag~%int16   canbus_module_level2_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CanFault>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CanFault>))
  "Converts a ROS message object to a list"
  (cl:list 'CanFault
    (cl:cons ':can_fault_flag (can_fault_flag msg))
    (cl:cons ':can103_fault_flag (can103_fault_flag msg))
    (cl:cons ':mmw_lidar0_flag (mmw_lidar0_flag msg))
    (cl:cons ':mmw_lidar1_flag (mmw_lidar1_flag msg))
    (cl:cons ':mmw_lidar3_flag (mmw_lidar3_flag msg))
    (cl:cons ':mmw_lidar5_flag (mmw_lidar5_flag msg))
    (cl:cons ':mmw_lidar7_flag (mmw_lidar7_flag msg))
    (cl:cons ':ult_5C8_flag (ult_5C8_flag msg))
    (cl:cons ':ult_5C9_flag (ult_5C9_flag msg))
    (cl:cons ':can_busoff_flag (can_busoff_flag msg))
    (cl:cons ':can103_busoff_flag (can103_busoff_flag msg))
    (cl:cons ':canbus_module_level1_flag (canbus_module_level1_flag msg))
    (cl:cons ':canbus_module_level2_flag (canbus_module_level2_flag msg))
))
