;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::DRPoseWithTime)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'DRPoseWithTime (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::DRPOSEWITHTIME")
  (make-package "COMMON_MSGS::DRPOSEWITHTIME"))

(in-package "ROS")
;;//! \htmlinclude DRPoseWithTime.msg.html


(defclass common_msgs::DRPoseWithTime
  :super ros::object
  :slots (_week _utctime _dr_time _pose_euler ))

(defmethod common_msgs::DRPoseWithTime
  (:init
   (&key
    ((:week __week) 0)
    ((:utctime __utctime) 0.0)
    ((:dr_time __dr_time) 0.0)
    ((:pose_euler __pose_euler) (instance common_msgs::PoseEuler :init))
    )
   (send-super :init)
   (setq _week (round __week))
   (setq _utctime (float __utctime))
   (setq _dr_time (float __dr_time))
   (setq _pose_euler __pose_euler)
   self)
  (:week
   (&optional __week)
   (if __week (setq _week __week)) _week)
  (:utctime
   (&optional __utctime)
   (if __utctime (setq _utctime __utctime)) _utctime)
  (:dr_time
   (&optional __dr_time)
   (if __dr_time (setq _dr_time __dr_time)) _dr_time)
  (:pose_euler
   (&rest __pose_euler)
   (if (keywordp (car __pose_euler))
       (send* _pose_euler __pose_euler)
     (progn
       (if __pose_euler (setq _pose_euler (car __pose_euler)))
       _pose_euler)))
  (:serialization-length
   ()
   (+
    ;; int32 _week
    4
    ;; float64 _utctime
    8
    ;; float64 _dr_time
    8
    ;; common_msgs/PoseEuler _pose_euler
    (send _pose_euler :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _week
       (write-long _week s)
     ;; float64 _utctime
       (sys::poke _utctime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dr_time
       (sys::poke _dr_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; common_msgs/PoseEuler _pose_euler
       (send _pose_euler :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _week
     (setq _week (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _utctime
     (setq _utctime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dr_time
     (setq _dr_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; common_msgs/PoseEuler _pose_euler
     (send _pose_euler :deserialize buf ptr-) (incf ptr- (send _pose_euler :serialization-length))
   ;;
   self)
  )

(setf (get common_msgs::DRPoseWithTime :md5sum-) "e3866a48419eccf2d481c14a6c62e1f5")
(setf (get common_msgs::DRPoseWithTime :datatype-) "common_msgs/DRPoseWithTime")
(setf (get common_msgs::DRPoseWithTime :definition-)
      "int32      week
float64    utctime
float64    dr_time
PoseEuler  pose_euler
================================================================================
MSG: common_msgs/PoseEuler
Vector3WithCovariance 	position
EulerWithCovariance 	rotation
================================================================================
MSG: common_msgs/Vector3WithCovariance
UnsureVar 	x
UnsureVar 	y
UnsureVar 	z
================================================================================
MSG: common_msgs/UnsureVar
float64 	variable
float64 	var_std
================================================================================
MSG: common_msgs/EulerWithCovariance
UnsureVar 	roll
UnsureVar 	pitch
UnsureVar 	yaw
")



(provide :common_msgs/DRPoseWithTime "e3866a48419eccf2d481c14a6c62e1f5")


