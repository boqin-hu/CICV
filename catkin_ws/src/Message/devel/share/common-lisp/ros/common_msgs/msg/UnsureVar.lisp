; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude UnsureVar.msg.html

(cl:defclass <UnsureVar> (roslisp-msg-protocol:ros-message)
  ((variable
    :reader variable
    :initarg :variable
    :type cl:float
    :initform 0.0)
   (var_std
    :reader var_std
    :initarg :var_std
    :type cl:float
    :initform 0.0))
)

(cl:defclass UnsureVar (<UnsureVar>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnsureVar>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnsureVar)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<UnsureVar> is deprecated: use common_msgs-msg:UnsureVar instead.")))

(cl:ensure-generic-function 'variable-val :lambda-list '(m))
(cl:defmethod variable-val ((m <UnsureVar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:variable-val is deprecated.  Use common_msgs-msg:variable instead.")
  (variable m))

(cl:ensure-generic-function 'var_std-val :lambda-list '(m))
(cl:defmethod var_std-val ((m <UnsureVar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:var_std-val is deprecated.  Use common_msgs-msg:var_std instead.")
  (var_std m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnsureVar>) ostream)
  "Serializes a message object of type '<UnsureVar>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'variable))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'var_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnsureVar>) istream)
  "Deserializes a message object of type '<UnsureVar>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'variable) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'var_std) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnsureVar>)))
  "Returns string type for a message object of type '<UnsureVar>"
  "common_msgs/UnsureVar")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnsureVar)))
  "Returns string type for a message object of type 'UnsureVar"
  "common_msgs/UnsureVar")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnsureVar>)))
  "Returns md5sum for a message object of type '<UnsureVar>"
  "fb873e7f683e84becffacbe8b9daf29a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnsureVar)))
  "Returns md5sum for a message object of type 'UnsureVar"
  "fb873e7f683e84becffacbe8b9daf29a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnsureVar>)))
  "Returns full string definition for message of type '<UnsureVar>"
  (cl:format cl:nil "float64 	variable~%float64 	var_std~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnsureVar)))
  "Returns full string definition for message of type 'UnsureVar"
  (cl:format cl:nil "float64 	variable~%float64 	var_std~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnsureVar>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnsureVar>))
  "Converts a ROS message object to a list"
  (cl:list 'UnsureVar
    (cl:cons ':variable (variable msg))
    (cl:cons ':var_std (var_std msg))
))
