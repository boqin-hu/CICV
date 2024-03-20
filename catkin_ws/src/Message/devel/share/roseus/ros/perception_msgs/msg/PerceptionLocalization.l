;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::PerceptionLocalization)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'PerceptionLocalization (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::PERCEPTIONLOCALIZATION")
  (make-package "PERCEPTION_MSGS::PERCEPTIONLOCALIZATION"))

(in-package "ROS")
;;//! \htmlinclude PerceptionLocalization.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::PerceptionLocalization
  :super ros::object
  :slots (_header _frame_unmber _fusion_level _status _roll _pitch _yaw _roll_std _pitch_std _yaw_std _qw _qx _qy _qz _angular_velocity_x _angular_velocity_y _angular_velocity_z _latitude _longitude _altitude _latitude_std _longitude_std _altitude_std _position_x _position_y _position_z _position_x_std _position_y_std _position_z_std _velocity_x _velocity_y _velocity_z _velocity_x_std _velocity_y_std _velocity_z_std _velocity_rx _velocity_ry _velocity_rz _velocity_rx_std _velocity_ry_std _velocity_rz_std _accel_x _accel_y _accel_z ))

(defmethod perception_msgs::PerceptionLocalization
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frame_unmber __frame_unmber) 0)
    ((:fusion_level __fusion_level) 0)
    ((:status __status) 0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:roll_std __roll_std) 0.0)
    ((:pitch_std __pitch_std) 0.0)
    ((:yaw_std __yaw_std) 0.0)
    ((:qw __qw) 0.0)
    ((:qx __qx) 0.0)
    ((:qy __qy) 0.0)
    ((:qz __qz) 0.0)
    ((:angular_velocity_x __angular_velocity_x) 0.0)
    ((:angular_velocity_y __angular_velocity_y) 0.0)
    ((:angular_velocity_z __angular_velocity_z) 0.0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:latitude_std __latitude_std) 0.0)
    ((:longitude_std __longitude_std) 0.0)
    ((:altitude_std __altitude_std) 0.0)
    ((:position_x __position_x) 0.0)
    ((:position_y __position_y) 0.0)
    ((:position_z __position_z) 0.0)
    ((:position_x_std __position_x_std) 0.0)
    ((:position_y_std __position_y_std) 0.0)
    ((:position_z_std __position_z_std) 0.0)
    ((:velocity_x __velocity_x) 0.0)
    ((:velocity_y __velocity_y) 0.0)
    ((:velocity_z __velocity_z) 0.0)
    ((:velocity_x_std __velocity_x_std) 0.0)
    ((:velocity_y_std __velocity_y_std) 0.0)
    ((:velocity_z_std __velocity_z_std) 0.0)
    ((:velocity_rx __velocity_rx) 0.0)
    ((:velocity_ry __velocity_ry) 0.0)
    ((:velocity_rz __velocity_rz) 0.0)
    ((:velocity_rx_std __velocity_rx_std) 0.0)
    ((:velocity_ry_std __velocity_ry_std) 0.0)
    ((:velocity_rz_std __velocity_rz_std) 0.0)
    ((:accel_x __accel_x) 0.0)
    ((:accel_y __accel_y) 0.0)
    ((:accel_z __accel_z) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _frame_unmber (round __frame_unmber))
   (setq _fusion_level (round __fusion_level))
   (setq _status (round __status))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _roll_std (float __roll_std))
   (setq _pitch_std (float __pitch_std))
   (setq _yaw_std (float __yaw_std))
   (setq _qw (float __qw))
   (setq _qx (float __qx))
   (setq _qy (float __qy))
   (setq _qz (float __qz))
   (setq _angular_velocity_x (float __angular_velocity_x))
   (setq _angular_velocity_y (float __angular_velocity_y))
   (setq _angular_velocity_z (float __angular_velocity_z))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _latitude_std (float __latitude_std))
   (setq _longitude_std (float __longitude_std))
   (setq _altitude_std (float __altitude_std))
   (setq _position_x (float __position_x))
   (setq _position_y (float __position_y))
   (setq _position_z (float __position_z))
   (setq _position_x_std (float __position_x_std))
   (setq _position_y_std (float __position_y_std))
   (setq _position_z_std (float __position_z_std))
   (setq _velocity_x (float __velocity_x))
   (setq _velocity_y (float __velocity_y))
   (setq _velocity_z (float __velocity_z))
   (setq _velocity_x_std (float __velocity_x_std))
   (setq _velocity_y_std (float __velocity_y_std))
   (setq _velocity_z_std (float __velocity_z_std))
   (setq _velocity_rx (float __velocity_rx))
   (setq _velocity_ry (float __velocity_ry))
   (setq _velocity_rz (float __velocity_rz))
   (setq _velocity_rx_std (float __velocity_rx_std))
   (setq _velocity_ry_std (float __velocity_ry_std))
   (setq _velocity_rz_std (float __velocity_rz_std))
   (setq _accel_x (float __accel_x))
   (setq _accel_y (float __accel_y))
   (setq _accel_z (float __accel_z))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:frame_unmber
   (&optional __frame_unmber)
   (if __frame_unmber (setq _frame_unmber __frame_unmber)) _frame_unmber)
  (:fusion_level
   (&optional __fusion_level)
   (if __fusion_level (setq _fusion_level __fusion_level)) _fusion_level)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:roll_std
   (&optional __roll_std)
   (if __roll_std (setq _roll_std __roll_std)) _roll_std)
  (:pitch_std
   (&optional __pitch_std)
   (if __pitch_std (setq _pitch_std __pitch_std)) _pitch_std)
  (:yaw_std
   (&optional __yaw_std)
   (if __yaw_std (setq _yaw_std __yaw_std)) _yaw_std)
  (:qw
   (&optional __qw)
   (if __qw (setq _qw __qw)) _qw)
  (:qx
   (&optional __qx)
   (if __qx (setq _qx __qx)) _qx)
  (:qy
   (&optional __qy)
   (if __qy (setq _qy __qy)) _qy)
  (:qz
   (&optional __qz)
   (if __qz (setq _qz __qz)) _qz)
  (:angular_velocity_x
   (&optional __angular_velocity_x)
   (if __angular_velocity_x (setq _angular_velocity_x __angular_velocity_x)) _angular_velocity_x)
  (:angular_velocity_y
   (&optional __angular_velocity_y)
   (if __angular_velocity_y (setq _angular_velocity_y __angular_velocity_y)) _angular_velocity_y)
  (:angular_velocity_z
   (&optional __angular_velocity_z)
   (if __angular_velocity_z (setq _angular_velocity_z __angular_velocity_z)) _angular_velocity_z)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:latitude_std
   (&optional __latitude_std)
   (if __latitude_std (setq _latitude_std __latitude_std)) _latitude_std)
  (:longitude_std
   (&optional __longitude_std)
   (if __longitude_std (setq _longitude_std __longitude_std)) _longitude_std)
  (:altitude_std
   (&optional __altitude_std)
   (if __altitude_std (setq _altitude_std __altitude_std)) _altitude_std)
  (:position_x
   (&optional __position_x)
   (if __position_x (setq _position_x __position_x)) _position_x)
  (:position_y
   (&optional __position_y)
   (if __position_y (setq _position_y __position_y)) _position_y)
  (:position_z
   (&optional __position_z)
   (if __position_z (setq _position_z __position_z)) _position_z)
  (:position_x_std
   (&optional __position_x_std)
   (if __position_x_std (setq _position_x_std __position_x_std)) _position_x_std)
  (:position_y_std
   (&optional __position_y_std)
   (if __position_y_std (setq _position_y_std __position_y_std)) _position_y_std)
  (:position_z_std
   (&optional __position_z_std)
   (if __position_z_std (setq _position_z_std __position_z_std)) _position_z_std)
  (:velocity_x
   (&optional __velocity_x)
   (if __velocity_x (setq _velocity_x __velocity_x)) _velocity_x)
  (:velocity_y
   (&optional __velocity_y)
   (if __velocity_y (setq _velocity_y __velocity_y)) _velocity_y)
  (:velocity_z
   (&optional __velocity_z)
   (if __velocity_z (setq _velocity_z __velocity_z)) _velocity_z)
  (:velocity_x_std
   (&optional __velocity_x_std)
   (if __velocity_x_std (setq _velocity_x_std __velocity_x_std)) _velocity_x_std)
  (:velocity_y_std
   (&optional __velocity_y_std)
   (if __velocity_y_std (setq _velocity_y_std __velocity_y_std)) _velocity_y_std)
  (:velocity_z_std
   (&optional __velocity_z_std)
   (if __velocity_z_std (setq _velocity_z_std __velocity_z_std)) _velocity_z_std)
  (:velocity_rx
   (&optional __velocity_rx)
   (if __velocity_rx (setq _velocity_rx __velocity_rx)) _velocity_rx)
  (:velocity_ry
   (&optional __velocity_ry)
   (if __velocity_ry (setq _velocity_ry __velocity_ry)) _velocity_ry)
  (:velocity_rz
   (&optional __velocity_rz)
   (if __velocity_rz (setq _velocity_rz __velocity_rz)) _velocity_rz)
  (:velocity_rx_std
   (&optional __velocity_rx_std)
   (if __velocity_rx_std (setq _velocity_rx_std __velocity_rx_std)) _velocity_rx_std)
  (:velocity_ry_std
   (&optional __velocity_ry_std)
   (if __velocity_ry_std (setq _velocity_ry_std __velocity_ry_std)) _velocity_ry_std)
  (:velocity_rz_std
   (&optional __velocity_rz_std)
   (if __velocity_rz_std (setq _velocity_rz_std __velocity_rz_std)) _velocity_rz_std)
  (:accel_x
   (&optional __accel_x)
   (if __accel_x (setq _accel_x __accel_x)) _accel_x)
  (:accel_y
   (&optional __accel_y)
   (if __accel_y (setq _accel_y __accel_y)) _accel_y)
  (:accel_z
   (&optional __accel_z)
   (if __accel_z (setq _accel_z __accel_z)) _accel_z)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _frame_unmber
    8
    ;; int8 _fusion_level
    1
    ;; int8 _status
    1
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ;; float32 _roll_std
    4
    ;; float32 _pitch_std
    4
    ;; float32 _yaw_std
    4
    ;; float64 _qw
    8
    ;; float64 _qx
    8
    ;; float64 _qy
    8
    ;; float64 _qz
    8
    ;; float64 _angular_velocity_x
    8
    ;; float64 _angular_velocity_y
    8
    ;; float64 _angular_velocity_z
    8
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float32 _latitude_std
    4
    ;; float32 _longitude_std
    4
    ;; float32 _altitude_std
    4
    ;; float64 _position_x
    8
    ;; float64 _position_y
    8
    ;; float64 _position_z
    8
    ;; float32 _position_x_std
    4
    ;; float32 _position_y_std
    4
    ;; float32 _position_z_std
    4
    ;; float64 _velocity_x
    8
    ;; float64 _velocity_y
    8
    ;; float64 _velocity_z
    8
    ;; float32 _velocity_x_std
    4
    ;; float32 _velocity_y_std
    4
    ;; float32 _velocity_z_std
    4
    ;; float64 _velocity_rx
    8
    ;; float64 _velocity_ry
    8
    ;; float64 _velocity_rz
    8
    ;; float32 _velocity_rx_std
    4
    ;; float32 _velocity_ry_std
    4
    ;; float32 _velocity_rz_std
    4
    ;; float64 _accel_x
    8
    ;; float64 _accel_y
    8
    ;; float64 _accel_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _frame_unmber
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _frame_unmber (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _frame_unmber) (= (length (_frame_unmber . bv)) 2)) ;; bignum
              (write-long (ash (elt (_frame_unmber . bv) 0) 0) s)
              (write-long (ash (elt (_frame_unmber . bv) 1) -1) s))
             ((and (class _frame_unmber) (= (length (_frame_unmber . bv)) 1)) ;; big1
              (write-long (elt (_frame_unmber . bv) 0) s)
              (write-long (if (>= _frame_unmber 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _frame_unmber s)(write-long (if (>= _frame_unmber 0) 0 #xffffffff) s)))
     ;; int8 _fusion_level
       (write-byte _fusion_level s)
     ;; int8 _status
       (write-byte _status s)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _roll_std
       (sys::poke _roll_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch_std
       (sys::poke _pitch_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_std
       (sys::poke _yaw_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _qw
       (sys::poke _qw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qx
       (sys::poke _qx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qy
       (sys::poke _qy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qz
       (sys::poke _qz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_velocity_x
       (sys::poke _angular_velocity_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_velocity_y
       (sys::poke _angular_velocity_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_velocity_z
       (sys::poke _angular_velocity_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _latitude_std
       (sys::poke _latitude_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude_std
       (sys::poke _longitude_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _altitude_std
       (sys::poke _altitude_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _position_x
       (sys::poke _position_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position_y
       (sys::poke _position_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position_z
       (sys::poke _position_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _position_x_std
       (sys::poke _position_x_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_y_std
       (sys::poke _position_y_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_z_std
       (sys::poke _position_z_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _velocity_x
       (sys::poke _velocity_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity_y
       (sys::poke _velocity_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity_z
       (sys::poke _velocity_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _velocity_x_std
       (sys::poke _velocity_x_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_y_std
       (sys::poke _velocity_y_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_z_std
       (sys::poke _velocity_z_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _velocity_rx
       (sys::poke _velocity_rx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity_ry
       (sys::poke _velocity_ry (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity_rz
       (sys::poke _velocity_rz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _velocity_rx_std
       (sys::poke _velocity_rx_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_ry_std
       (sys::poke _velocity_ry_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_rz_std
       (sys::poke _velocity_rz_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _accel_x
       (sys::poke _accel_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _accel_y
       (sys::poke _accel_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _accel_z
       (sys::poke _accel_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _frame_unmber
     
#+(or :alpha :irix6 :x86_64)
      (setf _frame_unmber (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _frame_unmber (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int8 _fusion_level
     (setq _fusion_level (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _fusion_level 127) (setq _fusion_level (- _fusion_level 256)))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _roll_std
     (setq _roll_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch_std
     (setq _pitch_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_std
     (setq _yaw_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _qw
     (setq _qw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qx
     (setq _qx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qy
     (setq _qy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qz
     (setq _qz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_velocity_x
     (setq _angular_velocity_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_velocity_y
     (setq _angular_velocity_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_velocity_z
     (setq _angular_velocity_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _latitude_std
     (setq _latitude_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude_std
     (setq _longitude_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _altitude_std
     (setq _altitude_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _position_x
     (setq _position_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position_y
     (setq _position_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position_z
     (setq _position_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _position_x_std
     (setq _position_x_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_y_std
     (setq _position_y_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_z_std
     (setq _position_z_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _velocity_x
     (setq _velocity_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity_y
     (setq _velocity_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity_z
     (setq _velocity_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _velocity_x_std
     (setq _velocity_x_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_y_std
     (setq _velocity_y_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_z_std
     (setq _velocity_z_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _velocity_rx
     (setq _velocity_rx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity_ry
     (setq _velocity_ry (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity_rz
     (setq _velocity_rz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _velocity_rx_std
     (setq _velocity_rx_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_ry_std
     (setq _velocity_ry_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_rz_std
     (setq _velocity_rz_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _accel_x
     (setq _accel_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _accel_y
     (setq _accel_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _accel_z
     (setq _accel_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get perception_msgs::PerceptionLocalization :md5sum-) "b871ae769d4b537baab00d1c75ff3891")
(setf (get perception_msgs::PerceptionLocalization :datatype-) "perception_msgs/PerceptionLocalization")
(setf (get perception_msgs::PerceptionLocalization :definition-)
      "
Header header

uint64 frame_unmber
int8 fusion_level
int8 status  #4:固定解，5：浮点解，2：伪距差分，1：单点解
#rotation
float64 roll      # x,R, car body (FLU)
float64 pitch      # y,R, car body (FLU)
float64 yaw      # z,R, car body (FLU) utm (0,360)  0--east, 90--north
float32 roll_std	
float32 pitch_std
float32 yaw_std 

float64 qw          # w
float64 qx          # x
float64 qy          # y
float64 qz          # z

float64 angular_velocity_x	
float64 angular_velocity_y
float64 angular_velocity_z 


#position
float64 latitude	
float64 longitude
float64 altitude
float32 latitude_std	
float32 longitude_std
float32 altitude_std

float64 position_x  # utm_east
float64 position_y  # utm_north
float64 position_z  # utm_up
float32 position_x_std	
float32 position_y_std
float32 position_z_std

float64 velocity_x  # utm_east_speed
float64 velocity_y  # utm_north_speed
float64 velocity_z  # utm_up_speed
float32 velocity_x_std	
float32 velocity_y_std
float32 velocity_z_std

float64 velocity_rx  # ins_x_speed
float64 velocity_ry  # ins_y_speed
float64 velocity_rz  # ins_z_speed
float32 velocity_rx_std	
float32 velocity_ry_std
float32 velocity_rz_std

float64 accel_x     # R, car body (RFU)
float64 accel_y     # F, car body (RFU)
float64 accel_z     # U, car body (RFU)




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



(provide :perception_msgs/PerceptionLocalization "b871ae769d4b537baab00d1c75ff3891")


