; Auto-generated. Do not edit!


(cl:in-package navi_msgs-msg)


;//! \htmlinclude NaviTaskStatus.msg.html

(cl:defclass <NaviTaskStatus> (roslisp-msg-protocol:ros-message)
  ((v_header
    :reader v_header
    :initarg :v_header
    :type navi_msgs-msg:VehHeader
    :initform (cl:make-instance 'navi_msgs-msg:VehHeader))
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass NaviTaskStatus (<NaviTaskStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NaviTaskStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NaviTaskStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navi_msgs-msg:<NaviTaskStatus> is deprecated: use navi_msgs-msg:NaviTaskStatus instead.")))

(cl:ensure-generic-function 'v_header-val :lambda-list '(m))
(cl:defmethod v_header-val ((m <NaviTaskStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:v_header-val is deprecated.  Use navi_msgs-msg:v_header instead.")
  (v_header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <NaviTaskStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:status-val is deprecated.  Use navi_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NaviTaskStatus>) ostream)
  "Serializes a message object of type '<NaviTaskStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v_header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NaviTaskStatus>) istream)
  "Deserializes a message object of type '<NaviTaskStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v_header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NaviTaskStatus>)))
  "Returns string type for a message object of type '<NaviTaskStatus>"
  "navi_msgs/NaviTaskStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NaviTaskStatus)))
  "Returns string type for a message object of type 'NaviTaskStatus"
  "navi_msgs/NaviTaskStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NaviTaskStatus>)))
  "Returns md5sum for a message object of type '<NaviTaskStatus>"
  "385f807662e68b44b2d006b0602e2751")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NaviTaskStatus)))
  "Returns md5sum for a message object of type 'NaviTaskStatus"
  "385f807662e68b44b2d006b0602e2751")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NaviTaskStatus>)))
  "Returns full string definition for message of type '<NaviTaskStatus>"
  (cl:format cl:nil "VehHeader v_header~%int32 status	 ~%~%================================================================================~%MSG: navi_msgs/VehHeader~%uint16 veh_id~%TimeStamp time~%================================================================================~%MSG: navi_msgs/TimeStamp~%uint64 s~%uint64 ns~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NaviTaskStatus)))
  "Returns full string definition for message of type 'NaviTaskStatus"
  (cl:format cl:nil "VehHeader v_header~%int32 status	 ~%~%================================================================================~%MSG: navi_msgs/VehHeader~%uint16 veh_id~%TimeStamp time~%================================================================================~%MSG: navi_msgs/TimeStamp~%uint64 s~%uint64 ns~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NaviTaskStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v_header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NaviTaskStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NaviTaskStatus
    (cl:cons ':v_header (v_header msg))
    (cl:cons ':status (status msg))
))
