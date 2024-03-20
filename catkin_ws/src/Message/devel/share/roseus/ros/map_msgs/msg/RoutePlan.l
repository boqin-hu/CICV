;; Auto-generated. Do not edit!


(when (boundp 'map_msgs::RoutePlan)
  (if (not (find-package "MAP_MSGS"))
    (make-package "MAP_MSGS"))
  (shadow 'RoutePlan (find-package "MAP_MSGS")))
(unless (find-package "MAP_MSGS::ROUTEPLAN")
  (make-package "MAP_MSGS::ROUTEPLAN"))

(in-package "ROS")
;;//! \htmlinclude RoutePlan.msg.html
(if (not (find-package "COMMON_MSGS"))
  (ros::roseus-add-msgs "common_msgs"))


(defclass map_msgs::RoutePlan
  :super ros::object
  :slots (_header _id _result _point _global_road _length ))

(defmethod map_msgs::RoutePlan
  (:init
   (&key
    ((:header __header) (instance common_msgs::Header :init))
    ((:id __id) 0)
    ((:result __result) 0)
    ((:point __point) (instance map_msgs::MissionPoint :init))
    ((:global_road __global_road) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _result (round __result))
   (setq _point __point)
   (setq _global_road __global_road)
   (setq _length (float __length))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:global_road
   (&optional __global_road)
   (if __global_road (setq _global_road __global_road)) _global_road)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; common_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _id
    4
    ;; int32 _result
    4
    ;; map_msgs/MissionPoint _point
    (send _point :serialization-length)
    ;; string[] _global_road
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _global_road)) 4
    ;; float64 _length
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; common_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; int32 _result
       (write-long _result s)
     ;; map_msgs/MissionPoint _point
       (send _point :serialize s)
     ;; string[] _global_road
     (write-long (length _global_road) s)
     (dolist (elem _global_road)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; common_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; map_msgs/MissionPoint _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; string[] _global_road
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _global_road (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _global_road i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get map_msgs::RoutePlan :md5sum-) "1649acf7166b841933455501b38710c4")
(setf (get map_msgs::RoutePlan :datatype-) "map_msgs/RoutePlan")
(setf (get map_msgs::RoutePlan :definition-)
      "common_msgs/Header header
int32 id
int32 result
MissionPoint point
string[] global_road
float64 length
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
MSG: map_msgs/MissionPoint
float64 xg
float64 yg
float64 heading
")



(provide :map_msgs/RoutePlan "1649acf7166b841933455501b38710c4")


