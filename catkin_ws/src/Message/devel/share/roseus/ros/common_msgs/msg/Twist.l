;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::Twist)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'Twist (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::TWIST")
  (make-package "COMMON_MSGS::TWIST"))

(in-package "ROS")
;;//! \htmlinclude Twist.msg.html


(defclass common_msgs::Twist
  :super ros::object
  :slots (_velocity _angular_velocity ))

(defmethod common_msgs::Twist
  (:init
   (&key
    ((:velocity __velocity) (instance common_msgs::Vector3WithCovariance :init))
    ((:angular_velocity __angular_velocity) (instance common_msgs::Vector3WithCovariance :init))
    )
   (send-super :init)
   (setq _velocity __velocity)
   (setq _angular_velocity __angular_velocity)
   self)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:serialization-length
   ()
   (+
    ;; common_msgs/Vector3WithCovariance _velocity
    (send _velocity :serialization-length)
    ;; common_msgs/Vector3WithCovariance _angular_velocity
    (send _angular_velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; common_msgs/Vector3WithCovariance _velocity
       (send _velocity :serialize s)
     ;; common_msgs/Vector3WithCovariance _angular_velocity
       (send _angular_velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; common_msgs/Vector3WithCovariance _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; common_msgs/Vector3WithCovariance _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;;
   self)
  )

(setf (get common_msgs::Twist :md5sum-) "89e6e36950801075ca0366daae3a0780")
(setf (get common_msgs::Twist :datatype-) "common_msgs/Twist")
(setf (get common_msgs::Twist :definition-)
      "Vector3WithCovariance 	velocity
Vector3WithCovariance 	angular_velocity
================================================================================
MSG: common_msgs/Vector3WithCovariance
UnsureVar 	x
UnsureVar 	y
UnsureVar 	z
================================================================================
MSG: common_msgs/UnsureVar
float64 	variable
float64 	var_std
")



(provide :common_msgs/Twist "89e6e36950801075ca0366daae3a0780")


