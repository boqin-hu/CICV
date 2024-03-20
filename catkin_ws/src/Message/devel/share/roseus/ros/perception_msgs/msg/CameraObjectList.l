;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::CameraObjectList)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'CameraObjectList (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::CAMERAOBJECTLIST")
  (make-package "PERCEPTION_MSGS::CAMERAOBJECTLIST"))

(in-package "ROS")
;;//! \htmlinclude CameraObjectList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::CameraObjectList
  :super ros::object
  :slots (_header _frame_number _sensor_source _cameraobjects ))

(defmethod perception_msgs::CameraObjectList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frame_number __frame_number) 0)
    ((:sensor_source __sensor_source) 0)
    ((:cameraobjects __cameraobjects) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _frame_number (round __frame_number))
   (setq _sensor_source (round __sensor_source))
   (setq _cameraobjects __cameraobjects)
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
  (:cameraobjects
   (&rest __cameraobjects)
   (if (keywordp (car __cameraobjects))
       (send* _cameraobjects __cameraobjects)
     (progn
       (if __cameraobjects (setq _cameraobjects (car __cameraobjects)))
       _cameraobjects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _frame_number
    8
    ;; int8 _sensor_source
    1
    ;; perception_msgs/CameraObject[] _cameraobjects
    (apply #'+ (send-all _cameraobjects :serialization-length)) 4
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
     ;; int8 _sensor_source
       (write-byte _sensor_source s)
     ;; perception_msgs/CameraObject[] _cameraobjects
     (write-long (length _cameraobjects) s)
     (dolist (elem _cameraobjects)
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
   ;; int8 _sensor_source
     (setq _sensor_source (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _sensor_source 127) (setq _sensor_source (- _sensor_source 256)))
   ;; perception_msgs/CameraObject[] _cameraobjects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cameraobjects (let (r) (dotimes (i n) (push (instance perception_msgs::CameraObject :init) r)) r))
     (dolist (elem- _cameraobjects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_msgs::CameraObjectList :md5sum-) "9fc086e4304c6b87b48ce29317b562a6")
(setf (get perception_msgs::CameraObjectList :datatype-) "perception_msgs/CameraObjectList")
(setf (get perception_msgs::CameraObjectList :definition-)
      "Header header
uint64 frame_number
int8 sensor_source
CameraObject[] cameraobjects

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
MSG: perception_msgs/CameraObject
Header header

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



(provide :perception_msgs/CameraObjectList "9fc086e4304c6b87b48ce29317b562a6")


