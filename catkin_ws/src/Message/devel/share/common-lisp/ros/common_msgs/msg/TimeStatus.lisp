; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude TimeStatus.msg.html

(cl:defclass <TimeStatus> (roslisp-msg-protocol:ros-message)
  ((dtime
    :reader dtime
    :initarg :dtime
    :type cl:float
    :initform 0.0)
   (source_node_name
    :reader source_node_name
    :initarg :source_node_name
    :type cl:string
    :initform "")
   (destination_node_name
    :reader destination_node_name
    :initarg :destination_node_name
    :type cl:string
    :initform ""))
)

(cl:defclass TimeStatus (<TimeStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<TimeStatus> is deprecated: use common_msgs-msg:TimeStatus instead.")))

(cl:ensure-generic-function 'dtime-val :lambda-list '(m))
(cl:defmethod dtime-val ((m <TimeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:dtime-val is deprecated.  Use common_msgs-msg:dtime instead.")
  (dtime m))

(cl:ensure-generic-function 'source_node_name-val :lambda-list '(m))
(cl:defmethod source_node_name-val ((m <TimeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:source_node_name-val is deprecated.  Use common_msgs-msg:source_node_name instead.")
  (source_node_name m))

(cl:ensure-generic-function 'destination_node_name-val :lambda-list '(m))
(cl:defmethod destination_node_name-val ((m <TimeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:destination_node_name-val is deprecated.  Use common_msgs-msg:destination_node_name instead.")
  (destination_node_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeStatus>) ostream)
  "Serializes a message object of type '<TimeStatus>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dtime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source_node_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source_node_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'destination_node_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'destination_node_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeStatus>) istream)
  "Deserializes a message object of type '<TimeStatus>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dtime) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source_node_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source_node_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'destination_node_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'destination_node_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeStatus>)))
  "Returns string type for a message object of type '<TimeStatus>"
  "common_msgs/TimeStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeStatus)))
  "Returns string type for a message object of type 'TimeStatus"
  "common_msgs/TimeStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeStatus>)))
  "Returns md5sum for a message object of type '<TimeStatus>"
  "781f191435805db497e08aa1e68d3eff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeStatus)))
  "Returns md5sum for a message object of type 'TimeStatus"
  "781f191435805db497e08aa1e68d3eff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeStatus>)))
  "Returns full string definition for message of type '<TimeStatus>"
  (cl:format cl:nil "float64 	dtime~%string 	source_node_name~%string 	destination_node_name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeStatus)))
  "Returns full string definition for message of type 'TimeStatus"
  (cl:format cl:nil "float64 	dtime~%string 	source_node_name~%string 	destination_node_name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeStatus>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'source_node_name))
     4 (cl:length (cl:slot-value msg 'destination_node_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeStatus
    (cl:cons ':dtime (dtime msg))
    (cl:cons ':source_node_name (source_node_name msg))
    (cl:cons ':destination_node_name (destination_node_name msg))
))
