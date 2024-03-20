; Auto-generated. Do not edit!


(cl:in-package navi_msgs-msg)


;//! \htmlinclude NaviTask.msg.html

(cl:defclass <NaviTask> (roslisp-msg-protocol:ros-message)
  ((v_header
    :reader v_header
    :initarg :v_header
    :type navi_msgs-msg:VehHeader
    :initform (cl:make-instance 'navi_msgs-msg:VehHeader))
   (station_cntr
    :reader station_cntr
    :initarg :station_cntr
    :type cl:integer
    :initform 0)
   (nav_pose
    :reader nav_pose
    :initarg :nav_pose
    :type (cl:vector navi_msgs-msg:StationPoint)
   :initform (cl:make-array 0 :element-type 'navi_msgs-msg:StationPoint :initial-element (cl:make-instance 'navi_msgs-msg:StationPoint))))
)

(cl:defclass NaviTask (<NaviTask>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaviTask>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaviTask)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navi_msgs-msg:<NaviTask> is deprecated: use navi_msgs-msg:NaviTask instead.")))

(cl:ensure-generic-function 'v_header-val :lambda-list '(m))
(cl:defmethod v_header-val ((m <NaviTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:v_header-val is deprecated.  Use navi_msgs-msg:v_header instead.")
  (v_header m))

(cl:ensure-generic-function 'station_cntr-val :lambda-list '(m))
(cl:defmethod station_cntr-val ((m <NaviTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:station_cntr-val is deprecated.  Use navi_msgs-msg:station_cntr instead.")
  (station_cntr m))

(cl:ensure-generic-function 'nav_pose-val :lambda-list '(m))
(cl:defmethod nav_pose-val ((m <NaviTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:nav_pose-val is deprecated.  Use navi_msgs-msg:nav_pose instead.")
  (nav_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaviTask>) ostream)
  "Serializes a message object of type '<NaviTask>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v_header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'station_cntr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nav_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'nav_pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaviTask>) istream)
  "Deserializes a message object of type '<NaviTask>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v_header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'station_cntr) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nav_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nav_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'navi_msgs-msg:StationPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaviTask>)))
  "Returns string type for a message object of type '<NaviTask>"
  "navi_msgs/NaviTask")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviTask)))
  "Returns string type for a message object of type 'NaviTask"
  "navi_msgs/NaviTask")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaviTask>)))
  "Returns md5sum for a message object of type '<NaviTask>"
  "cbeb6d361fd989a080e278524d680bf9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaviTask)))
  "Returns md5sum for a message object of type 'NaviTask"
  "cbeb6d361fd989a080e278524d680bf9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaviTask>)))
  "Returns full string definition for message of type '<NaviTask>"
  (cl:format cl:nil "VehHeader v_header~%int32 station_cntr	~%StationPoint[] nav_pose~%~%================================================================================~%MSG: navi_msgs/VehHeader~%uint16 veh_id~%TimeStamp time~%================================================================================~%MSG: navi_msgs/TimeStamp~%uint64 s~%uint64 ns~%================================================================================~%MSG: navi_msgs/StationPoint~%float64 x~%float64 y~%uint16 station_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaviTask)))
  "Returns full string definition for message of type 'NaviTask"
  (cl:format cl:nil "VehHeader v_header~%int32 station_cntr	~%StationPoint[] nav_pose~%~%================================================================================~%MSG: navi_msgs/VehHeader~%uint16 veh_id~%TimeStamp time~%================================================================================~%MSG: navi_msgs/TimeStamp~%uint64 s~%uint64 ns~%================================================================================~%MSG: navi_msgs/StationPoint~%float64 x~%float64 y~%uint16 station_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaviTask>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v_header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nav_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaviTask>))
  "Converts a ROS message object to a list"
  (cl:list 'NaviTask
    (cl:cons ':v_header (v_header msg))
    (cl:cons ':station_cntr (station_cntr msg))
    (cl:cons ':nav_pose (nav_pose msg))
))
