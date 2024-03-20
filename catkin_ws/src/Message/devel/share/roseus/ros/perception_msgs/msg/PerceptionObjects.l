;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::PerceptionObjects)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'PerceptionObjects (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::PERCEPTIONOBJECTS")
  (make-package "PERCEPTION_MSGS::PERCEPTIONOBJECTS"))

(in-package "ROS")
;;//! \htmlinclude PerceptionObjects.msg.html
(if (not (find-package "COMMON_MSGS"))
  (ros::roseus-add-msgs "common_msgs"))


(defclass perception_msgs::PerceptionObjects
  :super ros::object
  :slots (_header _objs _cells ))

(defmethod perception_msgs::PerceptionObjects
  (:init
   (&key
    ((:header __header) (instance common_msgs::Header :init))
    ((:objs __objs) ())
    ((:cells __cells) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _objs __objs)
   (setq _cells __cells)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objs
   (&rest __objs)
   (if (keywordp (car __objs))
       (send* _objs __objs)
     (progn
       (if __objs (setq _objs (car __objs)))
       _objs)))
  (:cells
   (&rest __cells)
   (if (keywordp (car __cells))
       (send* _cells __cells)
     (progn
       (if __cells (setq _cells (car __cells)))
       _cells)))
  (:serialization-length
   ()
   (+
    ;; common_msgs/Header _header
    (send _header :serialization-length)
    ;; perception_msgs/Object[] _objs
    (apply #'+ (send-all _objs :serialization-length)) 4
    ;; perception_msgs/ObstacleCell[] _cells
    (apply #'+ (send-all _cells :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; common_msgs/Header _header
       (send _header :serialize s)
     ;; perception_msgs/Object[] _objs
     (write-long (length _objs) s)
     (dolist (elem _objs)
       (send elem :serialize s)
       )
     ;; perception_msgs/ObstacleCell[] _cells
     (write-long (length _cells) s)
     (dolist (elem _cells)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; common_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; perception_msgs/Object[] _objs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objs (let (r) (dotimes (i n) (push (instance perception_msgs::Object :init) r)) r))
     (dolist (elem- _objs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_msgs/ObstacleCell[] _cells
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cells (let (r) (dotimes (i n) (push (instance perception_msgs::ObstacleCell :init) r)) r))
     (dolist (elem- _cells)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_msgs::PerceptionObjects :md5sum-) "79908444545b6666f901065dc0df6345")
(setf (get perception_msgs::PerceptionObjects :datatype-) "perception_msgs/PerceptionObjects")
(setf (get perception_msgs::PerceptionObjects :definition-)
      "common_msgs/Header header
Object[] objs
ObstacleCell[] cells
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
MSG: perception_msgs/Object
uint32 id 						# obstacle ID.
float32 x  		# relative distance of x, VCS, unit: m
float32 y 		# relative distance of y, VCS, unit: m
float32 z 						# relative distance of z, VCS, unit: m
float32 vxrel     # relative speed of x, VCS, unit: m/s
float32 vyrel     # relative speed of y, VCS, unit: m/s
float64 xabs      # relative distance of x, VCS, unit: m
float64 yabs      # relative distance of y, VCS, unit: m
float32 vxabs     # relative speed of x, VCS, unit: m/s
float32 vyabs     # relative speed of y, VCS, unit: m/s
float32 width     # unit: m
float32 length    # unit: m
float32 height     				# unit: m
float32 speed      				# unit: m/s
float32 heading      			# unit: du
uint8 type 					# CAR_TYPE=0, TRUCK_TYPE=1, PEDESTRIAN_TYPE=2, CYCLIST_TYPE=3, UNKNOWN_TYPE=4, UNKNOWN_MOVABLE_TYPE=5, UNKNOWN_UNMOVABLE_TYPE=6
uint8 source 					# VISION=0x0000 MOBILEYE=0x0001 LIDAR=0x0100 RADAR=0x0200 ARS_0=0x0201   ARS_1=0x0202  ARS_2=0x0203  ARS_3=0x0204
float32 confidence				# 0.0~1.0
uint32 age						# 
uint8 velocitystatus 			# 
ObstacleCell[] cells 

# uint8 track_level
# uint8 invi_count
# uint8 vis_count

# float32 acc_x
# float32 acc_y


================================================================================
MSG: perception_msgs/ObstacleCell
int32 idc
float64 x
float64 y
float64 xg
float64 yg
")



(provide :perception_msgs/PerceptionObjects "79908444545b6666f901065dc0df6345")


