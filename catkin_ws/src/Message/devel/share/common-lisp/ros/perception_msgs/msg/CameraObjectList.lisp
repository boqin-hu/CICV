; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude CameraObjectList.msg.html

(cl:defclass <CameraObjectList> (roslisp-msg-protocol:ros-message)
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
   (cameraobjects
    :reader cameraobjects
    :initarg :cameraobjects
    :type (cl:vector perception_msgs-msg:CameraObject)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:CameraObject :initial-element (cl:make-instance 'perception_msgs-msg:CameraObject))))
)

(cl:defclass CameraObjectList (<CameraObjectList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraObjectList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraObjectList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<CameraObjectList> is deprecated: use perception_msgs-msg:CameraObjectList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CameraObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'frame_number-val :lambda-list '(m))
(cl:defmethod frame_number-val ((m <CameraObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:frame_number-val is deprecated.  Use perception_msgs-msg:frame_number instead.")
  (frame_number m))

(cl:ensure-generic-function 'sensor_source-val :lambda-list '(m))
(cl:defmethod sensor_source-val ((m <CameraObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:sensor_source-val is deprecated.  Use perception_msgs-msg:sensor_source instead.")
  (sensor_source m))

(cl:ensure-generic-function 'cameraobjects-val :lambda-list '(m))
(cl:defmethod cameraobjects-val ((m <CameraObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:cameraobjects-val is deprecated.  Use perception_msgs-msg:cameraobjects instead.")
  (cameraobjects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraObjectList>) ostream)
  "Serializes a message object of type '<CameraObjectList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame_number)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sensor_source)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cameraobjects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cameraobjects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraObjectList>) istream)
  "Deserializes a message object of type '<CameraObjectList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame_number)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_source) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cameraobjects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cameraobjects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:CameraObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraObjectList>)))
  "Returns string type for a message object of type '<CameraObjectList>"
  "perception_msgs/CameraObjectList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraObjectList)))
  "Returns string type for a message object of type 'CameraObjectList"
  "perception_msgs/CameraObjectList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraObjectList>)))
  "Returns md5sum for a message object of type '<CameraObjectList>"
  "9fc086e4304c6b87b48ce29317b562a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraObjectList)))
  "Returns md5sum for a message object of type 'CameraObjectList"
  "9fc086e4304c6b87b48ce29317b562a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraObjectList>)))
  "Returns full string definition for message of type '<CameraObjectList>"
  (cl:format cl:nil "Header header~%uint64 frame_number~%int8 sensor_source~%CameraObject[] cameraobjects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_msgs/CameraObject~%Header header~%~%uint8  sensor_id  # sensor id, 0-front_long_focus, 1-front_short_focus, 2-right, 3-rear, 4-left~%uint32 object_id~%float32 detect_confidence~%float32 type_confidence~%float32 azimuth~%float32 yaw  # car-body(R-F-U)  R--0, F--90,  (0,360)~%~%uint8 type  # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck~%float32 tracking_time   #~%int8 tracking_level     #~%int8 lane_assignment    #~%~%geometry_msgs/Point32 position  # relative position, car-body(R-F-U)~%geometry_msgs/Vector3 velocity  # relative velocity, car-body(R-F-U)~%geometry_msgs/Vector3 acceleration  # relative acceleration, car-body(R-F-U)~%geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height~%~%Point2D pixel_central_point ~%Point2D pixel_box_size~%~%~% ~%~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: perception_msgs/Point2D~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraObjectList)))
  "Returns full string definition for message of type 'CameraObjectList"
  (cl:format cl:nil "Header header~%uint64 frame_number~%int8 sensor_source~%CameraObject[] cameraobjects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_msgs/CameraObject~%Header header~%~%uint8  sensor_id  # sensor id, 0-front_long_focus, 1-front_short_focus, 2-right, 3-rear, 4-left~%uint32 object_id~%float32 detect_confidence~%float32 type_confidence~%float32 azimuth~%float32 yaw  # car-body(R-F-U)  R--0, F--90,  (0,360)~%~%uint8 type  # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck~%float32 tracking_time   #~%int8 tracking_level     #~%int8 lane_assignment    #~%~%geometry_msgs/Point32 position  # relative position, car-body(R-F-U)~%geometry_msgs/Vector3 velocity  # relative velocity, car-body(R-F-U)~%geometry_msgs/Vector3 acceleration  # relative acceleration, car-body(R-F-U)~%geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height~%~%Point2D pixel_central_point ~%Point2D pixel_box_size~%~%~% ~%~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: perception_msgs/Point2D~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraObjectList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cameraobjects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraObjectList>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraObjectList
    (cl:cons ':header (header msg))
    (cl:cons ':frame_number (frame_number msg))
    (cl:cons ':sensor_source (sensor_source msg))
    (cl:cons ':cameraobjects (cameraobjects msg))
))
