; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude RadarObject.msg.html

(cl:defclass <RadarObject> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (is_invalid
    :reader is_invalid
    :initarg :is_invalid
    :type cl:boolean
    :initform cl:nil)
   (is_matched
    :reader is_matched
    :initarg :is_matched
    :type cl:boolean
    :initform cl:nil)
   (is_still
    :reader is_still
    :initarg :is_still
    :type cl:boolean
    :initform cl:nil)
   (cluster_mask
    :reader cluster_mask
    :initarg :cluster_mask
    :type cl:fixnum
    :initform 0)
   (radar_id
    :reader radar_id
    :initarg :radar_id
    :type cl:fixnum
    :initform 0)
   (object_id
    :reader object_id
    :initarg :object_id
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (life_count
    :reader life_count
    :initarg :life_count
    :type cl:fixnum
    :initform 0)
   (rcs
    :reader rcs
    :initarg :rcs
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (azimuth
    :reader azimuth
    :initarg :azimuth
    :type cl:float
    :initform 0.0)
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
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass RadarObject (<RadarObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<RadarObject> is deprecated: use perception_msgs-msg:RadarObject instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_invalid-val :lambda-list '(m))
(cl:defmethod is_invalid-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:is_invalid-val is deprecated.  Use perception_msgs-msg:is_invalid instead.")
  (is_invalid m))

(cl:ensure-generic-function 'is_matched-val :lambda-list '(m))
(cl:defmethod is_matched-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:is_matched-val is deprecated.  Use perception_msgs-msg:is_matched instead.")
  (is_matched m))

(cl:ensure-generic-function 'is_still-val :lambda-list '(m))
(cl:defmethod is_still-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:is_still-val is deprecated.  Use perception_msgs-msg:is_still instead.")
  (is_still m))

(cl:ensure-generic-function 'cluster_mask-val :lambda-list '(m))
(cl:defmethod cluster_mask-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:cluster_mask-val is deprecated.  Use perception_msgs-msg:cluster_mask instead.")
  (cluster_mask m))

(cl:ensure-generic-function 'radar_id-val :lambda-list '(m))
(cl:defmethod radar_id-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:radar_id-val is deprecated.  Use perception_msgs-msg:radar_id instead.")
  (radar_id m))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:object_id-val is deprecated.  Use perception_msgs-msg:object_id instead.")
  (object_id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:type-val is deprecated.  Use perception_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'life_count-val :lambda-list '(m))
(cl:defmethod life_count-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:life_count-val is deprecated.  Use perception_msgs-msg:life_count instead.")
  (life_count m))

(cl:ensure-generic-function 'rcs-val :lambda-list '(m))
(cl:defmethod rcs-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:rcs-val is deprecated.  Use perception_msgs-msg:rcs instead.")
  (rcs m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:confidence-val is deprecated.  Use perception_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'azimuth-val :lambda-list '(m))
(cl:defmethod azimuth-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:azimuth-val is deprecated.  Use perception_msgs-msg:azimuth instead.")
  (azimuth m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:position-val is deprecated.  Use perception_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:velocity-val is deprecated.  Use perception_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:acceleration-val is deprecated.  Use perception_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'dimensions-val :lambda-list '(m))
(cl:defmethod dimensions-val ((m <RadarObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:dimensions-val is deprecated.  Use perception_msgs-msg:dimensions instead.")
  (dimensions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarObject>) ostream)
  "Serializes a message object of type '<RadarObject>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_invalid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_matched) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_still) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cluster_mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'life_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'life_count)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rcs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'azimuth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimensions) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarObject>) istream)
  "Deserializes a message object of type '<RadarObject>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_invalid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_matched) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_still) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cluster_mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'life_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'life_count)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rcs) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'azimuth) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimensions) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarObject>)))
  "Returns string type for a message object of type '<RadarObject>"
  "perception_msgs/RadarObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarObject)))
  "Returns string type for a message object of type 'RadarObject"
  "perception_msgs/RadarObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarObject>)))
  "Returns md5sum for a message object of type '<RadarObject>"
  "576c9844a5e307d0c5f0b7d6a73008c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarObject)))
  "Returns md5sum for a message object of type 'RadarObject"
  "576c9844a5e307d0c5f0b7d6a73008c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarObject>)))
  "Returns full string definition for message of type '<RadarObject>"
  (cl:format cl:nil "Header header~%~%bool is_invalid~%bool is_matched~%bool is_still~%uint8 cluster_mask~%uint8 radar_id    # 0--f_radar, 1--fr_radar, 3--rr_radar, 5--rl_radar, 7--fl_radar~%uint16 object_id  #~%uint8 type        # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck~%~%uint16 life_count  #~%float32 rcs ~%float32 confidence~%float32 azimuth    # car-body(R-F-U)  R--0, F--90,  (0,360)~%~%geometry_msgs/Point32 position  # relative position, car-body(R-F-U)~%geometry_msgs/Vector3 velocity  # relative velocity, car-body(R-F-U)~%geometry_msgs/Vector3 acceleration  # relative acceleration, car-body(R-F-U)~%geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarObject)))
  "Returns full string definition for message of type 'RadarObject"
  (cl:format cl:nil "Header header~%~%bool is_invalid~%bool is_matched~%bool is_still~%uint8 cluster_mask~%uint8 radar_id    # 0--f_radar, 1--fr_radar, 3--rr_radar, 5--rl_radar, 7--fl_radar~%uint16 object_id  #~%uint8 type        # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck~%~%uint16 life_count  #~%float32 rcs ~%float32 confidence~%float32 azimuth    # car-body(R-F-U)  R--0, F--90,  (0,360)~%~%geometry_msgs/Point32 position  # relative position, car-body(R-F-U)~%geometry_msgs/Vector3 velocity  # relative velocity, car-body(R-F-U)~%geometry_msgs/Vector3 acceleration  # relative acceleration, car-body(R-F-U)~%geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarObject>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     2
     1
     2
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimensions))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarObject>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarObject
    (cl:cons ':header (header msg))
    (cl:cons ':is_invalid (is_invalid msg))
    (cl:cons ':is_matched (is_matched msg))
    (cl:cons ':is_still (is_still msg))
    (cl:cons ':cluster_mask (cluster_mask msg))
    (cl:cons ':radar_id (radar_id msg))
    (cl:cons ':object_id (object_id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':life_count (life_count msg))
    (cl:cons ':rcs (rcs msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':azimuth (azimuth msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':dimensions (dimensions msg))
))
