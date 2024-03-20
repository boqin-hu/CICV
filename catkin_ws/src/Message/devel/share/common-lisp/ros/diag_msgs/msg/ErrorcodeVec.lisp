; Auto-generated. Do not edit!


(cl:in-package diag_msgs-msg)


;//! \htmlinclude ErrorcodeVec.msg.html

(cl:defclass <ErrorcodeVec> (roslisp-msg-protocol:ros-message)
  ((error_vec
    :reader error_vec
    :initarg :error_vec
    :type (cl:vector diag_msgs-msg:ErrorcodeInfo)
   :initform (cl:make-array 0 :element-type 'diag_msgs-msg:ErrorcodeInfo :initial-element (cl:make-instance 'diag_msgs-msg:ErrorcodeInfo)))
   (interactive
    :reader interactive
    :initarg :interactive
    :type cl:integer
    :initform 0))
)

(cl:defclass ErrorcodeVec (<ErrorcodeVec>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ErrorcodeVec>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ErrorcodeVec)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diag_msgs-msg:<ErrorcodeVec> is deprecated: use diag_msgs-msg:ErrorcodeVec instead.")))

(cl:ensure-generic-function 'error_vec-val :lambda-list '(m))
(cl:defmethod error_vec-val ((m <ErrorcodeVec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diag_msgs-msg:error_vec-val is deprecated.  Use diag_msgs-msg:error_vec instead.")
  (error_vec m))

(cl:ensure-generic-function 'interactive-val :lambda-list '(m))
(cl:defmethod interactive-val ((m <ErrorcodeVec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diag_msgs-msg:interactive-val is deprecated.  Use diag_msgs-msg:interactive instead.")
  (interactive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ErrorcodeVec>) ostream)
  "Serializes a message object of type '<ErrorcodeVec>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'error_vec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'error_vec))
  (cl:let* ((signed (cl:slot-value msg 'interactive)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ErrorcodeVec>) istream)
  "Deserializes a message object of type '<ErrorcodeVec>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'error_vec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'error_vec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'diag_msgs-msg:ErrorcodeInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'interactive) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ErrorcodeVec>)))
  "Returns string type for a message object of type '<ErrorcodeVec>"
  "diag_msgs/ErrorcodeVec")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ErrorcodeVec)))
  "Returns string type for a message object of type 'ErrorcodeVec"
  "diag_msgs/ErrorcodeVec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ErrorcodeVec>)))
  "Returns md5sum for a message object of type '<ErrorcodeVec>"
  "6d652d5f9dc7c3fdadce9102b2c47862")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ErrorcodeVec)))
  "Returns md5sum for a message object of type 'ErrorcodeVec"
  "6d652d5f9dc7c3fdadce9102b2c47862")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ErrorcodeVec>)))
  "Returns full string definition for message of type '<ErrorcodeVec>"
  (cl:format cl:nil "ErrorcodeInfo[] 	error_vec~%int32     interactive~%~%================================================================================~%MSG: diag_msgs/ErrorcodeInfo~%int32     error_code~%int32     error_level~%int32     error_level_hmi~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ErrorcodeVec)))
  "Returns full string definition for message of type 'ErrorcodeVec"
  (cl:format cl:nil "ErrorcodeInfo[] 	error_vec~%int32     interactive~%~%================================================================================~%MSG: diag_msgs/ErrorcodeInfo~%int32     error_code~%int32     error_level~%int32     error_level_hmi~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ErrorcodeVec>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'error_vec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ErrorcodeVec>))
  "Converts a ROS message object to a list"
  (cl:list 'ErrorcodeVec
    (cl:cons ':error_vec (error_vec msg))
    (cl:cons ':interactive (interactive msg))
))
