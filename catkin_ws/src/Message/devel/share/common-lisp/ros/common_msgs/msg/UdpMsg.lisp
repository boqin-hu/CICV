; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude UdpMsg.msg.html

(cl:defclass <UdpMsg> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass UdpMsg (<UdpMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UdpMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UdpMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<UdpMsg> is deprecated: use common_msgs-msg:UdpMsg instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <UdpMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:id-val is deprecated.  Use common_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <UdpMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:data-val is deprecated.  Use common_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UdpMsg>) ostream)
  "Serializes a message object of type '<UdpMsg>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UdpMsg>) istream)
  "Deserializes a message object of type '<UdpMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UdpMsg>)))
  "Returns string type for a message object of type '<UdpMsg>"
  "common_msgs/UdpMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UdpMsg)))
  "Returns string type for a message object of type 'UdpMsg"
  "common_msgs/UdpMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UdpMsg>)))
  "Returns md5sum for a message object of type '<UdpMsg>"
  "3c2d87a0c38a57b06a8a8c5c8e11972d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UdpMsg)))
  "Returns md5sum for a message object of type 'UdpMsg"
  "3c2d87a0c38a57b06a8a8c5c8e11972d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UdpMsg>)))
  "Returns full string definition for message of type '<UdpMsg>"
  (cl:format cl:nil "int32    id~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UdpMsg)))
  "Returns full string definition for message of type 'UdpMsg"
  (cl:format cl:nil "int32    id~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UdpMsg>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UdpMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'UdpMsg
    (cl:cons ':id (id msg))
    (cl:cons ':data (data msg))
))
