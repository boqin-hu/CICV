;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::Perceptionobjects)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'Perceptionobjects (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::PERCEPTIONOBJECTS")
  (make-package "COMMON_MSGS::PERCEPTIONOBJECTS"))

(in-package "ROS")
;;//! \htmlinclude Perceptionobjects.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass common_msgs::Perceptionobjects
  :super ros::object
  :slots (_header _num _Perceptionobjects ))

(defmethod common_msgs::Perceptionobjects
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:num __num) 0)
    ((:Perceptionobjects __Perceptionobjects) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _num (round __num))
   (setq _Perceptionobjects __Perceptionobjects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:Perceptionobjects
   (&rest __Perceptionobjects)
   (if (keywordp (car __Perceptionobjects))
       (send* _Perceptionobjects __Perceptionobjects)
     (progn
       (if __Perceptionobjects (setq _Perceptionobjects (car __Perceptionobjects)))
       _Perceptionobjects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _num
    4
    ;; common_msgs/Perceptionobject[] _Perceptionobjects
    (apply #'+ (send-all _Perceptionobjects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _num
       (write-long _num s)
     ;; common_msgs/Perceptionobject[] _Perceptionobjects
     (write-long (length _Perceptionobjects) s)
     (dolist (elem _Perceptionobjects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _num
     (setq _num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; common_msgs/Perceptionobject[] _Perceptionobjects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Perceptionobjects (let (r) (dotimes (i n) (push (instance common_msgs::Perceptionobject :init) r)) r))
     (dolist (elem- _Perceptionobjects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get common_msgs::Perceptionobjects :md5sum-) "f73590366c45733461115f9c5d54e381")
(setf (get common_msgs::Perceptionobjects :datatype-) "common_msgs/Perceptionobjects")
(setf (get common_msgs::Perceptionobjects :definition-)
      "std_msgs/Header  header
int32 num                                #目标数量
Perceptionobject[] Perceptionobjects     #目标描述

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
MSG: common_msgs/Perceptionobject
float64 SimTim
uint32 ID 
float64 x
float64 y
float64 v_x
float64 v_y
float64 xg	
float64 yg
float64 v_xg
float64 v_yg
float32 heading	
float64 length	
float64 width
float64 height
uint8 type
float64 xrel	
float64 yrel
float64 v_xrel
float64 v_yrel



#ros消息时间戳转换成double类型的时间，单位:s	
#x坐标值 FLU车体坐标系,单位:m	
#y坐标值 FLU车体坐标系,单位:m	
#x方向绝对距离，单位:m	
#y方向绝对距离，单位:m	
#单位:度	
#单位:m	
#单位:m	
#\"类型(# 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck)（0-未知,1-行人，
#2-叉车，3-物料箱，4-货架，5-AMR）\"	
#x方向绝对速度，单位:m/s	
#y方向绝对速度，单位:m/s	
#x方向相对速度，单位:m/s	
#y方向相对距离，单位:m/s	
#被激光雷达检测到的次数，乘以周期（100ms）是检测到的时间	
#在utm坐标系下的x坐标	
#在utm坐标系下的y坐标	


")



(provide :common_msgs/Perceptionobjects "f73590366c45733461115f9c5d54e381")


