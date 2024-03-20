;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::LidarObjectList)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'LidarObjectList (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::LIDAROBJECTLIST")
  (make-package "PERCEPTION_MSGS::LIDAROBJECTLIST"))

(in-package "ROS")
;;//! \htmlinclude LidarObjectList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::LidarObjectList
  :super ros::object
  :slots (_header _frame_number _sensor_source _lidarobjects _cells ))

(defmethod perception_msgs::LidarObjectList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frame_number __frame_number) 0)
    ((:sensor_source __sensor_source) 0)
    ((:lidarobjects __lidarobjects) ())
    ((:cells __cells) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _frame_number (round __frame_number))
   (setq _sensor_source (round __sensor_source))
   (setq _lidarobjects __lidarobjects)
   (setq _cells __cells)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:frame_number
   (&optional __frame_number)
   (if __frame_number (setq _frame_number __frame_number)) _frame_number)
  (:sensor_source
   (&optional __sensor_source)
   (if __sensor_source (setq _sensor_source __sensor_source)) _sensor_source)
  (:lidarobjects
   (&rest __lidarobjects)
   (if (keywordp (car __lidarobjects))
       (send* _lidarobjects __lidarobjects)
     (progn
       (if __lidarobjects (setq _lidarobjects (car __lidarobjects)))
       _lidarobjects)))
  (:cells
   (&rest __cells)
   (if (keywordp (car __cells))
       (send* _cells __cells)
     (progn
       (if __cells (setq _cells (car __cells)))
       _cells)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _frame_number
    8
    ;; uint8 _sensor_source
    1
    ;; perception_msgs/LidarObject[] _lidarobjects
    (apply #'+ (send-all _lidarobjects :serialization-length)) 4
    ;; perception_msgs/ObstacleCell[] _cells
    (apply #'+ (send-all _cells :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _frame_number
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _frame_number (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _frame_number) (= (length (_frame_number . bv)) 2)) ;; bignum
              (write-long (ash (elt (_frame_number . bv) 0) 0) s)
              (write-long (ash (elt (_frame_number . bv) 1) -1) s))
             ((and (class _frame_number) (= (length (_frame_number . bv)) 1)) ;; big1
              (write-long (elt (_frame_number . bv) 0) s)
              (write-long (if (>= _frame_number 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _frame_number s)(write-long (if (>= _frame_number 0) 0 #xffffffff) s)))
     ;; uint8 _sensor_source
       (write-byte _sensor_source s)
     ;; perception_msgs/LidarObject[] _lidarobjects
     (write-long (length _lidarobjects) s)
     (dolist (elem _lidarobjects)
       (send elem :serialize s)
       )
     ;; perception_msgs/ObstacleCell[] _cells
     (write-long (length _cells) s)
     (dolist (elem _cells)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _frame_number
     
#+(or :alpha :irix6 :x86_64)
      (setf _frame_number (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _frame_number (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _sensor_source
     (setq _sensor_source (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; perception_msgs/LidarObject[] _lidarobjects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lidarobjects (let (r) (dotimes (i n) (push (instance perception_msgs::LidarObject :init) r)) r))
     (dolist (elem- _lidarobjects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_msgs/ObstacleCell[] _cells
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cells (let (r) (dotimes (i n) (push (instance perception_msgs::ObstacleCell :init) r)) r))
     (dolist (elem- _cells)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_msgs::LidarObjectList :md5sum-) "71f02ff6fa7fd9520b470b404aed47ad")
(setf (get perception_msgs::LidarObjectList :datatype-) "perception_msgs/LidarObjectList")
(setf (get perception_msgs::LidarObjectList :definition-)
      "Header header

uint64 frame_number  # 
uint8 sensor_source  # 0--radar, 1--lidar. 2--camera,

LidarObject[] lidarobjects  #
ObstacleCell[] cells  # 



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

================================================================================
MSG: perception_msgs/LidarObject
Header header

uint32 object_id
uint8  type  # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck

float32 detect_confidence
float32 type_confidence

geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height
geometry_msgs/Pose cluster_pose   # the clustered pose of obj; car-body(F-L-U)
geometry_msgs/Pose tracked_pose   # the tracked pose of obj; car-body(F-L-U)

float32 cluster_yaw  # yaw by clustering, (0,360), F--0, L--90,  car-body(F-L-U)
float32 tracked_yaw  # yaw by tracking, (0,360), F--0, L--90, car-body(F-L-U)

float32 azimuth  # (0,360), F--0, L--90, car-body(F-L-U)

geometry_msgs/Vector3 velocity       # car-body(F-L-U)
geometry_msgs/Vector3 acceleration   # car-body(F-L-U)

uint8 tracking_state  # tracker level 1--init, 4--stable, 5--cover, 10--lose
ObstacleCell[] cells  # 



================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: perception_msgs/ObstacleCell
int32 idc
float64 x
float64 y
float64 xg
float64 yg
")



(provide :perception_msgs/LidarObjectList "71f02ff6fa7fd9520b470b404aed47ad")


