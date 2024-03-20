;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::CameraObject)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'CameraObject (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::CAMERAOBJECT")
  (make-package "PERCEPTION_MSGS::CAMERAOBJECT"))

(in-package "ROS")
;;//! \htmlinclude CameraObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::CameraObject
  :super ros::object
  :slots (_header _sensor_id _object_id _detect_confidence _type_confidence _azimuth _yaw _type _tracking_time _tracking_level _lane_assignment _position _velocity _acceleration _dimensions _pixel_central_point _pixel_box_size ))

(defmethod perception_msgs::CameraObject
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sensor_id __sensor_id) 0)
    ((:object_id __object_id) 0)
    ((:detect_confidence __detect_confidence) 0.0)
    ((:type_confidence __type_confidence) 0.0)
    ((:azimuth __azimuth) 0.0)
    ((:yaw __yaw) 0.0)
    ((:type __type) 0)
    ((:tracking_time __tracking_time) 0.0)
    ((:tracking_level __tracking_level) 0)
    ((:lane_assignment __lane_assignment) 0)
    ((:position __position) (instance geometry_msgs::Point32 :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Vector3 :init))
    ((:dimensions __dimensions) (instance geometry_msgs::Vector3 :init))
    ((:pixel_central_point __pixel_central_point) (instance perception_msgs::Point2D :init))
    ((:pixel_box_size __pixel_box_size) (instance perception_msgs::Point2D :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sensor_id (round __sensor_id))
   (setq _object_id (round __object_id))
   (setq _detect_confidence (float __detect_confidence))
   (setq _type_confidence (float __type_confidence))
   (setq _azimuth (float __azimuth))
   (setq _yaw (float __yaw))
   (setq _type (round __type))
   (setq _tracking_time (float __tracking_time))
   (setq _tracking_level (round __tracking_level))
   (setq _lane_assignment (round __lane_assignment))
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _dimensions __dimensions)
   (setq _pixel_central_point __pixel_central_point)
   (setq _pixel_box_size __pixel_box_size)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:detect_confidence
   (&optional __detect_confidence)
   (if __detect_confidence (setq _detect_confidence __detect_confidence)) _detect_confidence)
  (:type_confidence
   (&optional __type_confidence)
   (if __type_confidence (setq _type_confidence __type_confidence)) _type_confidence)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:tracking_time
   (&optional __tracking_time)
   (if __tracking_time (setq _tracking_time __tracking_time)) _tracking_time)
  (:tracking_level
   (&optional __tracking_level)
   (if __tracking_level (setq _tracking_level __tracking_level)) _tracking_level)
  (:lane_assignment
   (&optional __lane_assignment)
   (if __lane_assignment (setq _lane_assignment __lane_assignment)) _lane_assignment)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
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
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
  (:pixel_central_point
   (&rest __pixel_central_point)
   (if (keywordp (car __pixel_central_point))
       (send* _pixel_central_point __pixel_central_point)
     (progn
       (if __pixel_central_point (setq _pixel_central_point (car __pixel_central_point)))
       _pixel_central_point)))
  (:pixel_box_size
   (&rest __pixel_box_size)
   (if (keywordp (car __pixel_box_size))
       (send* _pixel_box_size __pixel_box_size)
     (progn
       (if __pixel_box_size (setq _pixel_box_size (car __pixel_box_size)))
       _pixel_box_size)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _sensor_id
    1
    ;; uint32 _object_id
    4
    ;; float32 _detect_confidence
    4
    ;; float32 _type_confidence
    4
    ;; float32 _azimuth
    4
    ;; float32 _yaw
    4
    ;; uint8 _type
    1
    ;; float32 _tracking_time
    4
    ;; int8 _tracking_level
    1
    ;; int8 _lane_assignment
    1
    ;; geometry_msgs/Point32 _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _dimensions
    (send _dimensions :serialization-length)
    ;; perception_msgs/Point2D _pixel_central_point
    (send _pixel_central_point :serialization-length)
    ;; perception_msgs/Point2D _pixel_box_size
    (send _pixel_box_size :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _sensor_id
       (write-byte _sensor_id s)
     ;; uint32 _object_id
       (write-long _object_id s)
     ;; float32 _detect_confidence
       (sys::poke _detect_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _type_confidence
       (sys::poke _type_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _type
       (write-byte _type s)
     ;; float32 _tracking_time
       (sys::poke _tracking_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _tracking_level
       (write-byte _tracking_level s)
     ;; int8 _lane_assignment
       (write-byte _lane_assignment s)
     ;; geometry_msgs/Point32 _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Vector3 _dimensions
       (send _dimensions :serialize s)
     ;; perception_msgs/Point2D _pixel_central_point
       (send _pixel_central_point :serialize s)
     ;; perception_msgs/Point2D _pixel_box_size
       (send _pixel_box_size :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _sensor_id
     (setq _sensor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _object_id
     (setq _object_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _detect_confidence
     (setq _detect_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _type_confidence
     (setq _type_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _azimuth
     (setq _azimuth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _tracking_time
     (setq _tracking_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _tracking_level
     (setq _tracking_level (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _tracking_level 127) (setq _tracking_level (- _tracking_level 256)))
   ;; int8 _lane_assignment
     (setq _lane_assignment (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _lane_assignment 127) (setq _lane_assignment (- _lane_assignment 256)))
   ;; geometry_msgs/Point32 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;; perception_msgs/Point2D _pixel_central_point
     (send _pixel_central_point :deserialize buf ptr-) (incf ptr- (send _pixel_central_point :serialization-length))
   ;; perception_msgs/Point2D _pixel_box_size
     (send _pixel_box_size :deserialize buf ptr-) (incf ptr- (send _pixel_box_size :serialization-length))
   ;;
   self)
  )

(setf (get perception_msgs::CameraObject :md5sum-) "411f3ce7123561d2bd0f9079d3ec3e83")
(setf (get perception_msgs::CameraObject :datatype-) "perception_msgs/CameraObject")
(setf (get perception_msgs::CameraObject :definition-)
      "Header header

uint8  sensor_id  # sensor id, 0-front_long_focus, 1-front_short_focus, 2-right, 3-rear, 4-left
uint32 object_id
float32 detect_confidence
float32 type_confidence
float32 azimuth
float32 yaw  # car-body(R-F-U)  R--0, F--90,  (0,360)

uint8 type  # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck
float32 tracking_time   #
int8 tracking_level     #
int8 lane_assignment    #

geometry_msgs/Point32 position  # relative position, car-body(R-F-U)
geometry_msgs/Vector3 velocity  # relative velocity, car-body(R-F-U)
geometry_msgs/Vector3 acceleration  # relative acceleration, car-body(R-F-U)
geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height

Point2D pixel_central_point 
Point2D pixel_box_size


 



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
MSG: perception_msgs/Point2D
float64 x
float64 y

")



(provide :perception_msgs/CameraObject "411f3ce7123561d2bd0f9079d3ec3e83")


