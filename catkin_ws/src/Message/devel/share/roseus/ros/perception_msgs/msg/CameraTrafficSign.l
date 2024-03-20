;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::CameraTrafficSign)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'CameraTrafficSign (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::CAMERATRAFFICSIGN")
  (make-package "PERCEPTION_MSGS::CAMERATRAFFICSIGN"))

(in-package "ROS")
;;//! \htmlinclude CameraTrafficSign.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::CameraTrafficSign
  :super ros::object
  :slots (_header _sensor_id _object_id _detect_confidence _type_confidence _position _pixel_central_point _pixel_box_size _type ))

(defmethod perception_msgs::CameraTrafficSign
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sensor_id __sensor_id) 0)
    ((:object_id __object_id) 0)
    ((:detect_confidence __detect_confidence) 0.0)
    ((:type_confidence __type_confidence) 0.0)
    ((:position __position) (instance geometry_msgs::Point32 :init))
    ((:pixel_central_point __pixel_central_point) (instance perception_msgs::Point2D :init))
    ((:pixel_box_size __pixel_box_size) (instance perception_msgs::Point2D :init))
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _sensor_id (round __sensor_id))
   (setq _object_id (round __object_id))
   (setq _detect_confidence (float __detect_confidence))
   (setq _type_confidence (float __type_confidence))
   (setq _position __position)
   (setq _pixel_central_point __pixel_central_point)
   (setq _pixel_box_size __pixel_box_size)
   (setq _type (round __type))
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
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
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
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _sensor_id
    1
    ;; int32 _object_id
    4
    ;; float32 _detect_confidence
    4
    ;; float32 _type_confidence
    4
    ;; geometry_msgs/Point32 _position
    (send _position :serialization-length)
    ;; perception_msgs/Point2D _pixel_central_point
    (send _pixel_central_point :serialization-length)
    ;; perception_msgs/Point2D _pixel_box_size
    (send _pixel_box_size :serialization-length)
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _sensor_id
       (write-byte _sensor_id s)
     ;; int32 _object_id
       (write-long _object_id s)
     ;; float32 _detect_confidence
       (sys::poke _detect_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _type_confidence
       (sys::poke _type_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point32 _position
       (send _position :serialize s)
     ;; perception_msgs/Point2D _pixel_central_point
       (send _pixel_central_point :serialize s)
     ;; perception_msgs/Point2D _pixel_box_size
       (send _pixel_box_size :serialize s)
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _sensor_id
     (setq _sensor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _sensor_id 127) (setq _sensor_id (- _sensor_id 256)))
   ;; int32 _object_id
     (setq _object_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _detect_confidence
     (setq _detect_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _type_confidence
     (setq _type_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point32 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; perception_msgs/Point2D _pixel_central_point
     (send _pixel_central_point :deserialize buf ptr-) (incf ptr- (send _pixel_central_point :serialization-length))
   ;; perception_msgs/Point2D _pixel_box_size
     (send _pixel_box_size :deserialize buf ptr-) (incf ptr- (send _pixel_box_size :serialization-length))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_msgs::CameraTrafficSign :md5sum-) "fa4bad63f8bf9a9e071f40dbfe042aa9")
(setf (get perception_msgs::CameraTrafficSign :datatype-) "perception_msgs/CameraTrafficSign")
(setf (get perception_msgs::CameraTrafficSign :definition-)
      "Header header
int8 sensor_id
int32 object_id
float32 detect_confidence
float32 type_confidence
geometry_msgs/Point32 position  # relative position, car-body(R-F-U)
Point2D pixel_central_point 
Point2D pixel_box_size
int32 type

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
MSG: perception_msgs/Point2D
float64 x
float64 y

")



(provide :perception_msgs/CameraTrafficSign "fa4bad63f8bf9a9e071f40dbfe042aa9")


