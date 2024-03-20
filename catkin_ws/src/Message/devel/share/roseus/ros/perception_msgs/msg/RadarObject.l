;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::RadarObject)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'RadarObject (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::RADAROBJECT")
  (make-package "PERCEPTION_MSGS::RADAROBJECT"))

(in-package "ROS")
;;//! \htmlinclude RadarObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::RadarObject
  :super ros::object
  :slots (_header _is_invalid _is_matched _is_still _cluster_mask _radar_id _object_id _type _life_count _rcs _confidence _azimuth _position _velocity _acceleration _dimensions ))

(defmethod perception_msgs::RadarObject
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:is_invalid __is_invalid) nil)
    ((:is_matched __is_matched) nil)
    ((:is_still __is_still) nil)
    ((:cluster_mask __cluster_mask) 0)
    ((:radar_id __radar_id) 0)
    ((:object_id __object_id) 0)
    ((:type __type) 0)
    ((:life_count __life_count) 0)
    ((:rcs __rcs) 0.0)
    ((:confidence __confidence) 0.0)
    ((:azimuth __azimuth) 0.0)
    ((:position __position) (instance geometry_msgs::Point32 :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Vector3 :init))
    ((:dimensions __dimensions) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _is_invalid __is_invalid)
   (setq _is_matched __is_matched)
   (setq _is_still __is_still)
   (setq _cluster_mask (round __cluster_mask))
   (setq _radar_id (round __radar_id))
   (setq _object_id (round __object_id))
   (setq _type (round __type))
   (setq _life_count (round __life_count))
   (setq _rcs (float __rcs))
   (setq _confidence (float __confidence))
   (setq _azimuth (float __azimuth))
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _dimensions __dimensions)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:is_invalid
   (&optional (__is_invalid :null))
   (if (not (eq __is_invalid :null)) (setq _is_invalid __is_invalid)) _is_invalid)
  (:is_matched
   (&optional (__is_matched :null))
   (if (not (eq __is_matched :null)) (setq _is_matched __is_matched)) _is_matched)
  (:is_still
   (&optional (__is_still :null))
   (if (not (eq __is_still :null)) (setq _is_still __is_still)) _is_still)
  (:cluster_mask
   (&optional __cluster_mask)
   (if __cluster_mask (setq _cluster_mask __cluster_mask)) _cluster_mask)
  (:radar_id
   (&optional __radar_id)
   (if __radar_id (setq _radar_id __radar_id)) _radar_id)
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:life_count
   (&optional __life_count)
   (if __life_count (setq _life_count __life_count)) _life_count)
  (:rcs
   (&optional __rcs)
   (if __rcs (setq _rcs __rcs)) _rcs)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _is_invalid
    1
    ;; bool _is_matched
    1
    ;; bool _is_still
    1
    ;; uint8 _cluster_mask
    1
    ;; uint8 _radar_id
    1
    ;; uint16 _object_id
    2
    ;; uint8 _type
    1
    ;; uint16 _life_count
    2
    ;; float32 _rcs
    4
    ;; float32 _confidence
    4
    ;; float32 _azimuth
    4
    ;; geometry_msgs/Point32 _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _dimensions
    (send _dimensions :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _is_invalid
       (if _is_invalid (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_matched
       (if _is_matched (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_still
       (if _is_still (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _cluster_mask
       (write-byte _cluster_mask s)
     ;; uint8 _radar_id
       (write-byte _radar_id s)
     ;; uint16 _object_id
       (write-word _object_id s)
     ;; uint8 _type
       (write-byte _type s)
     ;; uint16 _life_count
       (write-word _life_count s)
     ;; float32 _rcs
       (sys::poke _rcs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point32 _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Vector3 _dimensions
       (send _dimensions :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _is_invalid
     (setq _is_invalid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_matched
     (setq _is_matched (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_still
     (setq _is_still (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _cluster_mask
     (setq _cluster_mask (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _radar_id
     (setq _radar_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _object_id
     (setq _object_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _life_count
     (setq _life_count (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _rcs
     (setq _rcs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _azimuth
     (setq _azimuth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point32 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;;
   self)
  )

(setf (get perception_msgs::RadarObject :md5sum-) "576c9844a5e307d0c5f0b7d6a73008c3")
(setf (get perception_msgs::RadarObject :datatype-) "perception_msgs/RadarObject")
(setf (get perception_msgs::RadarObject :definition-)
      "Header header

bool is_invalid
bool is_matched
bool is_still
uint8 cluster_mask
uint8 radar_id    # 0--f_radar, 1--fr_radar, 3--rr_radar, 5--rl_radar, 7--fl_radar
uint16 object_id  #
uint8 type        # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck

uint16 life_count  #
float32 rcs 
float32 confidence
float32 azimuth    # car-body(R-F-U)  R--0, F--90,  (0,360)

geometry_msgs/Point32 position  # relative position, car-body(R-F-U)
geometry_msgs/Vector3 velocity  # relative velocity, car-body(R-F-U)
geometry_msgs/Vector3 acceleration  # relative acceleration, car-body(R-F-U)
geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height


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
")



(provide :perception_msgs/RadarObject "576c9844a5e307d0c5f0b7d6a73008c3")


