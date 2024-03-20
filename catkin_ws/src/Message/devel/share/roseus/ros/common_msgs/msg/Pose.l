;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::Pose)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'Pose (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::POSE")
  (make-package "COMMON_MSGS::POSE"))

(in-package "ROS")
;;//! \htmlinclude Pose.msg.html


(defclass common_msgs::Pose
  :super ros::object
  :slots (_pose_euler _pose_quaternion _status ))

(defmethod common_msgs::Pose
  (:init
   (&key
    ((:pose_euler __pose_euler) (instance common_msgs::PoseEuler :init))
    ((:pose_quaternion __pose_quaternion) (instance common_msgs::PoseQuaternion :init))
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _pose_euler __pose_euler)
   (setq _pose_quaternion __pose_quaternion)
   (setq _status (round __status))
   self)
  (:pose_euler
   (&rest __pose_euler)
   (if (keywordp (car __pose_euler))
       (send* _pose_euler __pose_euler)
     (progn
       (if __pose_euler (setq _pose_euler (car __pose_euler)))
       _pose_euler)))
  (:pose_quaternion
   (&rest __pose_quaternion)
   (if (keywordp (car __pose_quaternion))
       (send* _pose_quaternion __pose_quaternion)
     (progn
       (if __pose_quaternion (setq _pose_quaternion (car __pose_quaternion)))
       _pose_quaternion)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; common_msgs/PoseEuler _pose_euler
    (send _pose_euler :serialization-length)
    ;; common_msgs/PoseQuaternion _pose_quaternion
    (send _pose_quaternion :serialization-length)
    ;; int8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; common_msgs/PoseEuler _pose_euler
       (send _pose_euler :serialize s)
     ;; common_msgs/PoseQuaternion _pose_quaternion
       (send _pose_quaternion :serialize s)
     ;; int8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; common_msgs/PoseEuler _pose_euler
     (send _pose_euler :deserialize buf ptr-) (incf ptr- (send _pose_euler :serialization-length))
   ;; common_msgs/PoseQuaternion _pose_quaternion
     (send _pose_quaternion :deserialize buf ptr-) (incf ptr- (send _pose_quaternion :serialization-length))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;;
   self)
  )

(setf (get common_msgs::Pose :md5sum-) "184ff128e0b5b9ac5cd314f5034d86b0")
(setf (get common_msgs::Pose :datatype-) "common_msgs/Pose")
(setf (get common_msgs::Pose :definition-)
      "PoseEuler  	pose_euler
PoseQuaternion 	pose_quaternion
int8  	status   # 0-normal  1-error
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
================================================================================
MSG: common_msgs/PoseQuaternion
Vector3WithCovariance 	position
Quaternion 	quaternion
Vector3  rpy_covariance	
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



(provide :common_msgs/Pose "184ff128e0b5b9ac5cd314f5034d86b0")


