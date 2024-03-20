;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::Trajectory)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'Trajectory (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::TRAJECTORY")
  (make-package "PERCEPTION_MSGS::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::Trajectory
  :super ros::object
  :slots (_header _frame_number _is_valid_frame _trajectoryinfo ))

(defmethod perception_msgs::Trajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frame_number __frame_number) 0)
    ((:is_valid_frame __is_valid_frame) nil)
    ((:trajectoryinfo __trajectoryinfo) (instance perception_msgs::TrajectoryInfo :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _frame_number (round __frame_number))
   (setq _is_valid_frame __is_valid_frame)
   (setq _trajectoryinfo __trajectoryinfo)
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
  (:is_valid_frame
   (&optional (__is_valid_frame :null))
   (if (not (eq __is_valid_frame :null)) (setq _is_valid_frame __is_valid_frame)) _is_valid_frame)
  (:trajectoryinfo
   (&rest __trajectoryinfo)
   (if (keywordp (car __trajectoryinfo))
       (send* _trajectoryinfo __trajectoryinfo)
     (progn
       (if __trajectoryinfo (setq _trajectoryinfo (car __trajectoryinfo)))
       _trajectoryinfo)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _frame_number
    8
    ;; bool _is_valid_frame
    1
    ;; perception_msgs/TrajectoryInfo _trajectoryinfo
    (send _trajectoryinfo :serialization-length)
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
     ;; bool _is_valid_frame
       (if _is_valid_frame (write-byte -1 s) (write-byte 0 s))
     ;; perception_msgs/TrajectoryInfo _trajectoryinfo
       (send _trajectoryinfo :serialize s)
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
   ;; bool _is_valid_frame
     (setq _is_valid_frame (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; perception_msgs/TrajectoryInfo _trajectoryinfo
     (send _trajectoryinfo :deserialize buf ptr-) (incf ptr- (send _trajectoryinfo :serialization-length))
   ;;
   self)
  )

(setf (get perception_msgs::Trajectory :md5sum-) "132aa4b0598aef32b1def9d8d8e57cbe")
(setf (get perception_msgs::Trajectory :datatype-) "perception_msgs/Trajectory")
(setf (get perception_msgs::Trajectory :definition-)
      "Header header
uint64 frame_number
bool is_valid_frame
TrajectoryInfo trajectoryinfo

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
MSG: perception_msgs/TrajectoryInfo
int32 path_id
float32 total_path_length
float32 total_path_time
int8 decision_type
int8 light_type
string[] lane_ids
TrajectoryPoint[] trajectorypoints

================================================================================
MSG: perception_msgs/TrajectoryPoint
Point2D position
float32 velocity
float32 heading
float32 curvature
float32 s
float32 t
int8 point_type

================================================================================
MSG: perception_msgs/Point2D
float64 x
float64 y

")



(provide :perception_msgs/Trajectory "132aa4b0598aef32b1def9d8d8e57cbe")


