; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude Trajectory.msg.html

(cl:defclass <Trajectory> (roslisp-msg-protocol:ros-message)
  ((SimTim
    :reader SimTim
    :initarg :SimTim
    :type cl:float
    :initform 0.0)
   (decision_type
    :reader decision_type
    :initarg :decision_type
    :type cl:integer
    :initform 0)
   (turn_light_type
    :reader turn_light_type
    :initarg :turn_light_type
    :type cl:integer
    :initform 0)
   (num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0)
   (trajectorypoints
    :reader trajectorypoints
    :initarg :trajectorypoints
    :type (cl:vector common_msgs-msg:TrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'common_msgs-msg:TrajectoryPoint :initial-element (cl:make-instance 'common_msgs-msg:TrajectoryPoint))))
)

(cl:defclass Trajectory (<Trajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<Trajectory> is deprecated: use common_msgs-msg:Trajectory instead.")))

(cl:ensure-generic-function 'SimTim-val :lambda-list '(m))
(cl:defmethod SimTim-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:SimTim-val is deprecated.  Use common_msgs-msg:SimTim instead.")
  (SimTim m))

(cl:ensure-generic-function 'decision_type-val :lambda-list '(m))
(cl:defmethod decision_type-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:decision_type-val is deprecated.  Use common_msgs-msg:decision_type instead.")
  (decision_type m))

(cl:ensure-generic-function 'turn_light_type-val :lambda-list '(m))
(cl:defmethod turn_light_type-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:turn_light_type-val is deprecated.  Use common_msgs-msg:turn_light_type instead.")
  (turn_light_type m))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:num-val is deprecated.  Use common_msgs-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'trajectorypoints-val :lambda-list '(m))
(cl:defmethod trajectorypoints-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:trajectorypoints-val is deprecated.  Use common_msgs-msg:trajectorypoints instead.")
  (trajectorypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trajectory>) ostream)
  "Serializes a message object of type '<Trajectory>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'SimTim))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'decision_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'turn_light_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectorypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectorypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trajectory>) istream)
  "Deserializes a message object of type '<Trajectory>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SimTim) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'decision_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turn_light_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  (cl:setf (cl:slot-value msg 'trajectorypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectorypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'common_msgs-msg:TrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trajectory>)))
  "Returns string type for a message object of type '<Trajectory>"
  "common_msgs/Trajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trajectory)))
  "Returns string type for a message object of type 'Trajectory"
  "common_msgs/Trajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trajectory>)))
  "Returns md5sum for a message object of type '<Trajectory>"
  "1bb05648bf98b981e26e4b22c2800b04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trajectory)))
  "Returns md5sum for a message object of type 'Trajectory"
  "1bb05648bf98b981e26e4b22c2800b04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trajectory>)))
  "Returns full string definition for message of type '<Trajectory>"
  (cl:format cl:nil "# Trajectory of VtdToRos~%~%float64 SimTim~%int32 decision_type~%int32 turn_light_type~%int32 num ~%TrajectoryPoint[] trajectorypoints~%~%================================================================================~%MSG: common_msgs/TrajectoryPoint~%# TrajectoryPoint of VtdToRos~%~%float32 Position_x   #道路点X向坐标~%float32 Position_y   #道路点Y向坐标~%float32 Velocity     #道路点合速度~%float32 Heading      #道路点朝向~%float32 Curvature    #路点曲率~%float32 t_space      #路点相对时间~%float32 s_along      #沿路线距离~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trajectory)))
  "Returns full string definition for message of type 'Trajectory"
  (cl:format cl:nil "# Trajectory of VtdToRos~%~%float64 SimTim~%int32 decision_type~%int32 turn_light_type~%int32 num ~%TrajectoryPoint[] trajectorypoints~%~%================================================================================~%MSG: common_msgs/TrajectoryPoint~%# TrajectoryPoint of VtdToRos~%~%float32 Position_x   #道路点X向坐标~%float32 Position_y   #道路点Y向坐标~%float32 Velocity     #道路点合速度~%float32 Heading      #道路点朝向~%float32 Curvature    #路点曲率~%float32 t_space      #路点相对时间~%float32 s_along      #沿路线距离~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trajectory>))
  (cl:+ 0
     8
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectorypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'Trajectory
    (cl:cons ':SimTim (SimTim msg))
    (cl:cons ':decision_type (decision_type msg))
    (cl:cons ':turn_light_type (turn_light_type msg))
    (cl:cons ':num (num msg))
    (cl:cons ':trajectorypoints (trajectorypoints msg))
))
