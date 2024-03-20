;; Auto-generated. Do not edit!


(when (boundp 'navi_msgs::VehPosition)
  (if (not (find-package "NAVI_MSGS"))
    (make-package "NAVI_MSGS"))
  (shadow 'VehPosition (find-package "NAVI_MSGS")))
(unless (find-package "NAVI_MSGS::VEHPOSITION")
  (make-package "NAVI_MSGS::VEHPOSITION"))

(in-package "ROS")
;;//! \htmlinclude VehPosition.msg.html


(defclass navi_msgs::VehPosition
  :super ros::object
  :slots (_v_header _position ))

(defmethod navi_msgs::VehPosition
  (:init
   (&key
    ((:v_header __v_header) (instance navi_msgs::VehHeader :init))
    ((:position __position) (instance navi_msgs::Point2D :init))
    )
   (send-super :init)
   (setq _v_header __v_header)
   (setq _position __position)
   self)
  (:v_header
   (&rest __v_header)
   (if (keywordp (car __v_header))
       (send* _v_header __v_header)
     (progn
       (if __v_header (setq _v_header (car __v_header)))
       _v_header)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; navi_msgs/VehHeader _v_header
    (send _v_header :serialization-length)
    ;; navi_msgs/Point2D _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; navi_msgs/VehHeader _v_header
       (send _v_header :serialize s)
     ;; navi_msgs/Point2D _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; navi_msgs/VehHeader _v_header
     (send _v_header :deserialize buf ptr-) (incf ptr- (send _v_header :serialization-length))
   ;; navi_msgs/Point2D _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(setf (get navi_msgs::VehPosition :md5sum-) "1724989aafc3320d6e07dd9b646ee451")
(setf (get navi_msgs::VehPosition :datatype-) "navi_msgs/VehPosition")
(setf (get navi_msgs::VehPosition :definition-)
      "VehHeader v_header
Point2D position
================================================================================
MSG: navi_msgs/VehHeader
uint16 veh_id
TimeStamp time
================================================================================
MSG: navi_msgs/TimeStamp
uint64 s
uint64 ns
================================================================================
MSG: navi_msgs/Point2D
float64 x
float64 y
")



(provide :navi_msgs/VehPosition "1724989aafc3320d6e07dd9b646ee451")


