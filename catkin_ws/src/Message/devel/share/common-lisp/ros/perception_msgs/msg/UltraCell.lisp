; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude UltraCell.msg.html

(cl:defclass <UltraCell> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (direct_dist
    :reader direct_dist
    :initarg :direct_dist
    :type cl:float
    :initform 0.0)
   (indirect_dist
    :reader indirect_dist
    :initarg :indirect_dist
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass UltraCell (<UltraCell>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltraCell>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltraCell)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<UltraCell> is deprecated: use perception_msgs-msg:UltraCell instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <UltraCell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:id-val is deprecated.  Use perception_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'direct_dist-val :lambda-list '(m))
(cl:defmethod direct_dist-val ((m <UltraCell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:direct_dist-val is deprecated.  Use perception_msgs-msg:direct_dist instead.")
  (direct_dist m))

(cl:ensure-generic-function 'indirect_dist-val :lambda-list '(m))
(cl:defmethod indirect_dist-val ((m <UltraCell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:indirect_dist-val is deprecated.  Use perception_msgs-msg:indirect_dist instead.")
  (indirect_dist m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <UltraCell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:status-val is deprecated.  Use perception_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltraCell>) ostream)
  "Serializes a message object of type '<UltraCell>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'direct_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'indirect_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltraCell>) istream)
  "Deserializes a message object of type '<UltraCell>"
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
    (cl:setf (cl:slot-value msg 'direct_dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'indirect_dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltraCell>)))
  "Returns string type for a message object of type '<UltraCell>"
  "perception_msgs/UltraCell")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltraCell)))
  "Returns string type for a message object of type 'UltraCell"
  "perception_msgs/UltraCell")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltraCell>)))
  "Returns md5sum for a message object of type '<UltraCell>"
  "67a3d6d891c19fe871cf9831066c666a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltraCell)))
  "Returns md5sum for a message object of type 'UltraCell"
  "67a3d6d891c19fe871cf9831066c666a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltraCell>)))
  "Returns full string definition for message of type '<UltraCell>"
  (cl:format cl:nil "int32   id~%float32 direct_dist~%float32 indirect_dist~%int32   status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltraCell)))
  "Returns full string definition for message of type 'UltraCell"
  (cl:format cl:nil "int32   id~%float32 direct_dist~%float32 indirect_dist~%int32   status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltraCell>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltraCell>))
  "Converts a ROS message object to a list"
  (cl:list 'UltraCell
    (cl:cons ':id (id msg))
    (cl:cons ':direct_dist (direct_dist msg))
    (cl:cons ':indirect_dist (indirect_dist msg))
    (cl:cons ':status (status msg))
))
