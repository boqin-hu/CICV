;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::TrajectoryPoint)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'TrajectoryPoint (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::TRAJECTORYPOINT")
  (make-package "PERCEPTION_MSGS::TRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryPoint.msg.html


(defclass perception_msgs::TrajectoryPoint
  :super ros::object
  :slots (_position _velocity _heading _curvature _s _t _point_type ))

(defmethod perception_msgs::TrajectoryPoint
  (:init
   (&key
    ((:position __position) (instance perception_msgs::Point2D :init))
    ((:velocity __velocity) 0.0)
    ((:heading __heading) 0.0)
    ((:curvature __curvature) 0.0)
    ((:s __s) 0.0)
    ((:t __t) 0.0)
    ((:point_type __point_type) 0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _velocity (float __velocity))
   (setq _heading (float __heading))
   (setq _curvature (float __curvature))
   (setq _s (float __s))
   (setq _t (float __t))
   (setq _point_type (round __point_type))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:point_type
   (&optional __point_type)
   (if __point_type (setq _point_type __point_type)) _point_type)
  (:serialization-length
   ()
   (+
    ;; perception_msgs/Point2D _position
    (send _position :serialization-length)
    ;; float32 _velocity
    4
    ;; float32 _heading
    4
    ;; float32 _curvature
    4
    ;; float32 _s
    4
    ;; float32 _t
    4
    ;; int8 _point_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_msgs/Point2D _position
       (send _position :serialize s)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _curvature
       (sys::poke _curvature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _s
       (sys::poke _s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _t
       (sys::poke _t (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _point_type
       (write-byte _point_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_msgs/Point2D _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _curvature
     (setq _curvature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _s
     (setq _s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _t
     (setq _t (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _point_type
     (setq _point_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _point_type 127) (setq _point_type (- _point_type 256)))
   ;;
   self)
  )

(setf (get perception_msgs::TrajectoryPoint :md5sum-) "308fbdfad21569e0af17819e9dd2a2d2")
(setf (get perception_msgs::TrajectoryPoint :datatype-) "perception_msgs/TrajectoryPoint")
(setf (get perception_msgs::TrajectoryPoint :definition-)
      "Point2D position
float32 velocity
float32 heading
float32 curvature
float32 s
float32 t
int8 point_type

================================================================================
MSG: perception_msgs/Point2D
float64 x
float64 y

")



(provide :perception_msgs/TrajectoryPoint "308fbdfad21569e0af17819e9dd2a2d2")


