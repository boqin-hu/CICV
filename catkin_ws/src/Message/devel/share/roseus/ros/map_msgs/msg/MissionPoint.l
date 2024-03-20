;; Auto-generated. Do not edit!


(when (boundp 'map_msgs::MissionPoint)
  (if (not (find-package "MAP_MSGS"))
    (make-package "MAP_MSGS"))
  (shadow 'MissionPoint (find-package "MAP_MSGS")))
(unless (find-package "MAP_MSGS::MISSIONPOINT")
  (make-package "MAP_MSGS::MISSIONPOINT"))

(in-package "ROS")
;;//! \htmlinclude MissionPoint.msg.html


(defclass map_msgs::MissionPoint
  :super ros::object
  :slots (_xg _yg _heading ))

(defmethod map_msgs::MissionPoint
  (:init
   (&key
    ((:xg __xg) 0.0)
    ((:yg __yg) 0.0)
    ((:heading __heading) 0.0)
    )
   (send-super :init)
   (setq _xg (float __xg))
   (setq _yg (float __yg))
   (setq _heading (float __heading))
   self)
  (:xg
   (&optional __xg)
   (if __xg (setq _xg __xg)) _xg)
  (:yg
   (&optional __yg)
   (if __yg (setq _yg __yg)) _yg)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:serialization-length
   ()
   (+
    ;; float64 _xg
    8
    ;; float64 _yg
    8
    ;; float64 _heading
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _xg
       (sys::poke _xg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yg
       (sys::poke _yg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _xg
     (setq _xg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yg
     (setq _yg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get map_msgs::MissionPoint :md5sum-) "98d4522e42072043a81f851094862e51")
(setf (get map_msgs::MissionPoint :datatype-) "map_msgs/MissionPoint")
(setf (get map_msgs::MissionPoint :definition-)
      "float64 xg
float64 yg
float64 heading
")



(provide :map_msgs/MissionPoint "98d4522e42072043a81f851094862e51")


