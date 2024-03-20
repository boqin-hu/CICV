;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::CameraTrafficLightList)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'CameraTrafficLightList (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::CAMERATRAFFICLIGHTLIST")
  (make-package "PERCEPTION_MSGS::CAMERATRAFFICLIGHTLIST"))

(in-package "ROS")
;;//! \htmlinclude CameraTrafficLightList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::CameraTrafficLightList
  :super ros::object
  :slots (_header _frame_id _sensor_source _cameratrafficlights ))

(defmethod perception_msgs::CameraTrafficLightList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frame_id __frame_id) 0)
    ((:sensor_source __sensor_source) 0)
    ((:cameratrafficlights __cameratrafficlights) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _frame_id (round __frame_id))
   (setq _sensor_source (round __sensor_source))
   (setq _cameratrafficlights __cameratrafficlights)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:sensor_source
   (&optional __sensor_source)
   (if __sensor_source (setq _sensor_source __sensor_source)) _sensor_source)
  (:cameratrafficlights
   (&rest __cameratrafficlights)
   (if (keywordp (car __cameratrafficlights))
       (send* _cameratrafficlights __cameratrafficlights)
     (progn
       (if __cameratrafficlights (setq _cameratrafficlights (car __cameratrafficlights)))
       _cameratrafficlights)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _frame_id
    8
    ;; int8 _sensor_source
    1
    ;; perception_msgs/CameraTrafficLight[] _cameratrafficlights
    (apply #'+ (send-all _cameratrafficlights :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _frame_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _frame_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _frame_id) (= (length (_frame_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_frame_id . bv) 0) 0) s)
              (write-long (ash (elt (_frame_id . bv) 1) -1) s))
             ((and (class _frame_id) (= (length (_frame_id . bv)) 1)) ;; big1
              (write-long (elt (_frame_id . bv) 0) s)
              (write-long (if (>= _frame_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _frame_id s)(write-long (if (>= _frame_id 0) 0 #xffffffff) s)))
     ;; int8 _sensor_source
       (write-byte _sensor_source s)
     ;; perception_msgs/CameraTrafficLight[] _cameratrafficlights
     (write-long (length _cameratrafficlights) s)
     (dolist (elem _cameratrafficlights)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _frame_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _frame_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _frame_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int8 _sensor_source
     (setq _sensor_source (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _sensor_source 127) (setq _sensor_source (- _sensor_source 256)))
   ;; perception_msgs/CameraTrafficLight[] _cameratrafficlights
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cameratrafficlights (let (r) (dotimes (i n) (push (instance perception_msgs::CameraTrafficLight :init) r)) r))
     (dolist (elem- _cameratrafficlights)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_msgs::CameraTrafficLightList :md5sum-) "0445fe87f21f8f8e970fd72ec107e8eb")
(setf (get perception_msgs::CameraTrafficLightList :datatype-) "perception_msgs/CameraTrafficLightList")
(setf (get perception_msgs::CameraTrafficLightList :definition-)
      "Header header

uint64 frame_id
int8 sensor_source  # 0--radar, 1--lidar. 2--camera,
CameraTrafficLight[] cameratrafficlights

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
MSG: perception_msgs/CameraTrafficLight
Header header

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



(provide :perception_msgs/CameraTrafficLightList "0445fe87f21f8f8e970fd72ec107e8eb")


