;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::CameraTrafficSignList)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'CameraTrafficSignList (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::CAMERATRAFFICSIGNLIST")
  (make-package "PERCEPTION_MSGS::CAMERATRAFFICSIGNLIST"))

(in-package "ROS")
;;//! \htmlinclude CameraTrafficSignList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::CameraTrafficSignList
  :super ros::object
  :slots (_header _frame_number _sensor_source _cameratrafficsigns ))

(defmethod perception_msgs::CameraTrafficSignList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frame_number __frame_number) 0)
    ((:sensor_source __sensor_source) 0)
    ((:cameratrafficsigns __cameratrafficsigns) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _frame_number (round __frame_number))
   (setq _sensor_source (round __sensor_source))
   (setq _cameratrafficsigns __cameratrafficsigns)
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
  (:cameratrafficsigns
   (&rest __cameratrafficsigns)
   (if (keywordp (car __cameratrafficsigns))
       (send* _cameratrafficsigns __cameratrafficsigns)
     (progn
       (if __cameratrafficsigns (setq _cameratrafficsigns (car __cameratrafficsigns)))
       _cameratrafficsigns)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _frame_number
    8
    ;; int8 _sensor_source
    1
    ;; perception_msgs/CameraTrafficSign[] _cameratrafficsigns
    (apply #'+ (send-all _cameratrafficsigns :serialization-length)) 4
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
     ;; perception_msgs/CameraTrafficSign[] _cameratrafficsigns
     (write-long (length _cameratrafficsigns) s)
     (dolist (elem _cameratrafficsigns)
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
   ;; perception_msgs/CameraTrafficSign[] _cameratrafficsigns
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cameratrafficsigns (let (r) (dotimes (i n) (push (instance perception_msgs::CameraTrafficSign :init) r)) r))
     (dolist (elem- _cameratrafficsigns)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_msgs::CameraTrafficSignList :md5sum-) "f0958cb02585f0cef94cf9bbcfcf089f")
(setf (get perception_msgs::CameraTrafficSignList :datatype-) "perception_msgs/CameraTrafficSignList")
(setf (get perception_msgs::CameraTrafficSignList :definition-)
      "Header header
uint64 frame_number
int8 sensor_source
CameraTrafficSign[] cameratrafficsigns

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
MSG: perception_msgs/CameraTrafficSign
Header header
int8 sensor_id
int32 object_id
float32 detect_confidence
float32 type_confidence
geometry_msgs/Point32 position  # relative position, car-body(R-F-U)
Point2D pixel_central_point 
Point2D pixel_box_size
int32 type

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



(provide :perception_msgs/CameraTrafficSignList "f0958cb02585f0cef94cf9bbcfcf089f")


