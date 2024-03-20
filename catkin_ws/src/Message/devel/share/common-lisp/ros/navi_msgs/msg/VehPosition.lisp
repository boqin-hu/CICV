; Auto-generated. Do not edit!


(cl:in-package navi_msgs-msg)


;//! \htmlinclude VehPosition.msg.html

(cl:defclass <VehPosition> (roslisp-msg-protocol:ros-message)
  ((v_header
    :reader v_header
    :initarg :v_header
    :type navi_msgs-msg:VehHeader
    :initform (cl:make-instance 'navi_msgs-msg:VehHeader))
   (position
    :reader position
    :initarg :position
    :type navi_msgs-msg:Point2D
    :initform (cl:make-instance 'navi_msgs-msg:Point2D)))
)

(cl:defclass VehPosition (<VehPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navi_msgs-msg:<VehPosition> is deprecated: use navi_msgs-msg:VehPosition instead.")))

(cl:ensure-generic-function 'v_header-val :lambda-list '(m))
(cl:defmethod v_header-val ((m <VehPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:v_header-val is deprecated.  Use navi_msgs-msg:v_header instead.")
  (v_header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <VehPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navi_msgs-msg:position-val is deprecated.  Use navi_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehPosition>) ostream)
  "Serializes a message object of type '<VehPosition>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v_header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehPosition>) istream)
  "Deserializes a message object of type '<VehPosition>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v_header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehPosition>)))
  "Returns string type for a message object of type '<VehPosition>"
  "navi_msgs/VehPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehPosition)))
  "Returns string type for a message object of type 'VehPosition"
  "navi_msgs/VehPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehPosition>)))
  "Returns md5sum for a message object of type '<VehPosition>"
  "1724989aafc3320d6e07dd9b646ee451")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehPosition)))
  "Returns md5sum for a message object of type 'VehPosition"
  "1724989aafc3320d6e07dd9b646ee451")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehPosition>)))
  "Returns full string definition for message of type '<VehPosition>"
  (cl:format cl:nil "VehHeader v_header~%Point2D position~%================================================================================~%MSG: navi_msgs/VehHeader~%uint16 veh_id~%TimeStamp time~%================================================================================~%MSG: navi_msgs/TimeStamp~%uint64 s~%uint64 ns~%================================================================================~%MSG: navi_msgs/Point2D~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehPosition)))
  "Returns full string definition for message of type 'VehPosition"
  (cl:format cl:nil "VehHeader v_header~%Point2D position~%================================================================================~%MSG: navi_msgs/VehHeader~%uint16 veh_id~%TimeStamp time~%================================================================================~%MSG: navi_msgs/TimeStamp~%uint64 s~%uint64 ns~%================================================================================~%MSG: navi_msgs/Point2D~%float64 x~%float64 y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehPosition>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v_header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'VehPosition
    (cl:cons ':v_header (v_header msg))
    (cl:cons ':position (position msg))
))
