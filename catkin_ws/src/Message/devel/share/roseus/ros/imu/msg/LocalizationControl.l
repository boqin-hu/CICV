;; Auto-generated. Do not edit!


(when (boundp 'imu::LocalizationControl)
  (if (not (find-package "IMU"))
    (make-package "IMU"))
  (shadow 'LocalizationControl (find-package "IMU")))
(unless (find-package "IMU::LOCALIZATIONCONTROL")
  (make-package "IMU::LOCALIZATIONCONTROL"))

(in-package "ROS")
;;//! \htmlinclude LocalizationControl.msg.html


(defclass imu::LocalizationControl
  :super ros::object
  :slots (_is_lidar_open ))

(defmethod imu::LocalizationControl
  (:init
   (&key
    ((:is_lidar_open __is_lidar_open) nil)
    )
   (send-super :init)
   (setq _is_lidar_open __is_lidar_open)
   self)
  (:is_lidar_open
   (&optional (__is_lidar_open :null))
   (if (not (eq __is_lidar_open :null)) (setq _is_lidar_open __is_lidar_open)) _is_lidar_open)
  (:serialization-length
   ()
   (+
    ;; bool _is_lidar_open
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_lidar_open
       (if _is_lidar_open (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_lidar_open
     (setq _is_lidar_open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get imu::LocalizationControl :md5sum-) "a5bdebbf6b9fb5d72cc29e9f5a1240ac")
(setf (get imu::LocalizationControl :datatype-) "imu/LocalizationControl")
(setf (get imu::LocalizationControl :definition-)
      "bool is_lidar_open
")



(provide :imu/LocalizationControl "a5bdebbf6b9fb5d72cc29e9f5a1240ac")


