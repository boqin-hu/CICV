; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude CameraTrafficLightList.msg.html

(cl:defclass <CameraTrafficLightList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (sensor_source
    :reader sensor_source
    :initarg :sensor_source
    :type cl:fixnum
    :initform 0)
   (cameratrafficlights
    :reader cameratrafficlights
    :initarg :cameratrafficlights
    :type (cl:vector perception_msgs-msg:CameraTrafficLight)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:CameraTrafficLight :initial-element (cl:make-instance 'perception_msgs-msg:CameraTrafficLight))))
)

(cl:defclass CameraTrafficLightList (<CameraTrafficLightList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraTrafficLightList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraTrafficLightList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<CameraTrafficLightList> is deprecated: use perception_msgs-msg:CameraTrafficLightList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CameraTrafficLightList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <CameraTrafficLightList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:frame_id-val is deprecated.  Use perception_msgs-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'sensor_source-val :lambda-list '(m))
(cl:defmethod sensor_source-val ((m <CameraTrafficLightList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:sensor_source-val is deprecated.  Use perception_msgs-msg:sensor_source instead.")
  (sensor_source m))

(cl:ensure-generic-function 'cameratrafficlights-val :lambda-list '(m))
(cl:defmethod cameratrafficlights-val ((m <CameraTrafficLightList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:cameratrafficlights-val is deprecated.  Use perception_msgs-msg:cameratrafficlights instead.")
  (cameratrafficlights m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraTrafficLightList>) ostream)
  "Serializes a message object of type '<CameraTrafficLightList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sensor_source)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cameratrafficlights))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cameratrafficlights))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraTrafficLightList>) istream)
  "Deserializes a message object of type '<CameraTrafficLightList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_source) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cameratrafficlights) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cameratrafficlights)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:CameraTrafficLight))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraTrafficLightList>)))
  "Returns string type for a message object of type '<CameraTrafficLightList>"
  "perception_msgs/CameraTrafficLightList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraTrafficLightList)))
  "Returns string type for a message object of type 'CameraTrafficLightList"
  "perception_msgs/CameraTrafficLightList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraTrafficLightList>)))
  "Returns md5sum for a message object of type '<CameraTrafficLightList>"
  "0445fe87f21f8f8e970fd72ec107e8eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraTrafficLightList)))
  "Returns md5sum for a message object of type 'CameraTrafficLightList"
  "0445fe87f21f8f8e970fd72ec107e8eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraTrafficLightList>)))
  "Returns full string definition for message of type '<CameraTrafficLightList>"
  (cl:format cl:nil "Header header~%~%uint64 frame_id~%int8 sensor_source  # 0--radar, 1--lidar. 2--camera,~%CameraTrafficLight[] cameratrafficlights~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_msgs/CameraTrafficLight~%Header header~%~%int8 sensor_id  # sensor id, 0-front_long_focus, 1-front_short_focus, 2-right, 3-rear, 4-left~%int32 object_id~%float32 detect_confidence~%float32 type_confidence~%~%geometry_msgs/Point32 position  # relative position, car-body(R-F-U)~%~%Point2D pixel_central_point ~%Point2D pixel_box_size~%~%uint8 light_color  # 0--rad, 1--green, 2--yellow, 3--off or unknow~%uint8 light_shape  # 0--round, 1--left_arrow, 2--other~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: perception_msgs/Point2D~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraTrafficLightList)))
  "Returns full string definition for message of type 'CameraTrafficLightList"
  (cl:format cl:nil "Header header~%~%uint64 frame_id~%int8 sensor_source  # 0--radar, 1--lidar. 2--camera,~%CameraTrafficLight[] cameratrafficlights~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_msgs/CameraTrafficLight~%Header header~%~%int8 sensor_id  # sensor id, 0-front_long_focus, 1-front_short_focus, 2-right, 3-rear, 4-left~%int32 object_id~%float32 detect_confidence~%float32 type_confidence~%~%geometry_msgs/Point32 position  # relative position, car-body(R-F-U)~%~%Point2D pixel_central_point ~%Point2D pixel_box_size~%~%uint8 light_color  # 0--rad, 1--green, 2--yellow, 3--off or unknow~%uint8 light_shape  # 0--round, 1--left_arrow, 2--other~%~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: perception_msgs/Point2D~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraTrafficLightList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cameratrafficlights) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraTrafficLightList>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraTrafficLightList
    (cl:cons ':header (header msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':sensor_source (sensor_source msg))
    (cl:cons ':cameratrafficlights (cameratrafficlights msg))
))
