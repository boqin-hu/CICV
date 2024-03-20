; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude Perceptionobjects.msg.html

(cl:defclass <Perceptionobjects> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0)
   (Perceptionobjects
    :reader Perceptionobjects
    :initarg :Perceptionobjects
    :type (cl:vector common_msgs-msg:Perceptionobject)
   :initform (cl:make-array 0 :element-type 'common_msgs-msg:Perceptionobject :initial-element (cl:make-instance 'common_msgs-msg:Perceptionobject))))
)

(cl:defclass Perceptionobjects (<Perceptionobjects>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Perceptionobjects>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Perceptionobjects)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<Perceptionobjects> is deprecated: use common_msgs-msg:Perceptionobjects instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Perceptionobjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:header-val is deprecated.  Use common_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <Perceptionobjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:num-val is deprecated.  Use common_msgs-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'Perceptionobjects-val :lambda-list '(m))
(cl:defmethod Perceptionobjects-val ((m <Perceptionobjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Perceptionobjects-val is deprecated.  Use common_msgs-msg:Perceptionobjects instead.")
  (Perceptionobjects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Perceptionobjects>) ostream)
  "Serializes a message object of type '<Perceptionobjects>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Perceptionobjects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Perceptionobjects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Perceptionobjects>) istream)
  "Deserializes a message object of type '<Perceptionobjects>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Perceptionobjects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Perceptionobjects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'common_msgs-msg:Perceptionobject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Perceptionobjects>)))
  "Returns string type for a message object of type '<Perceptionobjects>"
  "common_msgs/Perceptionobjects")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Perceptionobjects)))
  "Returns string type for a message object of type 'Perceptionobjects"
  "common_msgs/Perceptionobjects")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Perceptionobjects>)))
  "Returns md5sum for a message object of type '<Perceptionobjects>"
  "f73590366c45733461115f9c5d54e381")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Perceptionobjects)))
  "Returns md5sum for a message object of type 'Perceptionobjects"
  "f73590366c45733461115f9c5d54e381")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Perceptionobjects>)))
  "Returns full string definition for message of type '<Perceptionobjects>"
  (cl:format cl:nil "std_msgs/Header  header~%int32 num                                #目标数量~%Perceptionobject[] Perceptionobjects     #目标描述~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: common_msgs/Perceptionobject~%float64 SimTim~%uint32 ID ~%float64 x~%float64 y~%float64 v_x~%float64 v_y~%float64 xg	~%float64 yg~%float64 v_xg~%float64 v_yg~%float32 heading	~%float64 length	~%float64 width~%float64 height~%uint8 type~%float64 xrel	~%float64 yrel~%float64 v_xrel~%float64 v_yrel~%~%~%~%#ros消息时间戳转换成double类型的时间，单位:s	~%#x坐标值 FLU车体坐标系,单位:m	~%#y坐标值 FLU车体坐标系,单位:m	~%#x方向绝对距离，单位:m	~%#y方向绝对距离，单位:m	~%#单位:度	~%#单位:m	~%#单位:m	~%#\"类型(# 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck)（0-未知,1-行人，~%#2-叉车，3-物料箱，4-货架，5-AMR）\"	~%#x方向绝对速度，单位:m/s	~%#y方向绝对速度，单位:m/s	~%#x方向相对速度，单位:m/s	~%#y方向相对距离，单位:m/s	~%#被激光雷达检测到的次数，乘以周期（100ms）是检测到的时间	~%#在utm坐标系下的x坐标	~%#在utm坐标系下的y坐标	~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Perceptionobjects)))
  "Returns full string definition for message of type 'Perceptionobjects"
  (cl:format cl:nil "std_msgs/Header  header~%int32 num                                #目标数量~%Perceptionobject[] Perceptionobjects     #目标描述~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: common_msgs/Perceptionobject~%float64 SimTim~%uint32 ID ~%float64 x~%float64 y~%float64 v_x~%float64 v_y~%float64 xg	~%float64 yg~%float64 v_xg~%float64 v_yg~%float32 heading	~%float64 length	~%float64 width~%float64 height~%uint8 type~%float64 xrel	~%float64 yrel~%float64 v_xrel~%float64 v_yrel~%~%~%~%#ros消息时间戳转换成double类型的时间，单位:s	~%#x坐标值 FLU车体坐标系,单位:m	~%#y坐标值 FLU车体坐标系,单位:m	~%#x方向绝对距离，单位:m	~%#y方向绝对距离，单位:m	~%#单位:度	~%#单位:m	~%#单位:m	~%#\"类型(# 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck)（0-未知,1-行人，~%#2-叉车，3-物料箱，4-货架，5-AMR）\"	~%#x方向绝对速度，单位:m/s	~%#y方向绝对速度，单位:m/s	~%#x方向相对速度，单位:m/s	~%#y方向相对距离，单位:m/s	~%#被激光雷达检测到的次数，乘以周期（100ms）是检测到的时间	~%#在utm坐标系下的x坐标	~%#在utm坐标系下的y坐标	~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Perceptionobjects>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Perceptionobjects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Perceptionobjects>))
  "Converts a ROS message object to a list"
  (cl:list 'Perceptionobjects
    (cl:cons ':header (header msg))
    (cl:cons ':num (num msg))
    (cl:cons ':Perceptionobjects (Perceptionobjects msg))
))
