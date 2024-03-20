; Auto-generated. Do not edit!


(cl:in-package diag_msgs-msg)


;//! \htmlinclude ErrorcodeInfo.msg.html

(cl:defclass <ErrorcodeInfo> (roslisp-msg-protocol:ros-message)
  ((error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (error_level
    :reader error_level
    :initarg :error_level
    :type cl:integer
    :initform 0)
   (error_level_hmi
    :reader error_level_hmi
    :initarg :error_level_hmi
    :type cl:integer
    :initform 0))
)

(cl:defclass ErrorcodeInfo (<ErrorcodeInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ErrorcodeInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ErrorcodeInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diag_msgs-msg:<ErrorcodeInfo> is deprecated: use diag_msgs-msg:ErrorcodeInfo instead.")))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <ErrorcodeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diag_msgs-msg:error_code-val is deprecated.  Use diag_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'error_level-val :lambda-list '(m))
(cl:defmethod error_level-val ((m <ErrorcodeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diag_msgs-msg:error_level-val is deprecated.  Use diag_msgs-msg:error_level instead.")
  (error_level m))

(cl:ensure-generic-function 'error_level_hmi-val :lambda-list '(m))
(cl:defmethod error_level_hmi-val ((m <ErrorcodeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diag_msgs-msg:error_level_hmi-val is deprecated.  Use diag_msgs-msg:error_level_hmi instead.")
  (error_level_hmi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ErrorcodeInfo>) ostream)
  "Serializes a message object of type '<ErrorcodeInfo>"
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'error_level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'error_level_hmi)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ErrorcodeInfo>) istream)
  "Deserializes a message object of type '<ErrorcodeInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_level) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_level_hmi) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ErrorcodeInfo>)))
  "Returns string type for a message object of type '<ErrorcodeInfo>"
  "diag_msgs/ErrorcodeInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ErrorcodeInfo)))
  "Returns string type for a message object of type 'ErrorcodeInfo"
  "diag_msgs/ErrorcodeInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ErrorcodeInfo>)))
  "Returns md5sum for a message object of type '<ErrorcodeInfo>"
  "c4a20555fb21237671de7ca17abb84ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ErrorcodeInfo)))
  "Returns md5sum for a message object of type 'ErrorcodeInfo"
  "c4a20555fb21237671de7ca17abb84ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ErrorcodeInfo>)))
  "Returns full string definition for message of type '<ErrorcodeInfo>"
  (cl:format cl:nil "int32     error_code~%int32     error_level~%int32     error_level_hmi~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ErrorcodeInfo)))
  "Returns full string definition for message of type 'ErrorcodeInfo"
  (cl:format cl:nil "int32     error_code~%int32     error_level~%int32     error_level_hmi~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ErrorcodeInfo>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ErrorcodeInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ErrorcodeInfo
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':error_level (error_level msg))
    (cl:cons ':error_level_hmi (error_level_hmi msg))
))
