; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude UltrasonicParking.msg.html

(cl:defclass <UltrasonicParking> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cell
    :reader cell
    :initarg :cell
    :type (cl:vector perception_msgs-msg:UltraCell)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:UltraCell :initial-element (cl:make-instance 'perception_msgs-msg:UltraCell))))
)

(cl:defclass UltrasonicParking (<UltrasonicParking>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicParking>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicParking)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<UltrasonicParking> is deprecated: use perception_msgs-msg:UltrasonicParking instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UltrasonicParking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cell-val :lambda-list '(m))
(cl:defmethod cell-val ((m <UltrasonicParking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:cell-val is deprecated.  Use perception_msgs-msg:cell instead.")
  (cell m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicParking>) ostream)
  "Serializes a message object of type '<UltrasonicParking>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cell))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cell))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicParking>) istream)
  "Deserializes a message object of type '<UltrasonicParking>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cell) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cell)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:UltraCell))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicParking>)))
  "Returns string type for a message object of type '<UltrasonicParking>"
  "perception_msgs/UltrasonicParking")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicParking)))
  "Returns string type for a message object of type 'UltrasonicParking"
  "perception_msgs/UltrasonicParking")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicParking>)))
  "Returns md5sum for a message object of type '<UltrasonicParking>"
  "decfd193847cbea961ea27cf34064d9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicParking)))
  "Returns md5sum for a message object of type 'UltrasonicParking"
  "decfd193847cbea961ea27cf34064d9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicParking>)))
  "Returns full string definition for message of type '<UltrasonicParking>"
  (cl:format cl:nil "Header header~%UltraCell[] cell~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_msgs/UltraCell~%int32   id~%float32 direct_dist~%float32 indirect_dist~%int32   status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicParking)))
  "Returns full string definition for message of type 'UltrasonicParking"
  (cl:format cl:nil "Header header~%UltraCell[] cell~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_msgs/UltraCell~%int32   id~%float32 direct_dist~%float32 indirect_dist~%int32   status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicParking>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cell) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicParking>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicParking
    (cl:cons ':header (header msg))
    (cl:cons ':cell (cell msg))
))
