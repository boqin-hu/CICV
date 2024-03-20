;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::UltrasonicParking)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'UltrasonicParking (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::ULTRASONICPARKING")
  (make-package "PERCEPTION_MSGS::ULTRASONICPARKING"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicParking.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::UltrasonicParking
  :super ros::object
  :slots (_header _cell ))

(defmethod perception_msgs::UltrasonicParking
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cell __cell) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _cell __cell)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cell
   (&rest __cell)
   (if (keywordp (car __cell))
       (send* _cell __cell)
     (progn
       (if __cell (setq _cell (car __cell)))
       _cell)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; perception_msgs/UltraCell[] _cell
    (apply #'+ (send-all _cell :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; perception_msgs/UltraCell[] _cell
     (write-long (length _cell) s)
     (dolist (elem _cell)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; perception_msgs/UltraCell[] _cell
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cell (let (r) (dotimes (i n) (push (instance perception_msgs::UltraCell :init) r)) r))
     (dolist (elem- _cell)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_msgs::UltrasonicParking :md5sum-) "decfd193847cbea961ea27cf34064d9c")
(setf (get perception_msgs::UltrasonicParking :datatype-) "perception_msgs/UltrasonicParking")
(setf (get perception_msgs::UltrasonicParking :definition-)
      "Header header
UltraCell[] cell

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
MSG: perception_msgs/UltraCell
int32   id
float32 direct_dist
float32 indirect_dist
int32   status

")



(provide :perception_msgs/UltrasonicParking "decfd193847cbea961ea27cf34064d9c")


