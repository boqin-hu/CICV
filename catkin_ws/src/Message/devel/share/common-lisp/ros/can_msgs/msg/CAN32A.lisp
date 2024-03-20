; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude CAN32A.msg.html

(cl:defclass <CAN32A> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type cl:float
    :initform 0.0))
)

(cl:defclass CAN32A (<CAN32A>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CAN32A>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CAN32A)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<CAN32A> is deprecated: use can_msgs-msg:CAN32A instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <CAN32A>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:timestamp-val is deprecated.  Use can_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <CAN32A>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:velocity-val is deprecated.  Use can_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <CAN32A>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:acceleration-val is deprecated.  Use can_msgs-msg:acceleration instead.")
  (acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CAN32A>) ostream)
  "Serializes a message object of type '<CAN32A>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CAN32A>) istream)
  "Deserializes a message object of type '<CAN32A>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CAN32A>)))
  "Returns string type for a message object of type '<CAN32A>"
  "can_msgs/CAN32A")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CAN32A)))
  "Returns string type for a message object of type 'CAN32A"
  "can_msgs/CAN32A")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CAN32A>)))
  "Returns md5sum for a message object of type '<CAN32A>"
  "88a6f16d6b8103af9a21eb51e2c01d05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CAN32A)))
  "Returns md5sum for a message object of type 'CAN32A"
  "88a6f16d6b8103af9a21eb51e2c01d05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CAN32A>)))
  "Returns full string definition for message of type '<CAN32A>"
  (cl:format cl:nil "float64 timestamp~%float64 velocity~%float64 acceleration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CAN32A)))
  "Returns full string definition for message of type 'CAN32A"
  (cl:format cl:nil "float64 timestamp~%float64 velocity~%float64 acceleration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CAN32A>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CAN32A>))
  "Converts a ROS message object to a list"
  (cl:list 'CAN32A
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
))
