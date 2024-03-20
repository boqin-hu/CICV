;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::Trajectory)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'Trajectory (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::TRAJECTORY")
  (make-package "COMMON_MSGS::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html


(defclass common_msgs::Trajectory
  :super ros::object
  :slots (_SimTim _decision_type _turn_light_type _num _trajectorypoints ))

(defmethod common_msgs::Trajectory
  (:init
   (&key
    ((:SimTim __SimTim) 0.0)
    ((:decision_type __decision_type) 0)
    ((:turn_light_type __turn_light_type) 0)
    ((:num __num) 0)
    ((:trajectorypoints __trajectorypoints) ())
    )
   (send-super :init)
   (setq _SimTim (float __SimTim))
   (setq _decision_type (round __decision_type))
   (setq _turn_light_type (round __turn_light_type))
   (setq _num (round __num))
   (setq _trajectorypoints __trajectorypoints)
   self)
  (:SimTim
   (&optional __SimTim)
   (if __SimTim (setq _SimTim __SimTim)) _SimTim)
  (:decision_type
   (&optional __decision_type)
   (if __decision_type (setq _decision_type __decision_type)) _decision_type)
  (:turn_light_type
   (&optional __turn_light_type)
   (if __turn_light_type (setq _turn_light_type __turn_light_type)) _turn_light_type)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:trajectorypoints
   (&rest __trajectorypoints)
   (if (keywordp (car __trajectorypoints))
       (send* _trajectorypoints __trajectorypoints)
     (progn
       (if __trajectorypoints (setq _trajectorypoints (car __trajectorypoints)))
       _trajectorypoints)))
  (:serialization-length
   ()
   (+
    ;; float64 _SimTim
    8
    ;; int32 _decision_type
    4
    ;; int32 _turn_light_type
    4
    ;; int32 _num
    4
    ;; common_msgs/TrajectoryPoint[] _trajectorypoints
    (apply #'+ (send-all _trajectorypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _SimTim
       (sys::poke _SimTim (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _decision_type
       (write-long _decision_type s)
     ;; int32 _turn_light_type
       (write-long _turn_light_type s)
     ;; int32 _num
       (write-long _num s)
     ;; common_msgs/TrajectoryPoint[] _trajectorypoints
     (write-long (length _trajectorypoints) s)
     (dolist (elem _trajectorypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _SimTim
     (setq _SimTim (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _decision_type
     (setq _decision_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _turn_light_type
     (setq _turn_light_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num
     (setq _num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; common_msgs/TrajectoryPoint[] _trajectorypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectorypoints (let (r) (dotimes (i n) (push (instance common_msgs::TrajectoryPoint :init) r)) r))
     (dolist (elem- _trajectorypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get common_msgs::Trajectory :md5sum-) "1bb05648bf98b981e26e4b22c2800b04")
(setf (get common_msgs::Trajectory :datatype-) "common_msgs/Trajectory")
(setf (get common_msgs::Trajectory :definition-)
      "# Trajectory of VtdToRos

float64 SimTim
int32 decision_type
int32 turn_light_type
int32 num 
TrajectoryPoint[] trajectorypoints

================================================================================
MSG: common_msgs/TrajectoryPoint
# TrajectoryPoint of VtdToRos

float32 Position_x   #道路点X向坐标
float32 Position_y   #道路点Y向坐标
float32 Velocity     #道路点合速度
float32 Heading      #道路点朝向
float32 Curvature    #路点曲率
float32 t_space      #路点相对时间
float32 s_along      #沿路线距离

")



(provide :common_msgs/Trajectory "1bb05648bf98b981e26e4b22c2800b04")


