;; Auto-generated. Do not edit!


(when (boundp 'navi_msgs::NaviHmi)
  (if (not (find-package "NAVI_MSGS"))
    (make-package "NAVI_MSGS"))
  (shadow 'NaviHmi (find-package "NAVI_MSGS")))
(unless (find-package "NAVI_MSGS::NAVIHMI")
  (make-package "NAVI_MSGS::NAVIHMI"))

(in-package "ROS")
;;//! \htmlinclude NaviHmi.msg.html


(defclass navi_msgs::NaviHmi
  :super ros::object
  :slots (_timestamp_sec _interactive _event_type _event_id ))

(defmethod navi_msgs::NaviHmi
  (:init
   (&key
    ((:timestamp_sec __timestamp_sec) 0.0)
    ((:interactive __interactive) 0)
    ((:event_type __event_type) 0)
    ((:event_id __event_id) 0)
    )
   (send-super :init)
   (setq _timestamp_sec (float __timestamp_sec))
   (setq _interactive (round __interactive))
   (setq _event_type (round __event_type))
   (setq _event_id (round __event_id))
   self)
  (:timestamp_sec
   (&optional __timestamp_sec)
   (if __timestamp_sec (setq _timestamp_sec __timestamp_sec)) _timestamp_sec)
  (:interactive
   (&optional __interactive)
   (if __interactive (setq _interactive __interactive)) _interactive)
  (:event_type
   (&optional __event_type)
   (if __event_type (setq _event_type __event_type)) _event_type)
  (:event_id
   (&optional __event_id)
   (if __event_id (setq _event_id __event_id)) _event_id)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp_sec
    8
    ;; int32 _interactive
    4
    ;; int32 _event_type
    4
    ;; int32 _event_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp_sec
       (sys::poke _timestamp_sec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _interactive
       (write-long _interactive s)
     ;; int32 _event_type
       (write-long _event_type s)
     ;; int32 _event_id
       (write-long _event_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp_sec
     (setq _timestamp_sec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _interactive
     (setq _interactive (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _event_type
     (setq _event_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _event_id
     (setq _event_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get navi_msgs::NaviHmi :md5sum-) "5b2932c5457cada5cc44e42751723cc0")
(setf (get navi_msgs::NaviHmi :datatype-) "navi_msgs/NaviHmi")
(setf (get navi_msgs::NaviHmi :definition-)
      "float64   timestamp_sec
int32     interactive #600:任务状态 800：播报
int32     event_type  #0：车辆进站 1：车辆起步 2：车辆清车 3：任务提醒
int32     event_id    #event_type = 0||1 id=\"站点id\"；event_type = 2 id=0；event_type=3 0:空闲/结束 1：执行 2：异常


")



(provide :navi_msgs/NaviHmi "5b2932c5457cada5cc44e42751723cc0")


