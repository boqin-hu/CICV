; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude Trajectory.msg.html

(cl:defclass <Trajectory> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (frame_number
    :reader frame_number
    :initarg :frame_number
    :type cl:integer
    :initform 0)
   (is_valid_frame
    :reader is_valid_frame
    :initarg :is_valid_frame
    :type cl:boolean
    :initform cl:nil)
   (trajectoryinfo
    :reader trajectoryinfo
    :initarg :trajectoryinfo
    :type perception_msgs-msg:TrajectoryInfo
    :initform (cl:make-instance 'perception_msgs-msg:TrajectoryInfo)))
)

(cl:defclass Trajectory (<Trajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<Trajectory> is deprecated: use perception_msgs-msg:Trajectory instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'frame_number-val :lambda-list '(m))
(cl:defmethod frame_number-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:frame_number-val is deprecated.  Use perception_msgs-msg:frame_number instead.")
  (frame_number m))

(cl:ensure-generic-function 'is_valid_frame-val :lambda-list '(m))
(cl:defmethod is_valid_frame-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:is_valid_frame-val is deprecated.  Use perception_msgs-msg:is_valid_frame instead.")
  (is_valid_frame m))

(cl:ensure-generic-function 'trajectoryinfo-val :lambda-list '(m))
(cl:defmethod trajectoryinfo-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:trajectoryinfo-val is deprecated.  Use perception_msgs-msg:trajectoryinfo instead.")
  (trajectoryinfo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trajectory>) ostream)
  "Serializes a message object of type '<Trajectory>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_valid_frame) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectoryinfo) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trajectory>) istream)
  "Deserializes a message object of type '<Trajectory>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_valid_frame) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectoryinfo) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trajectory>)))
  "Returns string type for a message object of type '<Trajectory>"
  "perception_msgs/Trajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trajectory)))
  "Returns string type for a message object of type 'Trajectory"
  "perception_msgs/Trajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trajectory>)))
  "Returns md5sum for a message object of type '<Trajectory>"
  "132aa4b0598aef32b1def9d8d8e57cbe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trajectory)))
  "Returns md5sum for a message object of type 'Trajectory"
  "132aa4b0598aef32b1def9d8d8e57cbe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trajectory>)))
  "Returns full string definition for message of type '<Trajectory>"
  (cl:format cl:nil "Header header~%uint64 frame_number~%bool is_valid_frame~%TrajectoryInfo trajectoryinfo~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_msgs/TrajectoryInfo~%int32 path_id~%float32 total_path_length~%float32 total_path_time~%int8 decision_type~%int8 light_type~%string[] lane_ids~%TrajectoryPoint[] trajectorypoints~%~%================================================================================~%MSG: perception_msgs/TrajectoryPoint~%Point2D position~%float32 velocity~%float32 heading~%float32 curvature~%float32 s~%float32 t~%int8 point_type~%~%================================================================================~%MSG: perception_msgs/Point2D~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trajectory)))
  "Returns full string definition for message of type 'Trajectory"
  (cl:format cl:nil "Header header~%uint64 frame_number~%bool is_valid_frame~%TrajectoryInfo trajectoryinfo~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_msgs/TrajectoryInfo~%int32 path_id~%float32 total_path_length~%float32 total_path_time~%int8 decision_type~%int8 light_type~%string[] lane_ids~%TrajectoryPoint[] trajectorypoints~%~%================================================================================~%MSG: perception_msgs/TrajectoryPoint~%Point2D position~%float32 velocity~%float32 heading~%float32 curvature~%float32 s~%float32 t~%int8 point_type~%~%================================================================================~%MSG: perception_msgs/Point2D~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trajectory>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectoryinfo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'Trajectory
    (cl:cons ':header (header msg))
    (cl:cons ':frame_number (frame_number msg))
    (cl:cons ':is_valid_frame (is_valid_frame msg))
    (cl:cons ':trajectoryinfo (trajectoryinfo msg))
))
