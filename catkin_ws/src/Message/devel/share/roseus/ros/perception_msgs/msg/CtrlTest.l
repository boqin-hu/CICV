;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::CtrlTest)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'CtrlTest (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::CTRLTEST")
  (make-package "PERCEPTION_MSGS::CTRLTEST"))

(in-package "ROS")
;;//! \htmlinclude CtrlTest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::CtrlTest
  :super ros::object
  :slots (_header _accPedal _braPedal _strAngle _strAnglespd ))

(defmethod perception_msgs::CtrlTest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:accPedal __accPedal) 0.0)
    ((:braPedal __braPedal) 0.0)
    ((:strAngle __strAngle) 0.0)
    ((:strAnglespd __strAnglespd) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _accPedal (float __accPedal))
   (setq _braPedal (float __braPedal))
   (setq _strAngle (float __strAngle))
   (setq _strAnglespd (float __strAnglespd))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:accPedal
   (&optional __accPedal)
   (if __accPedal (setq _accPedal __accPedal)) _accPedal)
  (:braPedal
   (&optional __braPedal)
   (if __braPedal (setq _braPedal __braPedal)) _braPedal)
  (:strAngle
   (&optional __strAngle)
   (if __strAngle (setq _strAngle __strAngle)) _strAngle)
  (:strAnglespd
   (&optional __strAnglespd)
   (if __strAnglespd (setq _strAnglespd __strAnglespd)) _strAnglespd)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _accPedal
    8
    ;; float64 _braPedal
    8
    ;; float64 _strAngle
    8
    ;; float64 _strAnglespd
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _accPedal
       (sys::poke _accPedal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _braPedal
       (sys::poke _braPedal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _strAngle
       (sys::poke _strAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _strAnglespd
       (sys::poke _strAnglespd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _accPedal
     (setq _accPedal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _braPedal
     (setq _braPedal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _strAngle
     (setq _strAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _strAnglespd
     (setq _strAnglespd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get perception_msgs::CtrlTest :md5sum-) "f1c1085caf4973c0b458fcd0b971fc2d")
(setf (get perception_msgs::CtrlTest :datatype-) "perception_msgs/CtrlTest")
(setf (get perception_msgs::CtrlTest :definition-)
      "Header header

float64 accPedal            # 加速踏板开度
float64 braPedal            # 制动踏板开度
float64 strAngle            # 方向盘转角
float64 strAnglespd         # 方向盘转角变化率
#float64 strAnglelimit        # 方向盘转角限制


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :perception_msgs/CtrlTest "f1c1085caf4973c0b458fcd0b971fc2d")


