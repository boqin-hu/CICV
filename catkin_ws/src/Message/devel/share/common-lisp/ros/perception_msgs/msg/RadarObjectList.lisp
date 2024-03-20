; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude RadarObjectList.msg.html

(cl:defclass <RadarObjectList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (radarobjects
    :reader radarobjects
    :initarg :radarobjects
    :type (cl:vector perception_msgs-msg:RadarObject)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:RadarObject :initial-element (cl:make-instance 'perception_msgs-msg:RadarObject))))
)

(cl:defclass RadarObjectList (<RadarObjectList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarObjectList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarObjectList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<RadarObjectList> is deprecated: use perception_msgs-msg:RadarObjectList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'radarobjects-val :lambda-list '(m))
(cl:defmethod radarobjects-val ((m <RadarObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:radarobjects-val is deprecated.  Use perception_msgs-msg:radarobjects instead.")
  (radarobjects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarObjectList>) ostream)
  "Serializes a message object of type '<RadarObjectList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'radarobjects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'radarobjects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarObjectList>) istream)
  "Deserializes a message object of type '<RadarObjectList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'radarobjects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'radarobjects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:RadarObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarObjectList>)))
  "Returns string type for a message object of type '<RadarObjectList>"
  "perception_msgs/RadarObjectList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarObjectList)))
  "Returns string type for a message object of type 'RadarObjectList"
  "perception_msgs/RadarObjectList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarObjectList>)))
  "Returns md5sum for a message object of type '<RadarObjectList>"
  "a51084f8d16780a6b5cd047e02969220")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarObjectList)))
  "Returns md5sum for a message object of type 'RadarObjectList"
  "a51084f8d16780a6b5cd047e02969220")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarObjectList>)))
  "Returns full string definition for message of type '<RadarObjectList>"
  (cl:format cl:nil "Header header~%RadarObject[] radarobjects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_msgs/RadarObject~%Header header~%~%bool is_invalid~%bool is_matched~%bool is_still~%uint8 cluster_mask~%uint8 radar_id    # 0--f_radar, 1--fr_radar, 3--rr_radar, 5--rl_radar, 7--fl_radar~%uint16 object_id  #~%uint8 type        # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck~%~%uint16 life_count  #~%float32 rcs ~%float32 confidence~%float32 azimuth    # car-body(R-F-U)  R--0, F--90,  (0,360)~%~%geometry_msgs/Point32 position  # relative position, car-body(R-F-U)~%geometry_msgs/Vector3 velocity  # relative velocity, car-body(R-F-U)~%geometry_msgs/Vector3 acceleration  # relative acceleration, car-body(R-F-U)~%geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarObjectList)))
  "Returns full string definition for message of type 'RadarObjectList"
  (cl:format cl:nil "Header header~%RadarObject[] radarobjects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_msgs/RadarObject~%Header header~%~%bool is_invalid~%bool is_matched~%bool is_still~%uint8 cluster_mask~%uint8 radar_id    # 0--f_radar, 1--fr_radar, 3--rr_radar, 5--rl_radar, 7--fl_radar~%uint16 object_id  #~%uint8 type        # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck~%~%uint16 life_count  #~%float32 rcs ~%float32 confidence~%float32 azimuth    # car-body(R-F-U)  R--0, F--90,  (0,360)~%~%geometry_msgs/Point32 position  # relative position, car-body(R-F-U)~%geometry_msgs/Vector3 velocity  # relative velocity, car-body(R-F-U)~%geometry_msgs/Vector3 acceleration  # relative acceleration, car-body(R-F-U)~%geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarObjectList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'radarobjects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarObjectList>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarObjectList
    (cl:cons ':header (header msg))
    (cl:cons ':radarobjects (radarobjects msg))
))
