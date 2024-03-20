;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::ObstacleCell)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'ObstacleCell (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::OBSTACLECELL")
  (make-package "PERCEPTION_MSGS::OBSTACLECELL"))

(in-package "ROS")
;;//! \htmlinclude ObstacleCell.msg.html


(defclass perception_msgs::ObstacleCell
  :super ros::object
  :slots (_idc _x _y _xg _yg ))

(defmethod perception_msgs::ObstacleCell
  (:init
   (&key
    ((:idc __idc) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:xg __xg) 0.0)
    ((:yg __yg) 0.0)
    )
   (send-super :init)
   (setq _idc (round __idc))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _xg (float __xg))
   (setq _yg (float __yg))
   self)
  (:idc
   (&optional __idc)
   (if __idc (setq _idc __idc)) _idc)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:xg
   (&optional __xg)
   (if __xg (setq _xg __xg)) _xg)
  (:yg
   (&optional __yg)
   (if __yg (setq _yg __yg)) _yg)
  (:serialization-length
   ()
   (+
    ;; int32 _idc
    4
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _xg
    8
    ;; float64 _yg
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _idc
       (write-long _idc s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xg
       (sys::poke _xg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yg
       (sys::poke _yg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _idc
     (setq _idc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xg
     (setq _xg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yg
     (setq _yg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get perception_msgs::ObstacleCell :md5sum-) "808fcd23ffbb5d2b132baf88e48ddc52")
(setf (get perception_msgs::ObstacleCell :datatype-) "perception_msgs/ObstacleCell")
(setf (get perception_msgs::ObstacleCell :definition-)
      "int32 idc
float64 x
float64 y
float64 xg
float64 yg
")



(provide :perception_msgs/ObstacleCell "808fcd23ffbb5d2b132baf88e48ddc52")


