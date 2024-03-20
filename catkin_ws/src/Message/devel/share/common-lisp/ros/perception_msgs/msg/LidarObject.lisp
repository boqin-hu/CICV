; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude LidarObject.msg.html

(cl:defclass <LidarObject> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (object_id
    :reader object_id
    :initarg :object_id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (detect_confidence
    :reader detect_confidence
    :initarg :detect_confidence
    :type cl:float
    :initform 0.0)
   (type_confidence
    :reader type_confidence
    :initarg :type_confidence
    :type cl:float
    :initform 0.0)
   (dimensions
    :reader dimensions
    :initarg :dimensions
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (cluster_pose
    :reader cluster_pose
    :initarg :cluster_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (tracked_pose
    :reader tracked_pose
    :initarg :tracked_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (cluster_yaw
    :reader cluster_yaw
    :initarg :cluster_yaw
    :type cl:float
    :initform 0.0)
   (tracked_yaw
    :reader tracked_yaw
    :initarg :tracked_yaw
    :type cl:float
    :initform 0.0)
   (azimuth
    :reader azimuth
    :initarg :azimuth
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (tracking_state
    :reader tracking_state
    :initarg :tracking_state
    :type cl:fixnum
    :initform 0)
   (cells
    :reader cells
    :initarg :cells
    :type (cl:vector perception_msgs-msg:ObstacleCell)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:ObstacleCell :initial-element (cl:make-instance 'perception_msgs-msg:ObstacleCell))))
)

(cl:defclass LidarObject (<LidarObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<LidarObject> is deprecated: use perception_msgs-msg:LidarObject instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:object_id-val is deprecated.  Use perception_msgs-msg:object_id instead.")
  (object_id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:type-val is deprecated.  Use perception_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'detect_confidence-val :lambda-list '(m))
(cl:defmethod detect_confidence-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:detect_confidence-val is deprecated.  Use perception_msgs-msg:detect_confidence instead.")
  (detect_confidence m))

(cl:ensure-generic-function 'type_confidence-val :lambda-list '(m))
(cl:defmethod type_confidence-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:type_confidence-val is deprecated.  Use perception_msgs-msg:type_confidence instead.")
  (type_confidence m))

(cl:ensure-generic-function 'dimensions-val :lambda-list '(m))
(cl:defmethod dimensions-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:dimensions-val is deprecated.  Use perception_msgs-msg:dimensions instead.")
  (dimensions m))

(cl:ensure-generic-function 'cluster_pose-val :lambda-list '(m))
(cl:defmethod cluster_pose-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:cluster_pose-val is deprecated.  Use perception_msgs-msg:cluster_pose instead.")
  (cluster_pose m))

(cl:ensure-generic-function 'tracked_pose-val :lambda-list '(m))
(cl:defmethod tracked_pose-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:tracked_pose-val is deprecated.  Use perception_msgs-msg:tracked_pose instead.")
  (tracked_pose m))

(cl:ensure-generic-function 'cluster_yaw-val :lambda-list '(m))
(cl:defmethod cluster_yaw-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:cluster_yaw-val is deprecated.  Use perception_msgs-msg:cluster_yaw instead.")
  (cluster_yaw m))

(cl:ensure-generic-function 'tracked_yaw-val :lambda-list '(m))
(cl:defmethod tracked_yaw-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:tracked_yaw-val is deprecated.  Use perception_msgs-msg:tracked_yaw instead.")
  (tracked_yaw m))

(cl:ensure-generic-function 'azimuth-val :lambda-list '(m))
(cl:defmethod azimuth-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:azimuth-val is deprecated.  Use perception_msgs-msg:azimuth instead.")
  (azimuth m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:velocity-val is deprecated.  Use perception_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:acceleration-val is deprecated.  Use perception_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'tracking_state-val :lambda-list '(m))
(cl:defmethod tracking_state-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:tracking_state-val is deprecated.  Use perception_msgs-msg:tracking_state instead.")
  (tracking_state m))

(cl:ensure-generic-function 'cells-val :lambda-list '(m))
(cl:defmethod cells-val ((m <LidarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:cells-val is deprecated.  Use perception_msgs-msg:cells instead.")
  (cells m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarObject>) ostream)
  "Serializes a message object of type '<LidarObject>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'detect_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'type_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimensions) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tracked_pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cluster_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tracked_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'azimuth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tracking_state)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cells))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cells))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarObject>) istream)
  "Deserializes a message object of type '<LidarObject>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'detect_confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'type_confidence) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimensions) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tracked_pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cluster_yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tracked_yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'azimuth) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tracking_state)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cells) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cells)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:ObstacleCell))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarObject>)))
  "Returns string type for a message object of type '<LidarObject>"
  "perception_msgs/LidarObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarObject)))
  "Returns string type for a message object of type 'LidarObject"
  "perception_msgs/LidarObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarObject>)))
  "Returns md5sum for a message object of type '<LidarObject>"
  "0a5facf9bec33cccce93373238a9f570")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarObject)))
  "Returns md5sum for a message object of type 'LidarObject"
  "0a5facf9bec33cccce93373238a9f570")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarObject>)))
  "Returns full string definition for message of type '<LidarObject>"
  (cl:format cl:nil "Header header~%~%uint32 object_id~%uint8  type  # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck~%~%float32 detect_confidence~%float32 type_confidence~%~%geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height~%geometry_msgs/Pose cluster_pose   # the clustered pose of obj; car-body(F-L-U)~%geometry_msgs/Pose tracked_pose   # the tracked pose of obj; car-body(F-L-U)~%~%float32 cluster_yaw  # yaw by clustering, (0,360), F--0, L--90,  car-body(F-L-U)~%float32 tracked_yaw  # yaw by tracking, (0,360), F--0, L--90, car-body(F-L-U)~%~%float32 azimuth  # (0,360), F--0, L--90, car-body(F-L-U)~%~%geometry_msgs/Vector3 velocity       # car-body(F-L-U)~%geometry_msgs/Vector3 acceleration   # car-body(F-L-U)~%~%uint8 tracking_state  # tracker level 1--init, 4--stable, 5--cover, 10--lose~%ObstacleCell[] cells  # ~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: perception_msgs/ObstacleCell~%int32 idc~%float64 x~%float64 y~%float64 xg~%float64 yg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarObject)))
  "Returns full string definition for message of type 'LidarObject"
  (cl:format cl:nil "Header header~%~%uint32 object_id~%uint8  type  # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck~%~%float32 detect_confidence~%float32 type_confidence~%~%geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height~%geometry_msgs/Pose cluster_pose   # the clustered pose of obj; car-body(F-L-U)~%geometry_msgs/Pose tracked_pose   # the tracked pose of obj; car-body(F-L-U)~%~%float32 cluster_yaw  # yaw by clustering, (0,360), F--0, L--90,  car-body(F-L-U)~%float32 tracked_yaw  # yaw by tracking, (0,360), F--0, L--90, car-body(F-L-U)~%~%float32 azimuth  # (0,360), F--0, L--90, car-body(F-L-U)~%~%geometry_msgs/Vector3 velocity       # car-body(F-L-U)~%geometry_msgs/Vector3 acceleration   # car-body(F-L-U)~%~%uint8 tracking_state  # tracker level 1--init, 4--stable, 5--cover, 10--lose~%ObstacleCell[] cells  # ~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: perception_msgs/ObstacleCell~%int32 idc~%float64 x~%float64 y~%float64 xg~%float64 yg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarObject>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimensions))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tracked_pose))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cells) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarObject>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarObject
    (cl:cons ':header (header msg))
    (cl:cons ':object_id (object_id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':detect_confidence (detect_confidence msg))
    (cl:cons ':type_confidence (type_confidence msg))
    (cl:cons ':dimensions (dimensions msg))
    (cl:cons ':cluster_pose (cluster_pose msg))
    (cl:cons ':tracked_pose (tracked_pose msg))
    (cl:cons ':cluster_yaw (cluster_yaw msg))
    (cl:cons ':tracked_yaw (tracked_yaw msg))
    (cl:cons ':azimuth (azimuth msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':tracking_state (tracking_state msg))
    (cl:cons ':cells (cells msg))
))
