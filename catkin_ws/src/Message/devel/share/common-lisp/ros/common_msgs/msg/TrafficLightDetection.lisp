; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude TrafficLightDetection.msg.html

(cl:defclass <TrafficLightDetection> (roslisp-msg-protocol:ros-message)
  ((SimTim
    :reader SimTim
    :initarg :SimTim
    :type cl:float
    :initform 0.0)
   (num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0)
   (traffic_light
    :reader traffic_light
    :initarg :traffic_light
    :type (cl:vector common_msgs-msg:SingleTrafficLight)
   :initform (cl:make-array 0 :element-type 'common_msgs-msg:SingleTrafficLight :initial-element (cl:make-instance 'common_msgs-msg:SingleTrafficLight)))
   (contain_lights
    :reader contain_lights
    :initarg :contain_lights
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrafficLightDetection (<TrafficLightDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<TrafficLightDetection> is deprecated: use common_msgs-msg:TrafficLightDetection instead.")))

(cl:ensure-generic-function 'SimTim-val :lambda-list '(m))
(cl:defmethod SimTim-val ((m <TrafficLightDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:SimTim-val is deprecated.  Use common_msgs-msg:SimTim instead.")
  (SimTim m))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <TrafficLightDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:num-val is deprecated.  Use common_msgs-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'traffic_light-val :lambda-list '(m))
(cl:defmethod traffic_light-val ((m <TrafficLightDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:traffic_light-val is deprecated.  Use common_msgs-msg:traffic_light instead.")
  (traffic_light m))

(cl:ensure-generic-function 'contain_lights-val :lambda-list '(m))
(cl:defmethod contain_lights-val ((m <TrafficLightDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:contain_lights-val is deprecated.  Use common_msgs-msg:contain_lights instead.")
  (contain_lights m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightDetection>) ostream)
  "Serializes a message object of type '<TrafficLightDetection>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'SimTim))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traffic_light))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traffic_light))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'contain_lights) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightDetection>) istream)
  "Deserializes a message object of type '<TrafficLightDetection>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SimTim) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_light) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_light)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'common_msgs-msg:SingleTrafficLight))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'contain_lights) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightDetection>)))
  "Returns string type for a message object of type '<TrafficLightDetection>"
  "common_msgs/TrafficLightDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightDetection)))
  "Returns string type for a message object of type 'TrafficLightDetection"
  "common_msgs/TrafficLightDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightDetection>)))
  "Returns md5sum for a message object of type '<TrafficLightDetection>"
  "ca3a73acb5dcd3f6d21017a5cd0a7b58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightDetection)))
  "Returns md5sum for a message object of type 'TrafficLightDetection"
  "ca3a73acb5dcd3f6d21017a5cd0a7b58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightDetection>)))
  "Returns full string definition for message of type '<TrafficLightDetection>"
  (cl:format cl:nil "#std_msgs/Header  header~%float64 SimTim~%int32 num ~%SingleTrafficLight[] traffic_light~%bool contain_lights~%~%================================================================================~%MSG: common_msgs/SingleTrafficLight~%int8 color #UNKNOWN_COLOR = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;~%int32 id # Traffic light string-ID in the map data.~%float32 confidence  #How confidence about the detected results, between 0 and 1.~%float32 tracking_time  # Duration of the traffic light since detected.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightDetection)))
  "Returns full string definition for message of type 'TrafficLightDetection"
  (cl:format cl:nil "#std_msgs/Header  header~%float64 SimTim~%int32 num ~%SingleTrafficLight[] traffic_light~%bool contain_lights~%~%================================================================================~%MSG: common_msgs/SingleTrafficLight~%int8 color #UNKNOWN_COLOR = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;~%int32 id # Traffic light string-ID in the map data.~%float32 confidence  #How confidence about the detected results, between 0 and 1.~%float32 tracking_time  # Duration of the traffic light since detected.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightDetection>))
  (cl:+ 0
     8
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_light) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightDetection
    (cl:cons ':SimTim (SimTim msg))
    (cl:cons ':num (num msg))
    (cl:cons ':traffic_light (traffic_light msg))
    (cl:cons ':contain_lights (contain_lights msg))
))
