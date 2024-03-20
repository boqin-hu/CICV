;; Auto-generated. Do not edit!


(when (boundp 'canbus_msgs::CanFault)
  (if (not (find-package "CANBUS_MSGS"))
    (make-package "CANBUS_MSGS"))
  (shadow 'CanFault (find-package "CANBUS_MSGS")))
(unless (find-package "CANBUS_MSGS::CANFAULT")
  (make-package "CANBUS_MSGS::CANFAULT"))

(in-package "ROS")
;;//! \htmlinclude CanFault.msg.html


(defclass canbus_msgs::CanFault
  :super ros::object
  :slots (_can_fault_flag _can103_fault_flag _mmw_lidar0_flag _mmw_lidar1_flag _mmw_lidar3_flag _mmw_lidar5_flag _mmw_lidar7_flag _ult_5C8_flag _ult_5C9_flag _can_busoff_flag _can103_busoff_flag _canbus_module_level1_flag _canbus_module_level2_flag ))

(defmethod canbus_msgs::CanFault
  (:init
   (&key
    ((:can_fault_flag __can_fault_flag) 0)
    ((:can103_fault_flag __can103_fault_flag) 0)
    ((:mmw_lidar0_flag __mmw_lidar0_flag) 0)
    ((:mmw_lidar1_flag __mmw_lidar1_flag) 0)
    ((:mmw_lidar3_flag __mmw_lidar3_flag) 0)
    ((:mmw_lidar5_flag __mmw_lidar5_flag) 0)
    ((:mmw_lidar7_flag __mmw_lidar7_flag) 0)
    ((:ult_5C8_flag __ult_5C8_flag) 0)
    ((:ult_5C9_flag __ult_5C9_flag) 0)
    ((:can_busoff_flag __can_busoff_flag) 0)
    ((:can103_busoff_flag __can103_busoff_flag) 0)
    ((:canbus_module_level1_flag __canbus_module_level1_flag) 0)
    ((:canbus_module_level2_flag __canbus_module_level2_flag) 0)
    )
   (send-super :init)
   (setq _can_fault_flag (round __can_fault_flag))
   (setq _can103_fault_flag (round __can103_fault_flag))
   (setq _mmw_lidar0_flag (round __mmw_lidar0_flag))
   (setq _mmw_lidar1_flag (round __mmw_lidar1_flag))
   (setq _mmw_lidar3_flag (round __mmw_lidar3_flag))
   (setq _mmw_lidar5_flag (round __mmw_lidar5_flag))
   (setq _mmw_lidar7_flag (round __mmw_lidar7_flag))
   (setq _ult_5C8_flag (round __ult_5C8_flag))
   (setq _ult_5C9_flag (round __ult_5C9_flag))
   (setq _can_busoff_flag (round __can_busoff_flag))
   (setq _can103_busoff_flag (round __can103_busoff_flag))
   (setq _canbus_module_level1_flag (round __canbus_module_level1_flag))
   (setq _canbus_module_level2_flag (round __canbus_module_level2_flag))
   self)
  (:can_fault_flag
   (&optional __can_fault_flag)
   (if __can_fault_flag (setq _can_fault_flag __can_fault_flag)) _can_fault_flag)
  (:can103_fault_flag
   (&optional __can103_fault_flag)
   (if __can103_fault_flag (setq _can103_fault_flag __can103_fault_flag)) _can103_fault_flag)
  (:mmw_lidar0_flag
   (&optional __mmw_lidar0_flag)
   (if __mmw_lidar0_flag (setq _mmw_lidar0_flag __mmw_lidar0_flag)) _mmw_lidar0_flag)
  (:mmw_lidar1_flag
   (&optional __mmw_lidar1_flag)
   (if __mmw_lidar1_flag (setq _mmw_lidar1_flag __mmw_lidar1_flag)) _mmw_lidar1_flag)
  (:mmw_lidar3_flag
   (&optional __mmw_lidar3_flag)
   (if __mmw_lidar3_flag (setq _mmw_lidar3_flag __mmw_lidar3_flag)) _mmw_lidar3_flag)
  (:mmw_lidar5_flag
   (&optional __mmw_lidar5_flag)
   (if __mmw_lidar5_flag (setq _mmw_lidar5_flag __mmw_lidar5_flag)) _mmw_lidar5_flag)
  (:mmw_lidar7_flag
   (&optional __mmw_lidar7_flag)
   (if __mmw_lidar7_flag (setq _mmw_lidar7_flag __mmw_lidar7_flag)) _mmw_lidar7_flag)
  (:ult_5C8_flag
   (&optional __ult_5C8_flag)
   (if __ult_5C8_flag (setq _ult_5C8_flag __ult_5C8_flag)) _ult_5C8_flag)
  (:ult_5C9_flag
   (&optional __ult_5C9_flag)
   (if __ult_5C9_flag (setq _ult_5C9_flag __ult_5C9_flag)) _ult_5C9_flag)
  (:can_busoff_flag
   (&optional __can_busoff_flag)
   (if __can_busoff_flag (setq _can_busoff_flag __can_busoff_flag)) _can_busoff_flag)
  (:can103_busoff_flag
   (&optional __can103_busoff_flag)
   (if __can103_busoff_flag (setq _can103_busoff_flag __can103_busoff_flag)) _can103_busoff_flag)
  (:canbus_module_level1_flag
   (&optional __canbus_module_level1_flag)
   (if __canbus_module_level1_flag (setq _canbus_module_level1_flag __canbus_module_level1_flag)) _canbus_module_level1_flag)
  (:canbus_module_level2_flag
   (&optional __canbus_module_level2_flag)
   (if __canbus_module_level2_flag (setq _canbus_module_level2_flag __canbus_module_level2_flag)) _canbus_module_level2_flag)
  (:serialization-length
   ()
   (+
    ;; int16 _can_fault_flag
    2
    ;; int16 _can103_fault_flag
    2
    ;; int16 _mmw_lidar0_flag
    2
    ;; int16 _mmw_lidar1_flag
    2
    ;; int16 _mmw_lidar3_flag
    2
    ;; int16 _mmw_lidar5_flag
    2
    ;; int16 _mmw_lidar7_flag
    2
    ;; int16 _ult_5C8_flag
    2
    ;; int16 _ult_5C9_flag
    2
    ;; int16 _can_busoff_flag
    2
    ;; int16 _can103_busoff_flag
    2
    ;; int16 _canbus_module_level1_flag
    2
    ;; int16 _canbus_module_level2_flag
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _can_fault_flag
       (write-word _can_fault_flag s)
     ;; int16 _can103_fault_flag
       (write-word _can103_fault_flag s)
     ;; int16 _mmw_lidar0_flag
       (write-word _mmw_lidar0_flag s)
     ;; int16 _mmw_lidar1_flag
       (write-word _mmw_lidar1_flag s)
     ;; int16 _mmw_lidar3_flag
       (write-word _mmw_lidar3_flag s)
     ;; int16 _mmw_lidar5_flag
       (write-word _mmw_lidar5_flag s)
     ;; int16 _mmw_lidar7_flag
       (write-word _mmw_lidar7_flag s)
     ;; int16 _ult_5C8_flag
       (write-word _ult_5C8_flag s)
     ;; int16 _ult_5C9_flag
       (write-word _ult_5C9_flag s)
     ;; int16 _can_busoff_flag
       (write-word _can_busoff_flag s)
     ;; int16 _can103_busoff_flag
       (write-word _can103_busoff_flag s)
     ;; int16 _canbus_module_level1_flag
       (write-word _canbus_module_level1_flag s)
     ;; int16 _canbus_module_level2_flag
       (write-word _canbus_module_level2_flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _can_fault_flag
     (setq _can_fault_flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _can103_fault_flag
     (setq _can103_fault_flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _mmw_lidar0_flag
     (setq _mmw_lidar0_flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _mmw_lidar1_flag
     (setq _mmw_lidar1_flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _mmw_lidar3_flag
     (setq _mmw_lidar3_flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _mmw_lidar5_flag
     (setq _mmw_lidar5_flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _mmw_lidar7_flag
     (setq _mmw_lidar7_flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ult_5C8_flag
     (setq _ult_5C8_flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ult_5C9_flag
     (setq _ult_5C9_flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _can_busoff_flag
     (setq _can_busoff_flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _can103_busoff_flag
     (setq _can103_busoff_flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _canbus_module_level1_flag
     (setq _canbus_module_level1_flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _canbus_module_level2_flag
     (setq _canbus_module_level2_flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get canbus_msgs::CanFault :md5sum-) "c8ae15ad4df221ade0f55c8006aaa5ca")
(setf (get canbus_msgs::CanFault :datatype-) "canbus_msgs/CanFault")
(setf (get canbus_msgs::CanFault :definition-)
      "int16   can_fault_flag
int16   can103_fault_flag
int16   mmw_lidar0_flag
int16   mmw_lidar1_flag
int16   mmw_lidar3_flag
int16   mmw_lidar5_flag
int16   mmw_lidar7_flag
int16   ult_5C8_flag
int16   ult_5C9_flag
int16   can_busoff_flag
int16   can103_busoff_flag
int16   canbus_module_level1_flag
int16   canbus_module_level2_flag

")



(provide :canbus_msgs/CanFault "c8ae15ad4df221ade0f55c8006aaa5ca")


