;; Auto-generated. Do not edit!


(when (boundp 'navi_msgs::VehHeader)
  (if (not (find-package "NAVI_MSGS"))
    (make-package "NAVI_MSGS"))
  (shadow 'VehHeader (find-package "NAVI_MSGS")))
(unless (find-package "NAVI_MSGS::VEHHEADER")
  (make-package "NAVI_MSGS::VEHHEADER"))

(in-package "ROS")
;;//! \htmlinclude VehHeader.msg.html


(defclass navi_msgs::VehHeader
  :super ros::object
  :slots (_veh_id _time ))

(defmethod navi_msgs::VehHeader
  (:init
   (&key
    ((:veh_id __veh_id) 0)
    ((:time __time) (instance navi_msgs::TimeStamp :init))
    )
   (send-super :init)
   (setq _veh_id (round __veh_id))
   (setq _time __time)
   self)
  (:veh_id
   (&optional __veh_id)
   (if __veh_id (setq _veh_id __veh_id)) _veh_id)
  (:time
   (&rest __time)
   (if (keywordp (car __time))
       (send* _time __time)
     (progn
       (if __time (setq _time (car __time)))
       _time)))
  (:serialization-length
   ()
   (+
    ;; uint16 _veh_id
    2
    ;; navi_msgs/TimeStamp _time
    (send _time :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _veh_id
       (write-word _veh_id s)
     ;; navi_msgs/TimeStamp _time
       (send _time :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _veh_id
     (setq _veh_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; navi_msgs/TimeStamp _time
     (send _time :deserialize buf ptr-) (incf ptr- (send _time :serialization-length))
   ;;
   self)
  )

(setf (get navi_msgs::VehHeader :md5sum-) "ef86fbe4272401883141e6e6554bd992")
(setf (get navi_msgs::VehHeader :datatype-) "navi_msgs/VehHeader")
(setf (get navi_msgs::VehHeader :definition-)
      "uint16 veh_id
TimeStamp time
================================================================================
MSG: navi_msgs/TimeStamp
uint64 s
uint64 ns
")



(provide :navi_msgs/VehHeader "ef86fbe4272401883141e6e6554bd992")


