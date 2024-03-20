;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::PoseEuler)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'PoseEuler (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::POSEEULER")
  (make-package "COMMON_MSGS::POSEEULER"))

(in-package "ROS")
;;//! \htmlinclude PoseEuler.msg.html


(defclass common_msgs::PoseEuler
  :super ros::object
  :slots (_position _rotation ))

(defmethod common_msgs::PoseEuler
  (:init
   (&key
    ((:position __position) (instance common_msgs::Vector3WithCovariance :init))
    ((:rotation __rotation) (instance common_msgs::EulerWithCovariance :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _rotation __rotation)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:rotation
   (&rest __rotation)
   (if (keywordp (car __rotation))
       (send* _rotation __rotation)
     (progn
       (if __rotation (setq _rotation (car __rotation)))
       _rotation)))
  (:serialization-length
   ()
   (+
    ;; common_msgs/Vector3WithCovariance _position
    (send _position :serialization-length)
    ;; common_msgs/EulerWithCovariance _rotation
    (send _rotation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; common_msgs/Vector3WithCovariance _position
       (send _position :serialize s)
     ;; common_msgs/EulerWithCovariance _rotation
       (send _rotation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; common_msgs/Vector3WithCovariance _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; common_msgs/EulerWithCovariance _rotation
     (send _rotation :deserialize buf ptr-) (incf ptr- (send _rotation :serialization-length))
   ;;
   self)
  )

(setf (get common_msgs::PoseEuler :md5sum-) "d8f0dec34a7aced56ccf5b23f28c3a53")
(setf (get common_msgs::PoseEuler :datatype-) "common_msgs/PoseEuler")
(setf (get common_msgs::PoseEuler :definition-)
      "Vector3WithCovariance 	position
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



(provide :common_msgs/PoseEuler "d8f0dec34a7aced56ccf5b23f28c3a53")


