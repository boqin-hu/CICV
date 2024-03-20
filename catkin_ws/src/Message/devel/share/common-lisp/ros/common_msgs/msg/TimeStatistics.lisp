; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude TimeStatistics.msg.html

(cl:defclass <TimeStatistics> (roslisp-msg-protocol:ros-message)
  ((dev_time_status_msg
    :reader dev_time_status_msg
    :initarg :dev_time_status_msg
    :type (cl:vector common_msgs-msg:TimeStatus)
   :initform (cl:make-array 0 :element-type 'common_msgs-msg:TimeStatus :initial-element (cl:make-instance 'common_msgs-msg:TimeStatus)))
   (sending_timestamp
    :reader sending_timestamp
    :initarg :sending_timestamp
    :type cl:float
    :initform 0.0))
)

(cl:defclass TimeStatistics (<TimeStatistics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeStatistics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeStatistics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<TimeStatistics> is deprecated: use common_msgs-msg:TimeStatistics instead.")))

(cl:ensure-generic-function 'dev_time_status_msg-val :lambda-list '(m))
(cl:defmethod dev_time_status_msg-val ((m <TimeStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:dev_time_status_msg-val is deprecated.  Use common_msgs-msg:dev_time_status_msg instead.")
  (dev_time_status_msg m))

(cl:ensure-generic-function 'sending_timestamp-val :lambda-list '(m))
(cl:defmethod sending_timestamp-val ((m <TimeStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:sending_timestamp-val is deprecated.  Use common_msgs-msg:sending_timestamp instead.")
  (sending_timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeStatistics>) ostream)
  "Serializes a message object of type '<TimeStatistics>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dev_time_status_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dev_time_status_msg))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sending_timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeStatistics>) istream)
  "Deserializes a message object of type '<TimeStatistics>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dev_time_status_msg) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dev_time_status_msg)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'common_msgs-msg:TimeStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sending_timestamp) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeStatistics>)))
  "Returns string type for a message object of type '<TimeStatistics>"
  "common_msgs/TimeStatistics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeStatistics)))
  "Returns string type for a message object of type 'TimeStatistics"
  "common_msgs/TimeStatistics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeStatistics>)))
  "Returns md5sum for a message object of type '<TimeStatistics>"
  "92d8e806eb39fab86dbb2d3c912096f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeStatistics)))
  "Returns md5sum for a message object of type 'TimeStatistics"
  "92d8e806eb39fab86dbb2d3c912096f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeStatistics>)))
  "Returns full string definition for message of type '<TimeStatistics>"
  (cl:format cl:nil "TimeStatus[] 	dev_time_status_msg~%float64 	sending_timestamp~%================================================================================~%MSG: common_msgs/TimeStatus~%float64 	dtime~%string 	source_node_name~%string 	destination_node_name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeStatistics)))
  "Returns full string definition for message of type 'TimeStatistics"
  (cl:format cl:nil "TimeStatus[] 	dev_time_status_msg~%float64 	sending_timestamp~%================================================================================~%MSG: common_msgs/TimeStatus~%float64 	dtime~%string 	source_node_name~%string 	destination_node_name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeStatistics>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dev_time_status_msg) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeStatistics>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeStatistics
    (cl:cons ':dev_time_status_msg (dev_time_status_msg msg))
    (cl:cons ':sending_timestamp (sending_timestamp msg))
))
