;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::RoutePlan)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'RoutePlan (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::ROUTEPLAN")
  (make-package "COMMON_MSGS::ROUTEPLAN"))

(in-package "ROS")
;;//! \htmlinclude RoutePlan.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass common_msgs::RoutePlan
  :super ros::object
  :slots (_header _id _result _point _global_road _length ))

(defmethod common_msgs::RoutePlan
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:result __result) 0)
    ((:point __point) (instance common_msgs::MissionPoint :init))
    ((:global_road __global_road) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _result (round __result))
   (setq _point __point)
   (setq _global_road __global_road)
   (setq _length (float __length))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:global_road
   (&optional __global_road)
   (if __global_road (setq _global_road __global_road)) _global_road)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _id
    4
    ;; int32 _result
    4
    ;; common_msgs/MissionPoint _point
    (send _point :serialization-length)
    ;; string[] _global_road
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _global_road)) 4
    ;; float64 _length
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; int32 _result
       (write-long _result s)
     ;; common_msgs/MissionPoint _point
       (send _point :serialize s)
     ;; string[] _global_road
     (write-long (length _global_road) s)
     (dolist (elem _global_road)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; common_msgs/MissionPoint _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; string[] _global_road
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _global_road (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _global_road i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get common_msgs::RoutePlan :md5sum-) "588f95e3e5ed3efb7cc8dd4fbc6621ba")
(setf (get common_msgs::RoutePlan :datatype-) "common_msgs/RoutePlan")
(setf (get common_msgs::RoutePlan :definition-)
      "std_msgs/Header header
int32 id
int32 result
MissionPoint point
string[] global_road
float64 length

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
MSG: common_msgs/MissionPoint
float64 xg
float64 yg
float64 heading
")



(provide :common_msgs/RoutePlan "588f95e3e5ed3efb7cc8dd4fbc6621ba")


