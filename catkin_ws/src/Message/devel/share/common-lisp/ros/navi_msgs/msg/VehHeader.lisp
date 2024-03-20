; Auto-generated. Do not edit!


(cl:in-package navi_msgs-msg)


;//! \htmlinclude VehHeader.msg.html

(cl:defclass <VehHeader> (roslisp-msg-protocol:ros-message)
  ((veh_id
    :reader veh_id
    :initarg :veh_id
    :type cl:fixnum
    :initform 0)
   (time
    :reader time
    :initarg :time
    :type navi_msgs-msg:TimeStamp
    :initform (cl:make-instance 'navi_msgs-msg:TimeStamp)))
)

(cl:defclass VehHeader (<VehHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navi_msgs-msg:<VehHeader> is deprecated: use navi_msgs-msg:VehHeader instead.")))

(cl:ensure-generic-function 'veh_id-val :lambda-list '(m))
(cl:defmethod veh_id-val ((m <VehHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:veh_id-val is deprecated.  Use navi_msgs-msg:veh_id instead.")
  (veh_id m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <VehHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:time-val is deprecated.  Use navi_msgs-msg:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehHeader>) ostream)
  "Serializes a message object of type '<VehHeader>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'veh_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'veh_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'time) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehHeader>) istream)
  "Deserializes a message object of type '<VehHeader>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'veh_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'veh_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'time) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehHeader>)))
  "Returns string type for a message object of type '<VehHeader>"
  "navi_msgs/VehHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehHeader)))
  "Returns string type for a message object of type 'VehHeader"
  "navi_msgs/VehHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehHeader>)))
  "Returns md5sum for a message object of type '<VehHeader>"
  "ef86fbe4272401883141e6e6554bd992")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehHeader)))
  "Returns md5sum for a message object of type 'VehHeader"
  "ef86fbe4272401883141e6e6554bd992")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehHeader>)))
  "Returns full string definition for message of type '<VehHeader>"
  (cl:format cl:nil "uint16 veh_id~%TimeStamp time~%================================================================================~%MSG: navi_msgs/TimeStamp~%uint64 s~%uint64 ns~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehHeader)))
  "Returns full string definition for message of type 'VehHeader"
  (cl:format cl:nil "uint16 veh_id~%TimeStamp time~%================================================================================~%MSG: navi_msgs/TimeStamp~%uint64 s~%uint64 ns~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehHeader>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'VehHeader
    (cl:cons ':veh_id (veh_id msg))
    (cl:cons ':time (time msg))
))
