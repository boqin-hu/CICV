;; Auto-generated. Do not edit!


(when (boundp 'lidar_msgs::DetectedObject)
  (if (not (find-package "LIDAR_MSGS"))
    (make-package "LIDAR_MSGS"))
  (shadow 'DetectedObject (find-package "LIDAR_MSGS")))
(unless (find-package "LIDAR_MSGS::DETECTEDOBJECT")
  (make-package "LIDAR_MSGS::DETECTEDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude DetectedObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "PERCEPTION_MSGS"))
  (ros::roseus-add-msgs "perception_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lidar_msgs::DetectedObject
  :super ros::object
  :slots (_header _id _label _type _score _color _valid _pose _tracked_pose _output_pose _yaw _dimensions _velocity _acceleration _angle _behavior_state _age _velocitystatus _confidence _pointcloud _cells _convex_hull _pose_reliable _velocity_reliable _acceleration_reliable ))

(defmethod lidar_msgs::DetectedObject
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:label __label) "")
    ((:type __type) 0)
    ((:score __score) 0.0)
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    ((:valid __valid) nil)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:tracked_pose __tracked_pose) (instance geometry_msgs::Pose :init))
    ((:output_pose __output_pose) (instance geometry_msgs::Pose :init))
    ((:yaw __yaw) 0.0)
    ((:dimensions __dimensions) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Twist :init))
    ((:angle __angle) 0.0)
    ((:behavior_state __behavior_state) 0)
    ((:age __age) 0)
    ((:velocitystatus __velocitystatus) 0)
    ((:confidence __confidence) 0.0)
    ((:pointcloud __pointcloud) (instance sensor_msgs::PointCloud2 :init))
    ((:cells __cells) ())
    ((:convex_hull __convex_hull) (instance geometry_msgs::PolygonStamped :init))
    ((:pose_reliable __pose_reliable) nil)
    ((:velocity_reliable __velocity_reliable) nil)
    ((:acceleration_reliable __acceleration_reliable) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _label (string __label))
   (setq _type (round __type))
   (setq _score (float __score))
   (setq _color __color)
   (setq _valid __valid)
   (setq _pose __pose)
   (setq _tracked_pose __tracked_pose)
   (setq _output_pose __output_pose)
   (setq _yaw (float __yaw))
   (setq _dimensions __dimensions)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _angle (float __angle))
   (setq _behavior_state (round __behavior_state))
   (setq _age (round __age))
   (setq _velocitystatus (round __velocitystatus))
   (setq _confidence (float __confidence))
   (setq _pointcloud __pointcloud)
   (setq _cells __cells)
   (setq _convex_hull __convex_hull)
   (setq _pose_reliable __pose_reliable)
   (setq _velocity_reliable __velocity_reliable)
   (setq _acceleration_reliable __acceleration_reliable)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:tracked_pose
   (&rest __tracked_pose)
   (if (keywordp (car __tracked_pose))
       (send* _tracked_pose __tracked_pose)
     (progn
       (if __tracked_pose (setq _tracked_pose (car __tracked_pose)))
       _tracked_pose)))
  (:output_pose
   (&rest __output_pose)
   (if (keywordp (car __output_pose))
       (send* _output_pose __output_pose)
     (progn
       (if __output_pose (setq _output_pose (car __output_pose)))
       _output_pose)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
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
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:behavior_state
   (&optional __behavior_state)
   (if __behavior_state (setq _behavior_state __behavior_state)) _behavior_state)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:velocitystatus
   (&optional __velocitystatus)
   (if __velocitystatus (setq _velocitystatus __velocitystatus)) _velocitystatus)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:pointcloud
   (&rest __pointcloud)
   (if (keywordp (car __pointcloud))
       (send* _pointcloud __pointcloud)
     (progn
       (if __pointcloud (setq _pointcloud (car __pointcloud)))
       _pointcloud)))
  (:cells
   (&rest __cells)
   (if (keywordp (car __cells))
       (send* _cells __cells)
     (progn
       (if __cells (setq _cells (car __cells)))
       _cells)))
  (:convex_hull
   (&rest __convex_hull)
   (if (keywordp (car __convex_hull))
       (send* _convex_hull __convex_hull)
     (progn
       (if __convex_hull (setq _convex_hull (car __convex_hull)))
       _convex_hull)))
  (:pose_reliable
   (&optional (__pose_reliable :null))
   (if (not (eq __pose_reliable :null)) (setq _pose_reliable __pose_reliable)) _pose_reliable)
  (:velocity_reliable
   (&optional (__velocity_reliable :null))
   (if (not (eq __velocity_reliable :null)) (setq _velocity_reliable __velocity_reliable)) _velocity_reliable)
  (:acceleration_reliable
   (&optional (__acceleration_reliable :null))
   (if (not (eq __acceleration_reliable :null)) (setq _acceleration_reliable __acceleration_reliable)) _acceleration_reliable)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; string _label
    4 (length _label)
    ;; uint8 _type
    1
    ;; float32 _score
    4
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
    ;; bool _valid
    1
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Pose _tracked_pose
    (send _tracked_pose :serialization-length)
    ;; geometry_msgs/Pose _output_pose
    (send _output_pose :serialization-length)
    ;; float32 _yaw
    4
    ;; geometry_msgs/Vector3 _dimensions
    (send _dimensions :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Twist _acceleration
    (send _acceleration :serialization-length)
    ;; float32 _angle
    4
    ;; uint8 _behavior_state
    1
    ;; uint32 _age
    4
    ;; uint8 _velocitystatus
    1
    ;; float32 _confidence
    4
    ;; sensor_msgs/PointCloud2 _pointcloud
    (send _pointcloud :serialization-length)
    ;; perception_msgs/ObstacleCell[] _cells
    (apply #'+ (send-all _cells :serialization-length)) 4
    ;; geometry_msgs/PolygonStamped _convex_hull
    (send _convex_hull :serialization-length)
    ;; bool _pose_reliable
    1
    ;; bool _velocity_reliable
    1
    ;; bool _acceleration_reliable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; uint8 _type
       (write-byte _type s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Pose _tracked_pose
       (send _tracked_pose :serialize s)
     ;; geometry_msgs/Pose _output_pose
       (send _output_pose :serialize s)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Vector3 _dimensions
       (send _dimensions :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Twist _acceleration
       (send _acceleration :serialize s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _behavior_state
       (write-byte _behavior_state s)
     ;; uint32 _age
       (write-long _age s)
     ;; uint8 _velocitystatus
       (write-byte _velocitystatus s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; sensor_msgs/PointCloud2 _pointcloud
       (send _pointcloud :serialize s)
     ;; perception_msgs/ObstacleCell[] _cells
     (write-long (length _cells) s)
     (dolist (elem _cells)
       (send elem :serialize s)
       )
     ;; geometry_msgs/PolygonStamped _convex_hull
       (send _convex_hull :serialize s)
     ;; bool _pose_reliable
       (if _pose_reliable (write-byte -1 s) (write-byte 0 s))
     ;; bool _velocity_reliable
       (if _velocity_reliable (write-byte -1 s) (write-byte 0 s))
     ;; bool _acceleration_reliable
       (if _acceleration_reliable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Pose _tracked_pose
     (send _tracked_pose :deserialize buf ptr-) (incf ptr- (send _tracked_pose :serialization-length))
   ;; geometry_msgs/Pose _output_pose
     (send _output_pose :deserialize buf ptr-) (incf ptr- (send _output_pose :serialization-length))
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Twist _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _behavior_state
     (setq _behavior_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _age
     (setq _age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _velocitystatus
     (setq _velocitystatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; sensor_msgs/PointCloud2 _pointcloud
     (send _pointcloud :deserialize buf ptr-) (incf ptr- (send _pointcloud :serialization-length))
   ;; perception_msgs/ObstacleCell[] _cells
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cells (let (r) (dotimes (i n) (push (instance perception_msgs::ObstacleCell :init) r)) r))
     (dolist (elem- _cells)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/PolygonStamped _convex_hull
     (send _convex_hull :deserialize buf ptr-) (incf ptr- (send _convex_hull :serialization-length))
   ;; bool _pose_reliable
     (setq _pose_reliable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _velocity_reliable
     (setq _velocity_reliable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _acceleration_reliable
     (setq _acceleration_reliable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lidar_msgs::DetectedObject :md5sum-) "d9aeea43fbddadcbfb4c8da6ce992363")
(setf (get lidar_msgs::DetectedObject :datatype-) "lidar_msgs/DetectedObject")
(setf (get lidar_msgs::DetectedObject :definition-)
      "std_msgs/Header                 header

uint32                          id
string                          label
uint8                           type   # 0--car, 1--truck, 2--pedestrian, 3--cyclist, 4--unknown
float32                         score   
std_msgs/ColorRGBA              color   # Define this object specific color
bool                            valid   # Defines if this object is valid, or invalid as defined by the filtering


geometry_msgs/Pose              pose
geometry_msgs/Pose              tracked_pose
geometry_msgs/Pose              output_pose
float32                         yaw
geometry_msgs/Vector3           dimensions
geometry_msgs/Twist             velocity
geometry_msgs/Twist             acceleration

float32                         angle       # Angle [0 to 2*PI), allow rotated rects
############### Behavior State of the Detected Object
uint8                           behavior_state # FORWARD_STATE = 0, STOPPING_STATE = 1, BRANCH_LEFT_STATE = 2, BRANCH_RIGHT_STATE = 3, YIELDING_STATE = 4, ACCELERATING_STATE = 5, SLOWDOWN_STATE = 6

uint32                          age
uint8                           velocitystatus  # speed confidence  0--low, 1--normal, 2--high
float32                         confidence    # confidence of obstacle

sensor_msgs/PointCloud2         pointcloud
perception_msgs/ObstacleCell[]  cells
geometry_msgs/PolygonStamped    convex_hull

bool                            pose_reliable
bool                            velocity_reliable
bool                            acceleration_reliable



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
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

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
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: perception_msgs/ObstacleCell
int32 idc
float64 x
float64 y
float64 xg
float64 yg
================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :lidar_msgs/DetectedObject "d9aeea43fbddadcbfb4c8da6ce992363")


