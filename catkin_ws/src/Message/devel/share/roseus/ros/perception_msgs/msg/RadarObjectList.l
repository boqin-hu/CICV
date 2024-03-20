;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::RadarObjectList)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'RadarObjectList (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::RADAROBJECTLIST")
  (make-package "PERCEPTION_MSGS::RADAROBJECTLIST"))

(in-package "ROS")
;;//! \htmlinclude RadarObjectList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::RadarObjectList
  :super ros::object
  :slots (_header _radarobjects ))

(defmethod perception_msgs::RadarObjectList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:radarobjects __radarobjects) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _radarobjects __radarobjects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:radarobjects
   (&rest __radarobjects)
   (if (keywordp (car __radarobjects))
       (send* _radarobjects __radarobjects)
     (progn
       (if __radarobjects (setq _radarobjects (car __radarobjects)))
       _radarobjects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; perception_msgs/RadarObject[] _radarobjects
    (apply #'+ (send-all _radarobjects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; perception_msgs/RadarObject[] _radarobjects
     (write-long (length _radarobjects) s)
     (dolist (elem _radarobjects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; perception_msgs/RadarObject[] _radarobjects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _radarobjects (let (r) (dotimes (i n) (push (instance perception_msgs::RadarObject :init) r)) r))
     (dolist (elem- _radarobjects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_msgs::RadarObjectList :md5sum-) "a51084f8d16780a6b5cd047e02969220")
(setf (get perception_msgs::RadarObjectList :datatype-) "perception_msgs/RadarObjectList")
(setf (get perception_msgs::RadarObjectList :definition-)
      "Header header
RadarObject[] radarobjects

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
MSG: perception_msgs/RadarObject
Header header

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



(provide :perception_msgs/RadarObjectList "a51084f8d16780a6b5cd047e02969220")


