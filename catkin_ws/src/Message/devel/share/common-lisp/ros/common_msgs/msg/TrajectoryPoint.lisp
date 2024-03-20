; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude TrajectoryPoint.msg.html

(cl:defclass <TrajectoryPoint> (roslisp-msg-protocol:ros-message)
  ((Position_x
    :reader Position_x
    :initarg :Position_x
    :type cl:float
    :initform 0.0)
   (Position_y
    :reader Position_y
    :initarg :Position_y
    :type cl:float
    :initform 0.0)
   (Velocity
    :reader Velocity
    :initarg :Velocity
    :type cl:float
    :initform 0.0)
   (Heading
    :reader Heading
    :initarg :Heading
    :type cl:float
    :initform 0.0)
   (Curvature
    :reader Curvature
    :initarg :Curvature
    :type cl:float
    :initform 0.0)
   (t_space
    :reader t_space
    :initarg :t_space
    :type cl:float
    :initform 0.0)
   (s_along
    :reader s_along
    :initarg :s_along
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrajectoryPoint (<TrajectoryPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<TrajectoryPoint> is deprecated: use common_msgs-msg:TrajectoryPoint instead.")))

(cl:ensure-generic-function 'Position_x-val :lambda-list '(m))
(cl:defmethod Position_x-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Position_x-val is deprecated.  Use common_msgs-msg:Position_x instead.")
  (Position_x m))

(cl:ensure-generic-function 'Position_y-val :lambda-list '(m))
(cl:defmethod Position_y-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Position_y-val is deprecated.  Use common_msgs-msg:Position_y instead.")
  (Position_y m))

(cl:ensure-generic-function 'Velocity-val :lambda-list '(m))
(cl:defmethod Velocity-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Velocity-val is deprecated.  Use common_msgs-msg:Velocity instead.")
  (Velocity m))

(cl:ensure-generic-function 'Heading-val :lambda-list '(m))
(cl:defmethod Heading-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Heading-val is deprecated.  Use common_msgs-msg:Heading instead.")
  (Heading m))

(cl:ensure-generic-function 'Curvature-val :lambda-list '(m))
(cl:defmethod Curvature-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:Curvature-val is deprecated.  Use common_msgs-msg:Curvature instead.")
  (Curvature m))

(cl:ensure-generic-function 't_space-val :lambda-list '(m))
(cl:defmethod t_space-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:t_space-val is deprecated.  Use common_msgs-msg:t_space instead.")
  (t_space m))

(cl:ensure-generic-function 's_along-val :lambda-list '(m))
(cl:defmethod s_along-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:s_along-val is deprecated.  Use common_msgs-msg:s_along instead.")
  (s_along m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryPoint>) ostream)
  "Serializes a message object of type '<TrajectoryPoint>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Position_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Position_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Curvature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 't_space))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 's_along))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryPoint>) istream)
  "Deserializes a message object of type '<TrajectoryPoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Position_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Position_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Curvature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't_space) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's_along) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryPoint>)))
  "Returns string type for a message object of type '<TrajectoryPoint>"
  "common_msgs/TrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryPoint)))
  "Returns string type for a message object of type 'TrajectoryPoint"
  "common_msgs/TrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryPoint>)))
  "Returns md5sum for a message object of type '<TrajectoryPoint>"
  "f8af69cf1a28e5c716644308c9ae4e7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryPoint)))
  "Returns md5sum for a message object of type 'TrajectoryPoint"
  "f8af69cf1a28e5c716644308c9ae4e7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryPoint>)))
  "Returns full string definition for message of type '<TrajectoryPoint>"
  (cl:format cl:nil "# TrajectoryPoint of VtdToRos~%~%float32 Position_x   #道路点X向坐标~%float32 Position_y   #道路点Y向坐标~%float32 Velocity     #道路点合速度~%float32 Heading      #道路点朝向~%float32 Curvature    #路点曲率~%float32 t_space      #路点相对时间~%float32 s_along      #沿路线距离~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryPoint)))
  "Returns full string definition for message of type 'TrajectoryPoint"
  (cl:format cl:nil "# TrajectoryPoint of VtdToRos~%~%float32 Position_x   #道路点X向坐标~%float32 Position_y   #道路点Y向坐标~%float32 Velocity     #道路点合速度~%float32 Heading      #道路点朝向~%float32 Curvature    #路点曲率~%float32 t_space      #路点相对时间~%float32 s_along      #沿路线距离~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryPoint>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryPoint
    (cl:cons ':Position_x (Position_x msg))
    (cl:cons ':Position_y (Position_y msg))
    (cl:cons ':Velocity (Velocity msg))
    (cl:cons ':Heading (Heading msg))
    (cl:cons ':Curvature (Curvature msg))
    (cl:cons ':t_space (t_space msg))
    (cl:cons ':s_along (s_along msg))
))
