; Auto-generated. Do not edit!


(cl:in-package diag_msgs-msg)


;//! \htmlinclude FaultHmi.msg.html

(cl:defclass <FaultHmi> (roslisp-msg-protocol:ros-message)
  ((timestamp_sec
    :reader timestamp_sec
    :initarg :timestamp_sec
    :type cl:float
    :initform 0.0)
   (event_id
    :reader event_id
    :initarg :event_id
    :type cl:integer
    :initform 0)
   (interactive
    :reader interactive
    :initarg :interactive
    :type cl:integer
    :initform 0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform "")
   (event_type
    :reader event_type
    :initarg :event_type
    :type cl:integer
    :initform 0))
)

(cl:defclass FaultHmi (<FaultHmi>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaultHmi>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaultHmi)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diag_msgs-msg:<FaultHmi> is deprecated: use diag_msgs-msg:FaultHmi instead.")))

(cl:ensure-generic-function 'timestamp_sec-val :lambda-list '(m))
(cl:defmethod timestamp_sec-val ((m <FaultHmi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diag_msgs-msg:timestamp_sec-val is deprecated.  Use diag_msgs-msg:timestamp_sec instead.")
  (timestamp_sec m))

(cl:ensure-generic-function 'event_id-val :lambda-list '(m))
(cl:defmethod event_id-val ((m <FaultHmi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diag_msgs-msg:event_id-val is deprecated.  Use diag_msgs-msg:event_id instead.")
  (event_id m))

(cl:ensure-generic-function 'interactive-val :lambda-list '(m))
(cl:defmethod interactive-val ((m <FaultHmi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diag_msgs-msg:interactive-val is deprecated.  Use diag_msgs-msg:interactive instead.")
  (interactive m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <FaultHmi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diag_msgs-msg:error_code-val is deprecated.  Use diag_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <FaultHmi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diag_msgs-msg:msg-val is deprecated.  Use diag_msgs-msg:msg instead.")
  (msg m))

(cl:ensure-generic-function 'event_type-val :lambda-list '(m))
(cl:defmethod event_type-val ((m <FaultHmi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diag_msgs-msg:event_type-val is deprecated.  Use diag_msgs-msg:event_type instead.")
  (event_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaultHmi>) ostream)
  "Serializes a message object of type '<FaultHmi>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp_sec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'event_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'interactive)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
  (cl:let* ((signed (cl:slot-value msg 'event_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaultHmi>) istream)
  "Deserializes a message object of type '<FaultHmi>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp_sec) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'event_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'interactive) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'event_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaultHmi>)))
  "Returns string type for a message object of type '<FaultHmi>"
  "diag_msgs/FaultHmi")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaultHmi)))
  "Returns string type for a message object of type 'FaultHmi"
  "diag_msgs/FaultHmi")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaultHmi>)))
  "Returns md5sum for a message object of type '<FaultHmi>"
  "30009e522ed486022cfeb6ce5fc06580")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaultHmi)))
  "Returns md5sum for a message object of type 'FaultHmi"
  "30009e522ed486022cfeb6ce5fc06580")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaultHmi>)))
  "Returns full string definition for message of type '<FaultHmi>"
  (cl:format cl:nil "float64   timestamp_sec~%int32     event_id~%int32     interactive~%int32     error_code~%string    msg~%int32     event_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaultHmi)))
  "Returns full string definition for message of type 'FaultHmi"
  (cl:format cl:nil "float64   timestamp_sec~%int32     event_id~%int32     interactive~%int32     error_code~%string    msg~%int32     event_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaultHmi>))
  (cl:+ 0
     8
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'msg))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaultHmi>))
  "Converts a ROS message object to a list"
  (cl:list 'FaultHmi
    (cl:cons ':timestamp_sec (timestamp_sec msg))
    (cl:cons ':event_id (event_id msg))
    (cl:cons ':interactive (interactive msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':msg (msg msg))
    (cl:cons ':event_type (event_type msg))
))
