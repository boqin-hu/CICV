;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::CameraTrafficLight)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'CameraTrafficLight (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::CAMERATRAFFICLIGHT")
  (make-package "PERCEPTION_MSGS::CAMERATRAFFICLIGHT"))

(in-package "ROS")
;;//! \htmlinclude CameraTrafficLight.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::CameraTrafficLight
  :super ros::object
  :slots (_header _sensor_id _object_id _detect_confidence _type_confidence _position _pixel_central_point _pixel_box_size _light_color _light_shape ))

(defmethod perception_msgs::CameraTrafficLight
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
    ((:light_color __light_color) 0)
    ((:light_shape __light_shape) 0)
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
   (setq _light_color (round __light_color))
   (setq _light_shape (round __light_shape))
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
  (:light_color
   (&optional __light_color)
   (if __light_color (setq _light_color __light_color)) _light_color)
  (:light_shape
   (&optional __light_shape)
   (if __light_shape (setq _light_shape __light_shape)) _light_shape)
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
    ;; uint8 _light_color
    1
    ;; uint8 _light_shape
    1
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
     ;; uint8 _light_color
       (write-byte _light_color s)
     ;; uint8 _light_shape
       (write-byte _light_shape s)
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
   ;; uint8 _light_color
     (setq _light_color (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _light_shape
     (setq _light_shape (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get perception_msgs::CameraTrafficLight :md5sum-) "affc39367ddc654fd7a98cbc9d340cef")
(setf (get perception_msgs::CameraTrafficLight :datatype-) "perception_msgs/CameraTrafficLight")
(setf (get perception_msgs::CameraTrafficLight :definition-)
      "Header header

int8 sensor_id  # sensor id, 0-front_long_focus, 1-front_short_focus, 2-right, 3-rear, 4-left
int32 object_id
float32 detect_confidence
float32 type_confidence

geometry_msgs/Point32 position  # relative position, car-body(R-F-U)

Point2D pixel_central_point 
Point2D pixel_box_size

uint8 light_color  # 0--rad, 1--green, 2--yellow, 3--off or unknow
uint8 light_shape  # 0--round, 1--left_arrow, 2--other


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



(provide :perception_msgs/CameraTrafficLight "affc39367ddc654fd7a98cbc9d340cef")


