;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::TrajectoryPoint)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'TrajectoryPoint (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::TRAJECTORYPOINT")
  (make-package "COMMON_MSGS::TRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryPoint.msg.html


(defclass common_msgs::TrajectoryPoint
  :super ros::object
  :slots (_Position_x _Position_y _Velocity _Heading _Curvature _t_space _s_along ))

(defmethod common_msgs::TrajectoryPoint
  (:init
   (&key
    ((:Position_x __Position_x) 0.0)
    ((:Position_y __Position_y) 0.0)
    ((:Velocity __Velocity) 0.0)
    ((:Heading __Heading) 0.0)
    ((:Curvature __Curvature) 0.0)
    ((:t_space __t_space) 0.0)
    ((:s_along __s_along) 0.0)
    )
   (send-super :init)
   (setq _Position_x (float __Position_x))
   (setq _Position_y (float __Position_y))
   (setq _Velocity (float __Velocity))
   (setq _Heading (float __Heading))
   (setq _Curvature (float __Curvature))
   (setq _t_space (float __t_space))
   (setq _s_along (float __s_along))
   self)
  (:Position_x
   (&optional __Position_x)
   (if __Position_x (setq _Position_x __Position_x)) _Position_x)
  (:Position_y
   (&optional __Position_y)
   (if __Position_y (setq _Position_y __Position_y)) _Position_y)
  (:Velocity
   (&optional __Velocity)
   (if __Velocity (setq _Velocity __Velocity)) _Velocity)
  (:Heading
   (&optional __Heading)
   (if __Heading (setq _Heading __Heading)) _Heading)
  (:Curvature
   (&optional __Curvature)
   (if __Curvature (setq _Curvature __Curvature)) _Curvature)
  (:t_space
   (&optional __t_space)
   (if __t_space (setq _t_space __t_space)) _t_space)
  (:s_along
   (&optional __s_along)
   (if __s_along (setq _s_along __s_along)) _s_along)
  (:serialization-length
   ()
   (+
    ;; float32 _Position_x
    4
    ;; float32 _Position_y
    4
    ;; float32 _Velocity
    4
    ;; float32 _Heading
    4
    ;; float32 _Curvature
    4
    ;; float32 _t_space
    4
    ;; float32 _s_along
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Position_x
       (sys::poke _Position_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Position_y
       (sys::poke _Position_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Velocity
       (sys::poke _Velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Heading
       (sys::poke _Heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Curvature
       (sys::poke _Curvature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _t_space
       (sys::poke _t_space (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _s_along
       (sys::poke _s_along (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Position_x
     (setq _Position_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Position_y
     (setq _Position_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Velocity
     (setq _Velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Heading
     (setq _Heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Curvature
     (setq _Curvature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _t_space
     (setq _t_space (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _s_along
     (setq _s_along (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get common_msgs::TrajectoryPoint :md5sum-) "f8af69cf1a28e5c716644308c9ae4e7b")
(setf (get common_msgs::TrajectoryPoint :datatype-) "common_msgs/TrajectoryPoint")
(setf (get common_msgs::TrajectoryPoint :definition-)
      "# TrajectoryPoint of VtdToRos

float32 Position_x   #道路点X向坐标
float32 Position_y   #道路点Y向坐标
float32 Velocity     #道路点合速度
float32 Heading      #道路点朝向
float32 Curvature    #路点曲率
float32 t_space      #路点相对时间
float32 s_along      #沿路线距离

")



(provide :common_msgs/TrajectoryPoint "f8af69cf1a28e5c716644308c9ae4e7b")


