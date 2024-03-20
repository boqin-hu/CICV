; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude CtrlTest.msg.html

(cl:defclass <CtrlTest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (accPedal
    :reader accPedal
    :initarg :accPedal
    :type cl:float
    :initform 0.0)
   (braPedal
    :reader braPedal
    :initarg :braPedal
    :type cl:float
    :initform 0.0)
   (strAngle
    :reader strAngle
    :initarg :strAngle
    :type cl:float
    :initform 0.0)
   (strAnglespd
    :reader strAnglespd
    :initarg :strAnglespd
    :type cl:float
    :initform 0.0))
)

(cl:defclass CtrlTest (<CtrlTest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CtrlTest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CtrlTest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<CtrlTest> is deprecated: use perception_msgs-msg:CtrlTest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CtrlTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'accPedal-val :lambda-list '(m))
(cl:defmethod accPedal-val ((m <CtrlTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:accPedal-val is deprecated.  Use perception_msgs-msg:accPedal instead.")
  (accPedal m))

(cl:ensure-generic-function 'braPedal-val :lambda-list '(m))
(cl:defmethod braPedal-val ((m <CtrlTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:braPedal-val is deprecated.  Use perception_msgs-msg:braPedal instead.")
  (braPedal m))

(cl:ensure-generic-function 'strAngle-val :lambda-list '(m))
(cl:defmethod strAngle-val ((m <CtrlTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:strAngle-val is deprecated.  Use perception_msgs-msg:strAngle instead.")
  (strAngle m))

(cl:ensure-generic-function 'strAnglespd-val :lambda-list '(m))
(cl:defmethod strAnglespd-val ((m <CtrlTest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:strAnglespd-val is deprecated.  Use perception_msgs-msg:strAnglespd instead.")
  (strAnglespd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CtrlTest>) ostream)
  "Serializes a message object of type '<CtrlTest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'accPedal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'braPedal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'strAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'strAnglespd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CtrlTest>) istream)
  "Deserializes a message object of type '<CtrlTest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accPedal) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'braPedal) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'strAngle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'strAnglespd) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CtrlTest>)))
  "Returns string type for a message object of type '<CtrlTest>"
  "perception_msgs/CtrlTest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CtrlTest)))
  "Returns string type for a message object of type 'CtrlTest"
  "perception_msgs/CtrlTest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CtrlTest>)))
  "Returns md5sum for a message object of type '<CtrlTest>"
  "f1c1085caf4973c0b458fcd0b971fc2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CtrlTest)))
  "Returns md5sum for a message object of type 'CtrlTest"
  "f1c1085caf4973c0b458fcd0b971fc2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CtrlTest>)))
  "Returns full string definition for message of type '<CtrlTest>"
  (cl:format cl:nil "Header header~%~%float64 accPedal            # 加速踏板开度~%float64 braPedal            # 制动踏板开度~%float64 strAngle            # 方向盘转角~%float64 strAnglespd         # 方向盘转角变化率~%#float64 strAnglelimit        # 方向盘转角限制~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CtrlTest)))
  "Returns full string definition for message of type 'CtrlTest"
  (cl:format cl:nil "Header header~%~%float64 accPedal            # 加速踏板开度~%float64 braPedal            # 制动踏板开度~%float64 strAngle            # 方向盘转角~%float64 strAnglespd         # 方向盘转角变化率~%#float64 strAnglelimit        # 方向盘转角限制~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CtrlTest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CtrlTest>))
  "Converts a ROS message object to a list"
  (cl:list 'CtrlTest
    (cl:cons ':header (header msg))
    (cl:cons ':accPedal (accPedal msg))
    (cl:cons ':braPedal (braPedal msg))
    (cl:cons ':strAngle (strAngle msg))
    (cl:cons ':strAnglespd (strAnglespd msg))
))
