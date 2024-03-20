;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::CICV_Location)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'CICV_Location (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::CICV_LOCATION")
  (make-package "COMMON_MSGS::CICV_LOCATION"))

(in-package "ROS")
;;//! \htmlinclude CICV_Location.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass common_msgs::CICV_Location
  :super ros::object
  :slots (_header _SimTim _Position_x _Position_y _Velocity_x _Velocity_y _Accel_x _Accel_y _Yaw _Angular_velocity_z ))

(defmethod common_msgs::CICV_Location
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:SimTim __SimTim) 0.0)
    ((:Position_x __Position_x) 0.0)
    ((:Position_y __Position_y) 0.0)
    ((:Velocity_x __Velocity_x) 0.0)
    ((:Velocity_y __Velocity_y) 0.0)
    ((:Accel_x __Accel_x) 0.0)
    ((:Accel_y __Accel_y) 0.0)
    ((:Yaw __Yaw) 0.0)
    ((:Angular_velocity_z __Angular_velocity_z) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _SimTim (float __SimTim))
   (setq _Position_x (float __Position_x))
   (setq _Position_y (float __Position_y))
   (setq _Velocity_x (float __Velocity_x))
   (setq _Velocity_y (float __Velocity_y))
   (setq _Accel_x (float __Accel_x))
   (setq _Accel_y (float __Accel_y))
   (setq _Yaw (float __Yaw))
   (setq _Angular_velocity_z (float __Angular_velocity_z))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:SimTim
   (&optional __SimTim)
   (if __SimTim (setq _SimTim __SimTim)) _SimTim)
  (:Position_x
   (&optional __Position_x)
   (if __Position_x (setq _Position_x __Position_x)) _Position_x)
  (:Position_y
   (&optional __Position_y)
   (if __Position_y (setq _Position_y __Position_y)) _Position_y)
  (:Velocity_x
   (&optional __Velocity_x)
   (if __Velocity_x (setq _Velocity_x __Velocity_x)) _Velocity_x)
  (:Velocity_y
   (&optional __Velocity_y)
   (if __Velocity_y (setq _Velocity_y __Velocity_y)) _Velocity_y)
  (:Accel_x
   (&optional __Accel_x)
   (if __Accel_x (setq _Accel_x __Accel_x)) _Accel_x)
  (:Accel_y
   (&optional __Accel_y)
   (if __Accel_y (setq _Accel_y __Accel_y)) _Accel_y)
  (:Yaw
   (&optional __Yaw)
   (if __Yaw (setq _Yaw __Yaw)) _Yaw)
  (:Angular_velocity_z
   (&optional __Angular_velocity_z)
   (if __Angular_velocity_z (setq _Angular_velocity_z __Angular_velocity_z)) _Angular_velocity_z)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _SimTim
    8
    ;; float64 _Position_x
    8
    ;; float64 _Position_y
    8
    ;; float64 _Velocity_x
    8
    ;; float64 _Velocity_y
    8
    ;; float64 _Accel_x
    8
    ;; float64 _Accel_y
    8
    ;; float64 _Yaw
    8
    ;; float64 _Angular_velocity_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _SimTim
       (sys::poke _SimTim (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Position_x
       (sys::poke _Position_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Position_y
       (sys::poke _Position_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Velocity_x
       (sys::poke _Velocity_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Velocity_y
       (sys::poke _Velocity_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Accel_x
       (sys::poke _Accel_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Accel_y
       (sys::poke _Accel_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Yaw
       (sys::poke _Yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Angular_velocity_z
       (sys::poke _Angular_velocity_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _SimTim
     (setq _SimTim (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Position_x
     (setq _Position_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Position_y
     (setq _Position_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Velocity_x
     (setq _Velocity_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Velocity_y
     (setq _Velocity_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Accel_x
     (setq _Accel_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Accel_y
     (setq _Accel_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Yaw
     (setq _Yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Angular_velocity_z
     (setq _Angular_velocity_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get common_msgs::CICV_Location :md5sum-) "ebf8c055c1ba72efc55306e155279a03")
(setf (get common_msgs::CICV_Location :datatype-) "common_msgs/CICV_Location")
(setf (get common_msgs::CICV_Location :definition-)
      "std_msgs/Header  header
float64 SimTim
float64 Position_x   #本车X向坐标
float64 Position_y   #本车Y向坐标
float64 Velocity_x   #本车X向车速
float64 Velocity_y   #本车Y向车速
float64 Accel_x      #本车纵向加速度
float64 Accel_y      #本车横向加速度
float64 Yaw          #本车航向角
float64 Angular_velocity_z    #本车沿Z轴角速度

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



(provide :common_msgs/CICV_Location "ebf8c055c1ba72efc55306e155279a03")


