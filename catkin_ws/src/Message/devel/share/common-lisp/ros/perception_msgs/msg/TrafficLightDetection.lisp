; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude TrafficLightDetection.msg.html

(cl:defclass <TrafficLightDetection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type common_msgs-msg:Header
    :initform (cl:make-instance 'common_msgs-msg:Header))
   (traffic_light
    :reader traffic_light
    :initarg :traffic_light
    :type (cl:vector perception_msgs-msg:SingleTrafficLight)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:SingleTrafficLight :initial-element (cl:make-instance 'perception_msgs-msg:SingleTrafficLight)))
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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<TrafficLightDetection> is deprecated: use perception_msgs-msg:TrafficLightDetection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrafficLightDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'traffic_light-val :lambda-list '(m))
(cl:defmethod traffic_light-val ((m <TrafficLightDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:traffic_light-val is deprecated.  Use perception_msgs-msg:traffic_light instead.")
  (traffic_light m))

(cl:ensure-generic-function 'contain_lights-val :lambda-list '(m))
(cl:defmethod contain_lights-val ((m <TrafficLightDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:contain_lights-val is deprecated.  Use perception_msgs-msg:contain_lights instead.")
  (contain_lights m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightDetection>) ostream)
  "Serializes a message object of type '<TrafficLightDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_light) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_light)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:SingleTrafficLight))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'contain_lights) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightDetection>)))
  "Returns string type for a message object of type '<TrafficLightDetection>"
  "perception_msgs/TrafficLightDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightDetection)))
  "Returns string type for a message object of type 'TrafficLightDetection"
  "perception_msgs/TrafficLightDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightDetection>)))
  "Returns md5sum for a message object of type '<TrafficLightDetection>"
  "12eadb1ef200a8dc92cf5e397b431f70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightDetection)))
  "Returns md5sum for a message object of type 'TrafficLightDetection"
  "12eadb1ef200a8dc92cf5e397b431f70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightDetection>)))
  "Returns full string definition for message of type '<TrafficLightDetection>"
  (cl:format cl:nil "common_msgs/Header header~%SingleTrafficLight[] traffic_light~%bool contain_lights~%================================================================================~%MSG: common_msgs/Header~%int32 sequence_num~%float64 time_stamp~%string 	module_name~%string 	version~%FaultVec 	fault_vec~%TimeStatistics 	time_statistics~%================================================================================~%MSG: common_msgs/FaultVec~%FaultInfo[] 	info_vec~%int32 	module_fault_level~%~%================================================================================~%MSG: common_msgs/FaultInfo~%float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%================================================================================~%MSG: common_msgs/TimeStatistics~%TimeStatus[] 	dev_time_status_msg~%float64 	sending_timestamp~%================================================================================~%MSG: common_msgs/TimeStatus~%float64 	dtime~%string 	source_node_name~%string 	destination_node_name~%================================================================================~%MSG: perception_msgs/SingleTrafficLight~%int8 color #UNKNOWN_COLOR = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;~%string id # Traffic light string-ID in the map data.~%float32 confidence  #How confidence about the detected results, between 0 and 1.~%float32 tracking_time  # Duration of the traffic light since detected.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightDetection)))
  "Returns full string definition for message of type 'TrafficLightDetection"
  (cl:format cl:nil "common_msgs/Header header~%SingleTrafficLight[] traffic_light~%bool contain_lights~%================================================================================~%MSG: common_msgs/Header~%int32 sequence_num~%float64 time_stamp~%string 	module_name~%string 	version~%FaultVec 	fault_vec~%TimeStatistics 	time_statistics~%================================================================================~%MSG: common_msgs/FaultVec~%FaultInfo[] 	info_vec~%int32 	module_fault_level~%~%================================================================================~%MSG: common_msgs/FaultInfo~%float64 	timestamp_sec~%string 	module_name~%string 	version~%int32 	error_code~%string 	msg~%int8 	fault_level~%int8 	fault_type~%================================================================================~%MSG: common_msgs/TimeStatistics~%TimeStatus[] 	dev_time_status_msg~%float64 	sending_timestamp~%================================================================================~%MSG: common_msgs/TimeStatus~%float64 	dtime~%string 	source_node_name~%string 	destination_node_name~%================================================================================~%MSG: perception_msgs/SingleTrafficLight~%int8 color #UNKNOWN_COLOR = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;~%string id # Traffic light string-ID in the map data.~%float32 confidence  #How confidence about the detected results, between 0 and 1.~%float32 tracking_time  # Duration of the traffic light since detected.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_light) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightDetection
    (cl:cons ':header (header msg))
    (cl:cons ':traffic_light (traffic_light msg))
    (cl:cons ':contain_lights (contain_lights msg))
))
