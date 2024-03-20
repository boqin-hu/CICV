;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::NavStatus)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'NavStatus (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::NAVSTATUS")
  (make-package "COMMON_MSGS::NAVSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NavStatus.msg.html


(defclass common_msgs::NavStatus
  :super ros::object
  :slots (_utc_time _gps_status _pos_status _att_status _init_status _sate_num _hdop _pdop _diff_age ))

(defmethod common_msgs::NavStatus
  (:init
   (&key
    ((:utc_time __utc_time) 0.0)
    ((:gps_status __gps_status) 0)
    ((:pos_status __pos_status) 0)
    ((:att_status __att_status) 0)
    ((:init_status __init_status) 0)
    ((:sate_num __sate_num) 0)
    ((:hdop __hdop) 0.0)
    ((:pdop __pdop) 0.0)
    ((:diff_age __diff_age) 0.0)
    )
   (send-super :init)
   (setq _utc_time (float __utc_time))
   (setq _gps_status (round __gps_status))
   (setq _pos_status (round __pos_status))
   (setq _att_status (round __att_status))
   (setq _init_status (round __init_status))
   (setq _sate_num (round __sate_num))
   (setq _hdop (float __hdop))
   (setq _pdop (float __pdop))
   (setq _diff_age (float __diff_age))
   self)
  (:utc_time
   (&optional __utc_time)
   (if __utc_time (setq _utc_time __utc_time)) _utc_time)
  (:gps_status
   (&optional __gps_status)
   (if __gps_status (setq _gps_status __gps_status)) _gps_status)
  (:pos_status
   (&optional __pos_status)
   (if __pos_status (setq _pos_status __pos_status)) _pos_status)
  (:att_status
   (&optional __att_status)
   (if __att_status (setq _att_status __att_status)) _att_status)
  (:init_status
   (&optional __init_status)
   (if __init_status (setq _init_status __init_status)) _init_status)
  (:sate_num
   (&optional __sate_num)
   (if __sate_num (setq _sate_num __sate_num)) _sate_num)
  (:hdop
   (&optional __hdop)
   (if __hdop (setq _hdop __hdop)) _hdop)
  (:pdop
   (&optional __pdop)
   (if __pdop (setq _pdop __pdop)) _pdop)
  (:diff_age
   (&optional __diff_age)
   (if __diff_age (setq _diff_age __diff_age)) _diff_age)
  (:serialization-length
   ()
   (+
    ;; float64 _utc_time
    8
    ;; int8 _gps_status
    1
    ;; int32 _pos_status
    4
    ;; int32 _att_status
    4
    ;; int32 _init_status
    4
    ;; int32 _sate_num
    4
    ;; float32 _hdop
    4
    ;; float32 _pdop
    4
    ;; float32 _diff_age
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _utc_time
       (sys::poke _utc_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _gps_status
       (write-byte _gps_status s)
     ;; int32 _pos_status
       (write-long _pos_status s)
     ;; int32 _att_status
       (write-long _att_status s)
     ;; int32 _init_status
       (write-long _init_status s)
     ;; int32 _sate_num
       (write-long _sate_num s)
     ;; float32 _hdop
       (sys::poke _hdop (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pdop
       (sys::poke _pdop (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_age
       (sys::poke _diff_age (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _utc_time
     (setq _utc_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _gps_status
     (setq _gps_status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gps_status 127) (setq _gps_status (- _gps_status 256)))
   ;; int32 _pos_status
     (setq _pos_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _att_status
     (setq _att_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _init_status
     (setq _init_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _sate_num
     (setq _sate_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _hdop
     (setq _hdop (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pdop
     (setq _pdop (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_age
     (setq _diff_age (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get common_msgs::NavStatus :md5sum-) "66cf32030c6e7f18df10ff34df97d9cc")
(setf (get common_msgs::NavStatus :datatype-) "common_msgs/NavStatus")
(setf (get common_msgs::NavStatus :definition-)
      "float64 	utc_time
int8 	gps_status # 0-nofix  1-single  2-psrdiff  3-code_diff  4-narrow_init  5-narrow_float
int32 	pos_status
int32  	att_status
int32  	init_status
int32  	sate_num
float32  	hdop
float32  	pdop
float32  	diff_age
")



(provide :common_msgs/NavStatus "66cf32030c6e7f18df10ff34df97d9cc")


