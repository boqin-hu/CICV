; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude LidarObjectList.msg.html

(cl:defclass <LidarObjectList> (roslisp-msg-protocol:ros-message)
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
   (sensor_source
    :reader sensor_source
    :initarg :sensor_source
    :type cl:fixnum
    :initform 0)
   (lidarobjects
    :reader lidarobjects
    :initarg :lidarobjects
    :type (cl:vector perception_msgs-msg:LidarObject)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:LidarObject :initial-element (cl:make-instance 'perception_msgs-msg:LidarObject)))
   (cells
    :reader cells
    :initarg :cells
    :type (cl:vector perception_msgs-msg:ObstacleCell)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:ObstacleCell :initial-element (cl:make-instance 'perception_msgs-msg:ObstacleCell))))
)

(cl:defclass LidarObjectList (<LidarObjectList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarObjectList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarObjectList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<LidarObjectList> is deprecated: use perception_msgs-msg:LidarObjectList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LidarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'frame_number-val :lambda-list '(m))
(cl:defmethod frame_number-val ((m <LidarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:frame_number-val is deprecated.  Use perception_msgs-msg:frame_number instead.")
  (frame_number m))

(cl:ensure-generic-function 'sensor_source-val :lambda-list '(m))
(cl:defmethod sensor_source-val ((m <LidarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:sensor_source-val is deprecated.  Use perception_msgs-msg:sensor_source instead.")
  (sensor_source m))

(cl:ensure-generic-function 'lidarobjects-val :lambda-list '(m))
(cl:defmethod lidarobjects-val ((m <LidarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:lidarobjects-val is deprecated.  Use perception_msgs-msg:lidarobjects instead.")
  (lidarobjects m))

(cl:ensure-generic-function 'cells-val :lambda-list '(m))
(cl:defmethod cells-val ((m <LidarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:cells-val is deprecated.  Use perception_msgs-msg:cells instead.")
  (cells m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarObjectList>) ostream)
  "Serializes a message object of type '<LidarObjectList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_source)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lidarobjects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lidarobjects))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cells))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cells))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarObjectList>) istream)
  "Deserializes a message object of type '<LidarObjectList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_source)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lidarobjects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lidarobjects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:LidarObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarObjectList>)))
  "Returns string type for a message object of type '<LidarObjectList>"
  "perception_msgs/LidarObjectList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarObjectList)))
  "Returns string type for a message object of type 'LidarObjectList"
  "perception_msgs/LidarObjectList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarObjectList>)))
  "Returns md5sum for a message object of type '<LidarObjectList>"
  "71f02ff6fa7fd9520b470b404aed47ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarObjectList)))
  "Returns md5sum for a message object of type 'LidarObjectList"
  "71f02ff6fa7fd9520b470b404aed47ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarObjectList>)))
  "Returns full string definition for message of type '<LidarObjectList>"
  (cl:format cl:nil "Header header~%~%uint64 frame_number  # ~%uint8 sensor_source  # 0--radar, 1--lidar. 2--camera,~%~%LidarObject[] lidarobjects  #~%ObstacleCell[] cells  # ~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_msgs/LidarObject~%Header header~%~%uint32 object_id~%uint8  type  # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck~%~%float32 detect_confidence~%float32 type_confidence~%~%geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height~%geometry_msgs/Pose cluster_pose   # the clustered pose of obj; car-body(F-L-U)~%geometry_msgs/Pose tracked_pose   # the tracked pose of obj; car-body(F-L-U)~%~%float32 cluster_yaw  # yaw by clustering, (0,360), F--0, L--90,  car-body(F-L-U)~%float32 tracked_yaw  # yaw by tracking, (0,360), F--0, L--90, car-body(F-L-U)~%~%float32 azimuth  # (0,360), F--0, L--90, car-body(F-L-U)~%~%geometry_msgs/Vector3 velocity       # car-body(F-L-U)~%geometry_msgs/Vector3 acceleration   # car-body(F-L-U)~%~%uint8 tracking_state  # tracker level 1--init, 4--stable, 5--cover, 10--lose~%ObstacleCell[] cells  # ~%~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: perception_msgs/ObstacleCell~%int32 idc~%float64 x~%float64 y~%float64 xg~%float64 yg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarObjectList)))
  "Returns full string definition for message of type 'LidarObjectList"
  (cl:format cl:nil "Header header~%~%uint64 frame_number  # ~%uint8 sensor_source  # 0--radar, 1--lidar. 2--camera,~%~%LidarObject[] lidarobjects  #~%ObstacleCell[] cells  # ~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_msgs/LidarObject~%Header header~%~%uint32 object_id~%uint8  type  # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck~%~%float32 detect_confidence~%float32 type_confidence~%~%geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height~%geometry_msgs/Pose cluster_pose   # the clustered pose of obj; car-body(F-L-U)~%geometry_msgs/Pose tracked_pose   # the tracked pose of obj; car-body(F-L-U)~%~%float32 cluster_yaw  # yaw by clustering, (0,360), F--0, L--90,  car-body(F-L-U)~%float32 tracked_yaw  # yaw by tracking, (0,360), F--0, L--90, car-body(F-L-U)~%~%float32 azimuth  # (0,360), F--0, L--90, car-body(F-L-U)~%~%geometry_msgs/Vector3 velocity       # car-body(F-L-U)~%geometry_msgs/Vector3 acceleration   # car-body(F-L-U)~%~%uint8 tracking_state  # tracker level 1--init, 4--stable, 5--cover, 10--lose~%ObstacleCell[] cells  # ~%~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: perception_msgs/ObstacleCell~%int32 idc~%float64 x~%float64 y~%float64 xg~%float64 yg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarObjectList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lidarobjects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cells) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarObjectList>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarObjectList
    (cl:cons ':header (header msg))
    (cl:cons ':frame_number (frame_number msg))
    (cl:cons ':sensor_source (sensor_source msg))
    (cl:cons ':lidarobjects (lidarobjects msg))
    (cl:cons ':cells (cells msg))
))
