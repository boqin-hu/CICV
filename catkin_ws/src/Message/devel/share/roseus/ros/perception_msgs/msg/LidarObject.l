;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::LidarObject)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'LidarObject (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::LIDAROBJECT")
  (make-package "PERCEPTION_MSGS::LIDAROBJECT"))

(in-package "ROS")
;;//! \htmlinclude LidarObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::LidarObject
  :super ros::object
  :slots (_header _object_id _type _detect_confidence _type_confidence _dimensions _cluster_pose _tracked_pose _cluster_yaw _tracked_yaw _azimuth _velocity _acceleration _tracking_state _cells ))

(defmethod perception_msgs::LidarObject
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:object_id __object_id) 0)
    ((:type __type) 0)
    ((:detect_confidence __detect_confidence) 0.0)
    ((:type_confidence __type_confidence) 0.0)
    ((:dimensions __dimensions) (instance geometry_msgs::Vector3 :init))
    ((:cluster_pose __cluster_pose) (instance geometry_msgs::Pose :init))
    ((:tracked_pose __tracked_pose) (instance geometry_msgs::Pose :init))
    ((:cluster_yaw __cluster_yaw) 0.0)
    ((:tracked_yaw __tracked_yaw) 0.0)
    ((:azimuth __azimuth) 0.0)
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Vector3 :init))
    ((:tracking_state __tracking_state) 0)
    ((:cells __cells) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _object_id (round __object_id))
   (setq _type (round __type))
   (setq _detect_confidence (float __detect_confidence))
   (setq _type_confidence (float __type_confidence))
   (setq _dimensions __dimensions)
   (setq _cluster_pose __cluster_pose)
   (setq _tracked_pose __tracked_pose)
   (setq _cluster_yaw (float __cluster_yaw))
   (setq _tracked_yaw (float __tracked_yaw))
   (setq _azimuth (float __azimuth))
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _tracking_state (round __tracking_state))
   (setq _cells __cells)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:detect_confidence
   (&optional __detect_confidence)
   (if __detect_confidence (setq _detect_confidence __detect_confidence)) _detect_confidence)
  (:type_confidence
   (&optional __type_confidence)
   (if __type_confidence (setq _type_confidence __type_confidence)) _type_confidence)
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
  (:cluster_pose
   (&rest __cluster_pose)
   (if (keywordp (car __cluster_pose))
       (send* _cluster_pose __cluster_pose)
     (progn
       (if __cluster_pose (setq _cluster_pose (car __cluster_pose)))
       _cluster_pose)))
  (:tracked_pose
   (&rest __tracked_pose)
   (if (keywordp (car __tracked_pose))
       (send* _tracked_pose __tracked_pose)
     (progn
       (if __tracked_pose (setq _tracked_pose (car __tracked_pose)))
       _tracked_pose)))
  (:cluster_yaw
   (&optional __cluster_yaw)
   (if __cluster_yaw (setq _cluster_yaw __cluster_yaw)) _cluster_yaw)
  (:tracked_yaw
   (&optional __tracked_yaw)
   (if __tracked_yaw (setq _tracked_yaw __tracked_yaw)) _tracked_yaw)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:tracking_state
   (&optional __tracking_state)
   (if __tracking_state (setq _tracking_state __tracking_state)) _tracking_state)
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
    ;; uint32 _object_id
    4
    ;; uint8 _type
    1
    ;; float32 _detect_confidence
    4
    ;; float32 _type_confidence
    4
    ;; geometry_msgs/Vector3 _dimensions
    (send _dimensions :serialization-length)
    ;; geometry_msgs/Pose _cluster_pose
    (send _cluster_pose :serialization-length)
    ;; geometry_msgs/Pose _tracked_pose
    (send _tracked_pose :serialization-length)
    ;; float32 _cluster_yaw
    4
    ;; float32 _tracked_yaw
    4
    ;; float32 _azimuth
    4
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
    ;; uint8 _tracking_state
    1
    ;; perception_msgs/ObstacleCell[] _cells
    (apply #'+ (send-all _cells :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _object_id
       (write-long _object_id s)
     ;; uint8 _type
       (write-byte _type s)
     ;; float32 _detect_confidence
       (sys::poke _detect_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _type_confidence
       (sys::poke _type_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Vector3 _dimensions
       (send _dimensions :serialize s)
     ;; geometry_msgs/Pose _cluster_pose
       (send _cluster_pose :serialize s)
     ;; geometry_msgs/Pose _tracked_pose
       (send _tracked_pose :serialize s)
     ;; float32 _cluster_yaw
       (sys::poke _cluster_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tracked_yaw
       (sys::poke _tracked_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
     ;; uint8 _tracking_state
       (write-byte _tracking_state s)
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
   ;; uint32 _object_id
     (setq _object_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _detect_confidence
     (setq _detect_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _type_confidence
     (setq _type_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;; geometry_msgs/Pose _cluster_pose
     (send _cluster_pose :deserialize buf ptr-) (incf ptr- (send _cluster_pose :serialization-length))
   ;; geometry_msgs/Pose _tracked_pose
     (send _tracked_pose :deserialize buf ptr-) (incf ptr- (send _tracked_pose :serialization-length))
   ;; float32 _cluster_yaw
     (setq _cluster_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tracked_yaw
     (setq _tracked_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _azimuth
     (setq _azimuth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; uint8 _tracking_state
     (setq _tracking_state (sys::peek buf ptr- :char)) (incf ptr- 1)
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

(setf (get perception_msgs::LidarObject :md5sum-) "0a5facf9bec33cccce93373238a9f570")
(setf (get perception_msgs::LidarObject :datatype-) "perception_msgs/LidarObject")
(setf (get perception_msgs::LidarObject :definition-)
      "Header header

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



(provide :perception_msgs/LidarObject "0a5facf9bec33cccce93373238a9f570")


