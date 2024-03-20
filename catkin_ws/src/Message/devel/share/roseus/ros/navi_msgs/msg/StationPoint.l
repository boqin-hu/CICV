;; Auto-generated. Do not edit!


(when (boundp 'navi_msgs::StationPoint)
  (if (not (find-package "NAVI_MSGS"))
    (make-package "NAVI_MSGS"))
  (shadow 'StationPoint (find-package "NAVI_MSGS")))
(unless (find-package "NAVI_MSGS::STATIONPOINT")
  (make-package "NAVI_MSGS::STATIONPOINT"))

(in-package "ROS")
;;//! \htmlinclude StationPoint.msg.html


(defclass navi_msgs::StationPoint
  :super ros::object
  :slots (_x _y _station_id ))

(defmethod navi_msgs::StationPoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:station_id __station_id) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _station_id (round __station_id))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:station_id
   (&optional __station_id)
   (if __station_id (setq _station_id __station_id)) _station_id)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; uint16 _station_id
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _station_id
       (write-word _station_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _station_id
     (setq _station_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get navi_msgs::StationPoint :md5sum-) "cd87fa514ed6a37f6daab224ce9b0919")
(setf (get navi_msgs::StationPoint :datatype-) "navi_msgs/StationPoint")
(setf (get navi_msgs::StationPoint :definition-)
      "float64 x
float64 y
uint16 station_id

")



(provide :navi_msgs/StationPoint "cd87fa514ed6a37f6daab224ce9b0919")


