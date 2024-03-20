;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::TrafficLightDetection)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'TrafficLightDetection (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::TRAFFICLIGHTDETECTION")
  (make-package "PERCEPTION_MSGS::TRAFFICLIGHTDETECTION"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightDetection.msg.html
(if (not (find-package "COMMON_MSGS"))
  (ros::roseus-add-msgs "common_msgs"))


(defclass perception_msgs::TrafficLightDetection
  :super ros::object
  :slots (_header _traffic_light _contain_lights ))

(defmethod perception_msgs::TrafficLightDetection
  (:init
   (&key
    ((:header __header) (instance common_msgs::Header :init))
    ((:traffic_light __traffic_light) ())
    ((:contain_lights __contain_lights) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _traffic_light __traffic_light)
   (setq _contain_lights __contain_lights)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:traffic_light
   (&rest __traffic_light)
   (if (keywordp (car __traffic_light))
       (send* _traffic_light __traffic_light)
     (progn
       (if __traffic_light (setq _traffic_light (car __traffic_light)))
       _traffic_light)))
  (:contain_lights
   (&optional (__contain_lights :null))
   (if (not (eq __contain_lights :null)) (setq _contain_lights __contain_lights)) _contain_lights)
  (:serialization-length
   ()
   (+
    ;; common_msgs/Header _header
    (send _header :serialization-length)
    ;; perception_msgs/SingleTrafficLight[] _traffic_light
    (apply #'+ (send-all _traffic_light :serialization-length)) 4
    ;; bool _contain_lights
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; common_msgs/Header _header
       (send _header :serialize s)
     ;; perception_msgs/SingleTrafficLight[] _traffic_light
     (write-long (length _traffic_light) s)
     (dolist (elem _traffic_light)
       (send elem :serialize s)
       )
     ;; bool _contain_lights
       (if _contain_lights (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; common_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; perception_msgs/SingleTrafficLight[] _traffic_light
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_light (let (r) (dotimes (i n) (push (instance perception_msgs::SingleTrafficLight :init) r)) r))
     (dolist (elem- _traffic_light)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _contain_lights
     (setq _contain_lights (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get perception_msgs::TrafficLightDetection :md5sum-) "12eadb1ef200a8dc92cf5e397b431f70")
(setf (get perception_msgs::TrafficLightDetection :datatype-) "perception_msgs/TrafficLightDetection")
(setf (get perception_msgs::TrafficLightDetection :definition-)
      "common_msgs/Header header
SingleTrafficLight[] traffic_light
bool contain_lights
================================================================================
MSG: common_msgs/Header
int32 sequence_num
float64 time_stamp
string 	module_name
string 	version
FaultVec 	fault_vec
TimeStatistics 	time_statistics
================================================================================
MSG: common_msgs/FaultVec
FaultInfo[] 	info_vec
int32 	module_fault_level

================================================================================
MSG: common_msgs/FaultInfo
float64 	timestamp_sec
string 	module_name
string 	version
int32 	error_code
string 	msg
int8 	fault_level
int8 	fault_type
================================================================================
MSG: common_msgs/TimeStatistics
TimeStatus[] 	dev_time_status_msg
float64 	sending_timestamp
================================================================================
MSG: common_msgs/TimeStatus
float64 	dtime
string 	source_node_name
string 	destination_node_name
================================================================================
MSG: perception_msgs/SingleTrafficLight
int8 color #UNKNOWN_COLOR = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;
string id # Traffic light string-ID in the map data.
float32 confidence  #How confidence about the detected results, between 0 and 1.
float32 tracking_time  # Duration of the traffic light since detected.

")



(provide :perception_msgs/TrafficLightDetection "12eadb1ef200a8dc92cf5e397b431f70")


