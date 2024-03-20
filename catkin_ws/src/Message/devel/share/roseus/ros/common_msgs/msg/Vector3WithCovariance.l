;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::Vector3WithCovariance)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'Vector3WithCovariance (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::VECTOR3WITHCOVARIANCE")
  (make-package "COMMON_MSGS::VECTOR3WITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude Vector3WithCovariance.msg.html


(defclass common_msgs::Vector3WithCovariance
  :super ros::object
  :slots (_x _y _z ))

(defmethod common_msgs::Vector3WithCovariance
  (:init
   (&key
    ((:x __x) (instance common_msgs::UnsureVar :init))
    ((:y __y) (instance common_msgs::UnsureVar :init))
    ((:z __z) (instance common_msgs::UnsureVar :init))
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _z __z)
   self)
  (:x
   (&rest __x)
   (if (keywordp (car __x))
       (send* _x __x)
     (progn
       (if __x (setq _x (car __x)))
       _x)))
  (:y
   (&rest __y)
   (if (keywordp (car __y))
       (send* _y __y)
     (progn
       (if __y (setq _y (car __y)))
       _y)))
  (:z
   (&rest __z)
   (if (keywordp (car __z))
       (send* _z __z)
     (progn
       (if __z (setq _z (car __z)))
       _z)))
  (:serialization-length
   ()
   (+
    ;; common_msgs/UnsureVar _x
    (send _x :serialization-length)
    ;; common_msgs/UnsureVar _y
    (send _y :serialization-length)
    ;; common_msgs/UnsureVar _z
    (send _z :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; common_msgs/UnsureVar _x
       (send _x :serialize s)
     ;; common_msgs/UnsureVar _y
       (send _y :serialize s)
     ;; common_msgs/UnsureVar _z
       (send _z :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; common_msgs/UnsureVar _x
     (send _x :deserialize buf ptr-) (incf ptr- (send _x :serialization-length))
   ;; common_msgs/UnsureVar _y
     (send _y :deserialize buf ptr-) (incf ptr- (send _y :serialization-length))
   ;; common_msgs/UnsureVar _z
     (send _z :deserialize buf ptr-) (incf ptr- (send _z :serialization-length))
   ;;
   self)
  )

(setf (get common_msgs::Vector3WithCovariance :md5sum-) "f33be6fa24c988ddc4f60ceb1dee662b")
(setf (get common_msgs::Vector3WithCovariance :datatype-) "common_msgs/Vector3WithCovariance")
(setf (get common_msgs::Vector3WithCovariance :definition-)
      "UnsureVar 	x
UnsureVar 	y
UnsureVar 	z
================================================================================
MSG: common_msgs/UnsureVar
float64 	variable
float64 	var_std
")



(provide :common_msgs/Vector3WithCovariance "f33be6fa24c988ddc4f60ceb1dee662b")


