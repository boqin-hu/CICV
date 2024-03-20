; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude CameraObject.msg.html

(cl:defclass <CameraObject> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sensor_id
    :reader sensor_id
    :initarg :sensor_id
    :type cl:fixnum
    :initform 0)
   (object_id
    :reader object_id
    :initarg :object_id
    :type cl:integer
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
   (azimuth
    :reader azimuth
    :initarg :azimuth
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (tracking_time
    :reader tracking_time
    :initarg :tracking_time
    :type cl:float
    :initform 0.0)
   (tracking_level
    :reader tracking_level
    :initarg :tracking_level
    :type cl:fixnum
    :initform 0)
   (lane_assignment
    :reader lane_assignment
    :initarg :lane_assignment
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
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
   (dimensions
    :reader dimensions
    :initarg :dimensions
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (pixel_central_point
    :reader pixel_central_point
    :initarg :pixel_central_point
    :type perception_msgs-msg:Point2D
    :initform (cl:make-instance 'perception_msgs-msg:Point2D))
   (pixel_box_size
    :reader pixel_box_size
    :initarg :pixel_box_size
    :type perception_msgs-msg:Point2D
    :initform (cl:make-instance 'perception_msgs-msg:Point2D)))
)

(cl:defclass CameraObject (<CameraObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<CameraObject> is deprecated: use perception_msgs-msg:CameraObject instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:sensor_id-val is deprecated.  Use perception_msgs-msg:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:object_id-val is deprecated.  Use perception_msgs-msg:object_id instead.")
  (object_id m))

(cl:ensure-generic-function 'detect_confidence-val :lambda-list '(m))
(cl:defmethod detect_confidence-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:detect_confidence-val is deprecated.  Use perception_msgs-msg:detect_confidence instead.")
  (detect_confidence m))

(cl:ensure-generic-function 'type_confidence-val :lambda-list '(m))
(cl:defmethod type_confidence-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:type_confidence-val is deprecated.  Use perception_msgs-msg:type_confidence instead.")
  (type_confidence m))

(cl:ensure-generic-function 'azimuth-val :lambda-list '(m))
(cl:defmethod azimuth-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:azimuth-val is deprecated.  Use perception_msgs-msg:azimuth instead.")
  (azimuth m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:yaw-val is deprecated.  Use perception_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:type-val is deprecated.  Use perception_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'tracking_time-val :lambda-list '(m))
(cl:defmethod tracking_time-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:tracking_time-val is deprecated.  Use perception_msgs-msg:tracking_time instead.")
  (tracking_time m))

(cl:ensure-generic-function 'tracking_level-val :lambda-list '(m))
(cl:defmethod tracking_level-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:tracking_level-val is deprecated.  Use perception_msgs-msg:tracking_level instead.")
  (tracking_level m))

(cl:ensure-generic-function 'lane_assignment-val :lambda-list '(m))
(cl:defmethod lane_assignment-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:lane_assignment-val is deprecated.  Use perception_msgs-msg:lane_assignment instead.")
  (lane_assignment m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:position-val is deprecated.  Use perception_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:velocity-val is deprecated.  Use perception_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:acceleration-val is deprecated.  Use perception_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'dimensions-val :lambda-list '(m))
(cl:defmethod dimensions-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:dimensions-val is deprecated.  Use perception_msgs-msg:dimensions instead.")
  (dimensions m))

(cl:ensure-generic-function 'pixel_central_point-val :lambda-list '(m))
(cl:defmethod pixel_central_point-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:pixel_central_point-val is deprecated.  Use perception_msgs-msg:pixel_central_point instead.")
  (pixel_central_point m))

(cl:ensure-generic-function 'pixel_box_size-val :lambda-list '(m))
(cl:defmethod pixel_box_size-val ((m <CameraObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:pixel_box_size-val is deprecated.  Use perception_msgs-msg:pixel_box_size instead.")
  (pixel_box_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraObject>) ostream)
  "Serializes a message object of type '<CameraObject>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) ostream)
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'azimuth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tracking_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'tracking_level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lane_assignment)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimensions) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pixel_central_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pixel_box_size) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraObject>) istream)
  "Deserializes a message object of type '<CameraObject>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'azimuth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tracking_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tracking_level) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_assignment) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimensions) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pixel_central_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pixel_box_size) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraObject>)))
  "Returns string type for a message object of type '<CameraObject>"
  "perception_msgs/CameraObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraObject)))
  "Returns string type for a message object of type 'CameraObject"
  "perception_msgs/CameraObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraObject>)))
  "Returns md5sum for a message object of type '<CameraObject>"
  "411f3ce7123561d2bd0f9079d3ec3e83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraObject)))
  "Returns md5sum for a message object of type 'CameraObject"
  "411f3ce7123561d2bd0f9079d3ec3e83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraObject>)))
  "Returns full string definition for message of type '<CameraObject>"
  (cl:format cl:nil "Header header~%~%uint8  sensor_id  # sensor id, 0-front_long_focus, 1-front_short_focus, 2-right, 3-rear, 4-left~%uint32 object_id~%float32 detect_confidence~%float32 type_confidence~%float32 azimuth~%float32 yaw  # car-body(R-F-U)  R--0, F--90,  (0,360)~%~%uint8 type  # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck~%float32 tracking_time   #~%int8 tracking_level     #~%int8 lane_assignment    #~%~%geometry_msgs/Point32 position  # relative position, car-body(R-F-U)~%geometry_msgs/Vector3 velocity  # relative velocity, car-body(R-F-U)~%geometry_msgs/Vector3 acceleration  # relative acceleration, car-body(R-F-U)~%geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height~%~%Point2D pixel_central_point ~%Point2D pixel_box_size~%~%~% ~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: perception_msgs/Point2D~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraObject)))
  "Returns full string definition for message of type 'CameraObject"
  (cl:format cl:nil "Header header~%~%uint8  sensor_id  # sensor id, 0-front_long_focus, 1-front_short_focus, 2-right, 3-rear, 4-left~%uint32 object_id~%float32 detect_confidence~%float32 type_confidence~%float32 azimuth~%float32 yaw  # car-body(R-F-U)  R--0, F--90,  (0,360)~%~%uint8 type  # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck~%float32 tracking_time   #~%int8 tracking_level     #~%int8 lane_assignment    #~%~%geometry_msgs/Point32 position  # relative position, car-body(R-F-U)~%geometry_msgs/Vector3 velocity  # relative velocity, car-body(R-F-U)~%geometry_msgs/Vector3 acceleration  # relative acceleration, car-body(R-F-U)~%geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height~%~%Point2D pixel_central_point ~%Point2D pixel_box_size~%~%~% ~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: perception_msgs/Point2D~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraObject>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     4
     4
     4
     1
     4
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimensions))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pixel_central_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pixel_box_size))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraObject>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraObject
    (cl:cons ':header (header msg))
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':object_id (object_id msg))
    (cl:cons ':detect_confidence (detect_confidence msg))
    (cl:cons ':type_confidence (type_confidence msg))
    (cl:cons ':azimuth (azimuth msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':type (type msg))
    (cl:cons ':tracking_time (tracking_time msg))
    (cl:cons ':tracking_level (tracking_level msg))
    (cl:cons ':lane_assignment (lane_assignment msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':dimensions (dimensions msg))
    (cl:cons ':pixel_central_point (pixel_central_point msg))
    (cl:cons ':pixel_box_size (pixel_box_size msg))
))
