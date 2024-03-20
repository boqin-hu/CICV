;; Auto-generated. Do not edit!


(when (boundp 'navi_msgs::NaviTaskStatus)
  (if (not (find-package "NAVI_MSGS"))
    (make-package "NAVI_MSGS"))
  (shadow 'NaviTaskStatus (find-package "NAVI_MSGS")))
(unless (find-package "NAVI_MSGS::NAVITASKSTATUS")
  (make-package "NAVI_MSGS::NAVITASKSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NaviTaskStatus.msg.html


(defclass navi_msgs::NaviTaskStatus
  :super ros::object
  :slots (_v_header _status ))

(defmethod navi_msgs::NaviTaskStatus
  (:init
   (&key
    ((:v_header __v_header) (instance navi_msgs::VehHeader :init))
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _v_header __v_header)
   (setq _status (round __status))
   self)
  (:v_header
   (&rest __v_header)
   (if (keywordp (car __v_header))
       (send* _v_header __v_header)
     (progn
       (if __v_header (setq _v_header (car __v_header)))
       _v_header)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; navi_msgs/VehHeader _v_header
    (send _v_header :serialization-length)
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; navi_msgs/VehHeader _v_header
       (send _v_header :serialize s)
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; navi_msgs/VehHeader _v_header
     (send _v_header :deserialize buf ptr-) (incf ptr- (send _v_header :serialization-length))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get navi_msgs::NaviTaskStatus :md5sum-) "385f807662e68b44b2d006b0602e2751")
(setf (get navi_msgs::NaviTaskStatus :datatype-) "navi_msgs/NaviTaskStatus")
(setf (get navi_msgs::NaviTaskStatus :definition-)
      "VehHeader v_header
int32 status	 

================================================================================
MSG: navi_msgs/VehHeader
uint16 veh_id
TimeStamp time
================================================================================
MSG: navi_msgs/TimeStamp
uint64 s
uint64 ns
")



(provide :navi_msgs/NaviTaskStatus "385f807662e68b44b2d006b0602e2751")


