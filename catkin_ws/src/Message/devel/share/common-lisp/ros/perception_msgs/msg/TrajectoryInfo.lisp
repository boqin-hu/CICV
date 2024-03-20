; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude TrajectoryInfo.msg.html

(cl:defclass <TrajectoryInfo> (roslisp-msg-protocol:ros-message)
  ((path_id
    :reader path_id
    :initarg :path_id
    :type cl:integer
    :initform 0)
   (total_path_length
    :reader total_path_length
    :initarg :total_path_length
    :type cl:float
    :initform 0.0)
   (total_path_time
    :reader total_path_time
    :initarg :total_path_time
    :type cl:float
    :initform 0.0)
   (decision_type
    :reader decision_type
    :initarg :decision_type
    :type cl:fixnum
    :initform 0)
   (light_type
    :reader light_type
    :initarg :light_type
    :type cl:fixnum
    :initform 0)
   (lane_ids
    :reader lane_ids
    :initarg :lane_ids
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (trajectorypoints
    :reader trajectorypoints
    :initarg :trajectorypoints
    :type (cl:vector perception_msgs-msg:TrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:TrajectoryPoint :initial-element (cl:make-instance 'perception_msgs-msg:TrajectoryPoint))))
)

(cl:defclass TrajectoryInfo (<TrajectoryInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<TrajectoryInfo> is deprecated: use perception_msgs-msg:TrajectoryInfo instead.")))

(cl:ensure-generic-function 'path_id-val :lambda-list '(m))
(cl:defmethod path_id-val ((m <TrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:path_id-val is deprecated.  Use perception_msgs-msg:path_id instead.")
  (path_id m))

(cl:ensure-generic-function 'total_path_length-val :lambda-list '(m))
(cl:defmethod total_path_length-val ((m <TrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:total_path_length-val is deprecated.  Use perception_msgs-msg:total_path_length instead.")
  (total_path_length m))

(cl:ensure-generic-function 'total_path_time-val :lambda-list '(m))
(cl:defmethod total_path_time-val ((m <TrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:total_path_time-val is deprecated.  Use perception_msgs-msg:total_path_time instead.")
  (total_path_time m))

(cl:ensure-generic-function 'decision_type-val :lambda-list '(m))
(cl:defmethod decision_type-val ((m <TrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:decision_type-val is deprecated.  Use perception_msgs-msg:decision_type instead.")
  (decision_type m))

(cl:ensure-generic-function 'light_type-val :lambda-list '(m))
(cl:defmethod light_type-val ((m <TrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:light_type-val is deprecated.  Use perception_msgs-msg:light_type instead.")
  (light_type m))

(cl:ensure-generic-function 'lane_ids-val :lambda-list '(m))
(cl:defmethod lane_ids-val ((m <TrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:lane_ids-val is deprecated.  Use perception_msgs-msg:lane_ids instead.")
  (lane_ids m))

(cl:ensure-generic-function 'trajectorypoints-val :lambda-list '(m))
(cl:defmethod trajectorypoints-val ((m <TrajectoryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:trajectorypoints-val is deprecated.  Use perception_msgs-msg:trajectorypoints instead.")
  (trajectorypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryInfo>) ostream)
  "Serializes a message object of type '<TrajectoryInfo>"
  (cl:let* ((signed (cl:slot-value msg 'path_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'total_path_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'total_path_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'decision_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'light_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'lane_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectorypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectorypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryInfo>) istream)
  "Deserializes a message object of type '<TrajectoryInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_path_length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_path_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'decision_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'light_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectorypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectorypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:TrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryInfo>)))
  "Returns string type for a message object of type '<TrajectoryInfo>"
  "perception_msgs/TrajectoryInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryInfo)))
  "Returns string type for a message object of type 'TrajectoryInfo"
  "perception_msgs/TrajectoryInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryInfo>)))
  "Returns md5sum for a message object of type '<TrajectoryInfo>"
  "c7d900a70debd0d52467ed4c06e4dc57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryInfo)))
  "Returns md5sum for a message object of type 'TrajectoryInfo"
  "c7d900a70debd0d52467ed4c06e4dc57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryInfo>)))
  "Returns full string definition for message of type '<TrajectoryInfo>"
  (cl:format cl:nil "int32 path_id~%float32 total_path_length~%float32 total_path_time~%int8 decision_type~%int8 light_type~%string[] lane_ids~%TrajectoryPoint[] trajectorypoints~%~%================================================================================~%MSG: perception_msgs/TrajectoryPoint~%Point2D position~%float32 velocity~%float32 heading~%float32 curvature~%float32 s~%float32 t~%int8 point_type~%~%================================================================================~%MSG: perception_msgs/Point2D~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryInfo)))
  "Returns full string definition for message of type 'TrajectoryInfo"
  (cl:format cl:nil "int32 path_id~%float32 total_path_length~%float32 total_path_time~%int8 decision_type~%int8 light_type~%string[] lane_ids~%TrajectoryPoint[] trajectorypoints~%~%================================================================================~%MSG: perception_msgs/TrajectoryPoint~%Point2D position~%float32 velocity~%float32 heading~%float32 curvature~%float32 s~%float32 t~%int8 point_type~%~%================================================================================~%MSG: perception_msgs/Point2D~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryInfo>))
  (cl:+ 0
     4
     4
     4
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectorypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryInfo
    (cl:cons ':path_id (path_id msg))
    (cl:cons ':total_path_length (total_path_length msg))
    (cl:cons ':total_path_time (total_path_time msg))
    (cl:cons ':decision_type (decision_type msg))
    (cl:cons ':light_type (light_type msg))
    (cl:cons ':lane_ids (lane_ids msg))
    (cl:cons ':trajectorypoints (trajectorypoints msg))
))
