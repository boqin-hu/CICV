;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::EulerWithCovariance)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'EulerWithCovariance (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::EULERWITHCOVARIANCE")
  (make-package "COMMON_MSGS::EULERWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude EulerWithCovariance.msg.html


(defclass common_msgs::EulerWithCovariance
  :super ros::object
  :slots (_roll _pitch _yaw ))

(defmethod common_msgs::EulerWithCovariance
  (:init
   (&key
    ((:roll __roll) (instance common_msgs::UnsureVar :init))
    ((:pitch __pitch) (instance common_msgs::UnsureVar :init))
    ((:yaw __yaw) (instance common_msgs::UnsureVar :init))
    )
   (send-super :init)
   (setq _roll __roll)
   (setq _pitch __pitch)
   (setq _yaw __yaw)
   self)
  (:roll
   (&rest __roll)
   (if (keywordp (car __roll))
       (send* _roll __roll)
     (progn
       (if __roll (setq _roll (car __roll)))
       _roll)))
  (:pitch
   (&rest __pitch)
   (if (keywordp (car __pitch))
       (send* _pitch __pitch)
     (progn
       (if __pitch (setq _pitch (car __pitch)))
       _pitch)))
  (:yaw
   (&rest __yaw)
   (if (keywordp (car __yaw))
       (send* _yaw __yaw)
     (progn
       (if __yaw (setq _yaw (car __yaw)))
       _yaw)))
  (:serialization-length
   ()
   (+
    ;; common_msgs/UnsureVar _roll
    (send _roll :serialization-length)
    ;; common_msgs/UnsureVar _pitch
    (send _pitch :serialization-length)
    ;; common_msgs/UnsureVar _yaw
    (send _yaw :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; common_msgs/UnsureVar _roll
       (send _roll :serialize s)
     ;; common_msgs/UnsureVar _pitch
       (send _pitch :serialize s)
     ;; common_msgs/UnsureVar _yaw
       (send _yaw :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; common_msgs/UnsureVar _roll
     (send _roll :deserialize buf ptr-) (incf ptr- (send _roll :serialization-length))
   ;; common_msgs/UnsureVar _pitch
     (send _pitch :deserialize buf ptr-) (incf ptr- (send _pitch :serialization-length))
   ;; common_msgs/UnsureVar _yaw
     (send _yaw :deserialize buf ptr-) (incf ptr- (send _yaw :serialization-length))
   ;;
   self)
  )

(setf (get common_msgs::EulerWithCovariance :md5sum-) "2def418964c79641088af4505a57e1a7")
(setf (get common_msgs::EulerWithCovariance :datatype-) "common_msgs/EulerWithCovariance")
(setf (get common_msgs::EulerWithCovariance :definition-)
      "UnsureVar 	roll
UnsureVar 	pitch
UnsureVar 	yaw
================================================================================
MSG: common_msgs/UnsureVar
float64 	variable
float64 	var_std
")



(provide :common_msgs/EulerWithCovariance "2def418964c79641088af4505a57e1a7")


