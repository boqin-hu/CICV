;; Auto-generated. Do not edit!


(when (boundp 'can_msgs::CAN32A)
  (if (not (find-package "CAN_MSGS"))
    (make-package "CAN_MSGS"))
  (shadow 'CAN32A (find-package "CAN_MSGS")))
(unless (find-package "CAN_MSGS::CAN32A")
  (make-package "CAN_MSGS::CAN32A"))

(in-package "ROS")
;;//! \htmlinclude CAN32A.msg.html


(defclass can_msgs::CAN32A
  :super ros::object
  :slots (_timestamp _velocity _acceleration ))

(defmethod can_msgs::CAN32A
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:velocity __velocity) 0.0)
    ((:acceleration __acceleration) 0.0)
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _velocity (float __velocity))
   (setq _acceleration (float __acceleration))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; float64 _velocity
    8
    ;; float64 _acceleration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acceleration
     (setq _acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get can_msgs::CAN32A :md5sum-) "88a6f16d6b8103af9a21eb51e2c01d05")
(setf (get can_msgs::CAN32A :datatype-) "can_msgs/CAN32A")
(setf (get can_msgs::CAN32A :definition-)
      "float64 timestamp
float64 velocity
float64 acceleration
")



(provide :can_msgs/CAN32A "88a6f16d6b8103af9a21eb51e2c01d05")


