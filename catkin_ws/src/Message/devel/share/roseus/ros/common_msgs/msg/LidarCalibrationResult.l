;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::LidarCalibrationResult)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'LidarCalibrationResult (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::LIDARCALIBRATIONRESULT")
  (make-package "COMMON_MSGS::LIDARCALIBRATIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude LidarCalibrationResult.msg.html


(defclass common_msgs::LidarCalibrationResult
  :super ros::object
  :slots (_pose _result ))

(defmethod common_msgs::LidarCalibrationResult
  (:init
   (&key
    ((:pose __pose) (instance common_msgs::PoseEuler :init))
    ((:result __result) (instance common_msgs::CalibrationResult :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _result __result)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:result
   (&rest __result)
   (if (keywordp (car __result))
       (send* _result __result)
     (progn
       (if __result (setq _result (car __result)))
       _result)))
  (:serialization-length
   ()
   (+
    ;; common_msgs/PoseEuler _pose
    (send _pose :serialization-length)
    ;; common_msgs/CalibrationResult _result
    (send _result :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; common_msgs/PoseEuler _pose
       (send _pose :serialize s)
     ;; common_msgs/CalibrationResult _result
       (send _result :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; common_msgs/PoseEuler _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; common_msgs/CalibrationResult _result
     (send _result :deserialize buf ptr-) (incf ptr- (send _result :serialization-length))
   ;;
   self)
  )

(setf (get common_msgs::LidarCalibrationResult :md5sum-) "cc71203314fcc658fa8b4d2918277dff")
(setf (get common_msgs::LidarCalibrationResult :datatype-) "common_msgs/LidarCalibrationResult")
(setf (get common_msgs::LidarCalibrationResult :definition-)
      "PoseEuler pose
CalibrationResult result

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
MSG: common_msgs/CalibrationResult
float64  timestamp_sec
string 	module_name
string 	version
string 	info
int8 	status

")



(provide :common_msgs/LidarCalibrationResult "cc71203314fcc658fa8b4d2918277dff")


