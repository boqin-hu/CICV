; Auto-generated. Do not edit!


(cl:in-package diag_msgs-msg)


;//! \htmlinclude FaultHmiVec.msg.html

(cl:defclass <FaultHmiVec> (roslisp-msg-protocol:ros-message)
  ((hmi_vec
    :reader hmi_vec
    :initarg :hmi_vec
    :type (cl:vector diag_msgs-msg:FaultHmi)
   :initform (cl:make-array 0 :element-type 'diag_msgs-msg:FaultHmi :initial-element (cl:make-instance 'diag_msgs-msg:FaultHmi))))
)

(cl:defclass FaultHmiVec (<FaultHmiVec>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaultHmiVec>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaultHmiVec)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diag_msgs-msg:<FaultHmiVec> is deprecated: use diag_msgs-msg:FaultHmiVec instead.")))

(cl:ensure-generic-function 'hmi_vec-val :lambda-list '(m))
(cl:defmethod hmi_vec-val ((m <FaultHmiVec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diag_msgs-msg:hmi_vec-val is deprecated.  Use diag_msgs-msg:hmi_vec instead.")
  (hmi_vec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaultHmiVec>) ostream)
  "Serializes a message object of type '<FaultHmiVec>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'hmi_vec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'hmi_vec))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaultHmiVec>) istream)
  "Deserializes a message object of type '<FaultHmiVec>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'hmi_vec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'hmi_vec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'diag_msgs-msg:FaultHmi))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaultHmiVec>)))
  "Returns string type for a message object of type '<FaultHmiVec>"
  "diag_msgs/FaultHmiVec")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaultHmiVec)))
  "Returns string type for a message object of type 'FaultHmiVec"
  "diag_msgs/FaultHmiVec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaultHmiVec>)))
  "Returns md5sum for a message object of type '<FaultHmiVec>"
  "da59b13fe1c36e593adbfb404b2845a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaultHmiVec)))
  "Returns md5sum for a message object of type 'FaultHmiVec"
  "da59b13fe1c36e593adbfb404b2845a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaultHmiVec>)))
  "Returns full string definition for message of type '<FaultHmiVec>"
  (cl:format cl:nil "FaultHmi[] 	hmi_vec~%~%================================================================================~%MSG: diag_msgs/FaultHmi~%float64   timestamp_sec~%int32     event_id~%int32     interactive~%int32     error_code~%string    msg~%int32     event_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaultHmiVec)))
  "Returns full string definition for message of type 'FaultHmiVec"
  (cl:format cl:nil "FaultHmi[] 	hmi_vec~%~%================================================================================~%MSG: diag_msgs/FaultHmi~%float64   timestamp_sec~%int32     event_id~%int32     interactive~%int32     error_code~%string    msg~%int32     event_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaultHmiVec>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hmi_vec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaultHmiVec>))
  "Converts a ROS message object to a list"
  (cl:list 'FaultHmiVec
    (cl:cons ':hmi_vec (hmi_vec msg))
))
