;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::Header)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'Header (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::HEADER")
  (make-package "COMMON_MSGS::HEADER"))

(in-package "ROS")
;;//! \htmlinclude Header.msg.html


(defclass common_msgs::Header
  :super ros::object
  :slots (_sequence_num _time_stamp _module_name _version _fault_vec _time_statistics ))

(defmethod common_msgs::Header
  (:init
   (&key
    ((:sequence_num __sequence_num) 0)
    ((:time_stamp __time_stamp) 0.0)
    ((:module_name __module_name) "")
    ((:version __version) "")
    ((:fault_vec __fault_vec) (instance common_msgs::FaultVec :init))
    ((:time_statistics __time_statistics) (instance common_msgs::TimeStatistics :init))
    )
   (send-super :init)
   (setq _sequence_num (round __sequence_num))
   (setq _time_stamp (float __time_stamp))
   (setq _module_name (string __module_name))
   (setq _version (string __version))
   (setq _fault_vec __fault_vec)
   (setq _time_statistics __time_statistics)
   self)
  (:sequence_num
   (&optional __sequence_num)
   (if __sequence_num (setq _sequence_num __sequence_num)) _sequence_num)
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:module_name
   (&optional __module_name)
   (if __module_name (setq _module_name __module_name)) _module_name)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:fault_vec
   (&rest __fault_vec)
   (if (keywordp (car __fault_vec))
       (send* _fault_vec __fault_vec)
     (progn
       (if __fault_vec (setq _fault_vec (car __fault_vec)))
       _fault_vec)))
  (:time_statistics
   (&rest __time_statistics)
   (if (keywordp (car __time_statistics))
       (send* _time_statistics __time_statistics)
     (progn
       (if __time_statistics (setq _time_statistics (car __time_statistics)))
       _time_statistics)))
  (:serialization-length
   ()
   (+
    ;; int32 _sequence_num
    4
    ;; float64 _time_stamp
    8
    ;; string _module_name
    4 (length _module_name)
    ;; string _version
    4 (length _version)
    ;; common_msgs/FaultVec _fault_vec
    (send _fault_vec :serialization-length)
    ;; common_msgs/TimeStatistics _time_statistics
    (send _time_statistics :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sequence_num
       (write-long _sequence_num s)
     ;; float64 _time_stamp
       (sys::poke _time_stamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _module_name
       (write-long (length _module_name) s) (princ _module_name s)
     ;; string _version
       (write-long (length _version) s) (princ _version s)
     ;; common_msgs/FaultVec _fault_vec
       (send _fault_vec :serialize s)
     ;; common_msgs/TimeStatistics _time_statistics
       (send _time_statistics :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sequence_num
     (setq _sequence_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _time_stamp
     (setq _time_stamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _module_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _module_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; common_msgs/FaultVec _fault_vec
     (send _fault_vec :deserialize buf ptr-) (incf ptr- (send _fault_vec :serialization-length))
   ;; common_msgs/TimeStatistics _time_statistics
     (send _time_statistics :deserialize buf ptr-) (incf ptr- (send _time_statistics :serialization-length))
   ;;
   self)
  )

(setf (get common_msgs::Header :md5sum-) "e31935db661363d21d899876e48cac39")
(setf (get common_msgs::Header :datatype-) "common_msgs/Header")
(setf (get common_msgs::Header :definition-)
      "int32 sequence_num
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
")



(provide :common_msgs/Header "e31935db661363d21d899876e48cac39")


