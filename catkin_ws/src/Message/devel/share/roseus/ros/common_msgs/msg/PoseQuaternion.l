;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::PoseQuaternion)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'PoseQuaternion (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::POSEQUATERNION")
  (make-package "COMMON_MSGS::POSEQUATERNION"))

(in-package "ROS")
;;//! \htmlinclude PoseQuaternion.msg.html


(defclass common_msgs::PoseQuaternion
  :super ros::object
  :slots (_position _quaternion _rpy_covariance ))

(defmethod common_msgs::PoseQuaternion
  (:init
   (&key
    ((:position __position) (instance common_msgs::Vector3WithCovariance :init))
    ((:quaternion __quaternion) (instance common_msgs::Quaternion :init))
    ((:rpy_covariance __rpy_covariance) (instance common_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _quaternion __quaternion)
   (setq _rpy_covariance __rpy_covariance)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:quaternion
   (&rest __quaternion)
   (if (keywordp (car __quaternion))
       (send* _quaternion __quaternion)
     (progn
       (if __quaternion (setq _quaternion (car __quaternion)))
       _quaternion)))
  (:rpy_covariance
   (&rest __rpy_covariance)
   (if (keywordp (car __rpy_covariance))
       (send* _rpy_covariance __rpy_covariance)
     (progn
       (if __rpy_covariance (setq _rpy_covariance (car __rpy_covariance)))
       _rpy_covariance)))
  (:serialization-length
   ()
   (+
    ;; common_msgs/Vector3WithCovariance _position
    (send _position :serialization-length)
    ;; common_msgs/Quaternion _quaternion
    (send _quaternion :serialization-length)
    ;; common_msgs/Vector3 _rpy_covariance
    (send _rpy_covariance :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; common_msgs/Vector3WithCovariance _position
       (send _position :serialize s)
     ;; common_msgs/Quaternion _quaternion
       (send _quaternion :serialize s)
     ;; common_msgs/Vector3 _rpy_covariance
       (send _rpy_covariance :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; common_msgs/Vector3WithCovariance _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; common_msgs/Quaternion _quaternion
     (send _quaternion :deserialize buf ptr-) (incf ptr- (send _quaternion :serialization-length))
   ;; common_msgs/Vector3 _rpy_covariance
     (send _rpy_covariance :deserialize buf ptr-) (incf ptr- (send _rpy_covariance :serialization-length))
   ;;
   self)
  )

(setf (get common_msgs::PoseQuaternion :md5sum-) "c198d5fc129720a7ae62198ae0b52dfa")
(setf (get common_msgs::PoseQuaternion :datatype-) "common_msgs/PoseQuaternion")
(setf (get common_msgs::PoseQuaternion :definition-)
      "Vector3WithCovariance 	position
Quaternion 	quaternion
Vector3  rpy_covariance	
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
MSG: common_msgs/Quaternion
float64 	x
float64 	y
float64 	z
float64 	w
================================================================================
MSG: common_msgs/Vector3
float64 	x
float64 	y
float64 	z
")



(provide :common_msgs/PoseQuaternion "c198d5fc129720a7ae62198ae0b52dfa")


