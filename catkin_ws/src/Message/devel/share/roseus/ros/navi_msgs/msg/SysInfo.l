;; Auto-generated. Do not edit!


(when (boundp 'navi_msgs::SysInfo)
  (if (not (find-package "NAVI_MSGS"))
    (make-package "NAVI_MSGS"))
  (shadow 'SysInfo (find-package "NAVI_MSGS")))
(unless (find-package "NAVI_MSGS::SYSINFO")
  (make-package "NAVI_MSGS::SYSINFO"))

(in-package "ROS")
;;//! \htmlinclude SysInfo.msg.html


(defclass navi_msgs::SysInfo
  :super ros::object
  :slots (_cpu_occupied _mem_occupied _cur_mileage _history_mileage ))

(defmethod navi_msgs::SysInfo
  (:init
   (&key
    ((:cpu_occupied __cpu_occupied) 0.0)
    ((:mem_occupied __mem_occupied) 0.0)
    ((:cur_mileage __cur_mileage) 0.0)
    ((:history_mileage __history_mileage) 0.0)
    )
   (send-super :init)
   (setq _cpu_occupied (float __cpu_occupied))
   (setq _mem_occupied (float __mem_occupied))
   (setq _cur_mileage (float __cur_mileage))
   (setq _history_mileage (float __history_mileage))
   self)
  (:cpu_occupied
   (&optional __cpu_occupied)
   (if __cpu_occupied (setq _cpu_occupied __cpu_occupied)) _cpu_occupied)
  (:mem_occupied
   (&optional __mem_occupied)
   (if __mem_occupied (setq _mem_occupied __mem_occupied)) _mem_occupied)
  (:cur_mileage
   (&optional __cur_mileage)
   (if __cur_mileage (setq _cur_mileage __cur_mileage)) _cur_mileage)
  (:history_mileage
   (&optional __history_mileage)
   (if __history_mileage (setq _history_mileage __history_mileage)) _history_mileage)
  (:serialization-length
   ()
   (+
    ;; float32 _cpu_occupied
    4
    ;; float32 _mem_occupied
    4
    ;; float64 _cur_mileage
    8
    ;; float64 _history_mileage
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _cpu_occupied
       (sys::poke _cpu_occupied (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mem_occupied
       (sys::poke _mem_occupied (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _cur_mileage
       (sys::poke _cur_mileage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _history_mileage
       (sys::poke _history_mileage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _cpu_occupied
     (setq _cpu_occupied (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mem_occupied
     (setq _mem_occupied (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _cur_mileage
     (setq _cur_mileage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _history_mileage
     (setq _history_mileage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get navi_msgs::SysInfo :md5sum-) "32c91a41efe8d7f00d4b592a7b9c6532")
(setf (get navi_msgs::SysInfo :datatype-) "navi_msgs/SysInfo")
(setf (get navi_msgs::SysInfo :definition-)
      "float32  cpu_occupied
float32  mem_occupied
float64  cur_mileage
float64  history_mileage

")



(provide :navi_msgs/SysInfo "32c91a41efe8d7f00d4b592a7b9c6532")


