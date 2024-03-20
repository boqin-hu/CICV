;; Auto-generated. Do not edit!


(when (boundp 'lidar_msgs::DetectedObjectArray)
  (if (not (find-package "LIDAR_MSGS"))
    (make-package "LIDAR_MSGS"))
  (shadow 'DetectedObjectArray (find-package "LIDAR_MSGS")))
(unless (find-package "LIDAR_MSGS::DETECTEDOBJECTARRAY")
  (make-package "LIDAR_MSGS::DETECTEDOBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude DetectedObjectArray.msg.html
(if (not (find-package "PERCEPTION_MSGS"))
  (ros::roseus-add-msgs "perception_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lidar_msgs::DetectedObjectArray
  :super ros::object
  :slots (_header _objects _other_cells ))

(defmethod lidar_msgs::DetectedObjectArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objects __objects) ())
    ((:other_cells __other_cells) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _objects __objects)
   (setq _other_cells __other_cells)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:other_cells
   (&rest __other_cells)
   (if (keywordp (car __other_cells))
       (send* _other_cells __other_cells)
     (progn
       (if __other_cells (setq _other_cells (car __other_cells)))
       _other_cells)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; lidar_msgs/DetectedObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ;; perception_msgs/ObstacleCell[] _other_cells
    (apply #'+ (send-all _other_cells :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; lidar_msgs/DetectedObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;; perception_msgs/ObstacleCell[] _other_cells
     (write-long (length _other_cells) s)
     (dolist (elem _other_cells)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; lidar_msgs/DetectedObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance lidar_msgs::DetectedObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_msgs/ObstacleCell[] _other_cells
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _other_cells (let (r) (dotimes (i n) (push (instance perception_msgs::ObstacleCell :init) r)) r))
     (dolist (elem- _other_cells)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lidar_msgs::DetectedObjectArray :md5sum-) "2b3f307cf72108cda33bab72f65a2ef0")
(setf (get lidar_msgs::DetectedObjectArray :datatype-) "lidar_msgs/DetectedObjectArray")
(setf (get lidar_msgs::DetectedObjectArray :definition-)
      "std_msgs/Header header
DetectedObject[] objects
perception_msgs/ObstacleCell[] other_cells

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
MSG: lidar_msgs/DetectedObject
std_msgs/Header                 header

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



(provide :lidar_msgs/DetectedObjectArray "2b3f307cf72108cda33bab72f65a2ef0")


