; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude CameraTrafficLight.msg.html

(cl:defclass <CameraTrafficLight> (roslisp-msg-protocol:ros-message)
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
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (pixel_central_point
    :reader pixel_central_point
    :initarg :pixel_central_point
    :type perception_msgs-msg:Point2D
    :initform (cl:make-instance 'perception_msgs-msg:Point2D))
   (pixel_box_size
    :reader pixel_box_size
    :initarg :pixel_box_size
    :type perception_msgs-msg:Point2D
    :initform (cl:make-instance 'perception_msgs-msg:Point2D))
   (light_color
    :reader light_color
    :initarg :light_color
    :type cl:fixnum
    :initform 0)
   (light_shape
    :reader light_shape
    :initarg :light_shape
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraTrafficLight (<CameraTrafficLight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraTrafficLight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraTrafficLight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<CameraTrafficLight> is deprecated: use perception_msgs-msg:CameraTrafficLight instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CameraTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <CameraTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:sensor_id-val is deprecated.  Use perception_msgs-msg:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <CameraTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:object_id-val is deprecated.  Use perception_msgs-msg:object_id instead.")
  (object_id m))

(cl:ensure-generic-function 'detect_confidence-val :lambda-list '(m))
(cl:defmethod detect_confidence-val ((m <CameraTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:detect_confidence-val is deprecated.  Use perception_msgs-msg:detect_confidence instead.")
  (detect_confidence m))

(cl:ensure-generic-function 'type_confidence-val :lambda-list '(m))
(cl:defmethod type_confidence-val ((m <CameraTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:type_confidence-val is deprecated.  Use perception_msgs-msg:type_confidence instead.")
  (type_confidence m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <CameraTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:position-val is deprecated.  Use perception_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'pixel_central_point-val :lambda-list '(m))
(cl:defmethod pixel_central_point-val ((m <CameraTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:pixel_central_point-val is deprecated.  Use perception_msgs-msg:pixel_central_point instead.")
  (pixel_central_point m))

(cl:ensure-generic-function 'pixel_box_size-val :lambda-list '(m))
(cl:defmethod pixel_box_size-val ((m <CameraTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:pixel_box_size-val is deprecated.  Use perception_msgs-msg:pixel_box_size instead.")
  (pixel_box_size m))

(cl:ensure-generic-function 'light_color-val :lambda-list '(m))
(cl:defmethod light_color-val ((m <CameraTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:light_color-val is deprecated.  Use perception_msgs-msg:light_color instead.")
  (light_color m))

(cl:ensure-generic-function 'light_shape-val :lambda-list '(m))
(cl:defmethod light_shape-val ((m <CameraTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:light_shape-val is deprecated.  Use perception_msgs-msg:light_shape instead.")
  (light_shape m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraTrafficLight>) ostream)
  "Serializes a message object of type '<CameraTrafficLight>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sensor_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'object_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pixel_central_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pixel_box_size) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_shape)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraTrafficLight>) istream)
  "Deserializes a message object of type '<CameraTrafficLight>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pixel_central_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pixel_box_size) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_shape)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraTrafficLight>)))
  "Returns string type for a message object of type '<CameraTrafficLight>"
  "perception_msgs/CameraTrafficLight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraTrafficLight)))
  "Returns string type for a message object of type 'CameraTrafficLight"
  "perception_msgs/CameraTrafficLight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraTrafficLight>)))
  "Returns md5sum for a message object of type '<CameraTrafficLight>"
  "affc39367ddc654fd7a98cbc9d340cef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraTrafficLight)))
  "Returns md5sum for a message object of type 'CameraTrafficLight"
  "affc39367ddc654fd7a98cbc9d340cef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraTrafficLight>)))
  "Returns full string definition for message of type '<CameraTrafficLight>"
  (cl:format cl:nil "Header header~%~%int8 sensor_id  # sensor id, 0-front_long_focus, 1-front_short_focus, 2-right, 3-rear, 4-left~%int32 object_id~%float32 detect_confidence~%float32 type_confidence~%~%geometry_msgs/Point32 position  # relative position, car-body(R-F-U)~%~%Point2D pixel_central_point ~%Point2D pixel_box_size~%~%uint8 light_color  # 0--rad, 1--green, 2--yellow, 3--off or unknow~%uint8 light_shape  # 0--round, 1--left_arrow, 2--other~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: perception_msgs/Point2D~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraTrafficLight)))
  "Returns full string definition for message of type 'CameraTrafficLight"
  (cl:format cl:nil "Header header~%~%int8 sensor_id  # sensor id, 0-front_long_focus, 1-front_short_focus, 2-right, 3-rear, 4-left~%int32 object_id~%float32 detect_confidence~%float32 type_confidence~%~%geometry_msgs/Point32 position  # relative position, car-body(R-F-U)~%~%Point2D pixel_central_point ~%Point2D pixel_box_size~%~%uint8 light_color  # 0--rad, 1--green, 2--yellow, 3--off or unknow~%uint8 light_shape  # 0--round, 1--left_arrow, 2--other~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: perception_msgs/Point2D~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraTrafficLight>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pixel_central_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pixel_box_size))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraTrafficLight>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraTrafficLight
    (cl:cons ':header (header msg))
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':object_id (object_id msg))
    (cl:cons ':detect_confidence (detect_confidence msg))
    (cl:cons ':type_confidence (type_confidence msg))
    (cl:cons ':position (position msg))
    (cl:cons ':pixel_central_point (pixel_central_point msg))
    (cl:cons ':pixel_box_size (pixel_box_size msg))
    (cl:cons ':light_color (light_color msg))
    (cl:cons ':light_shape (light_shape msg))
))
