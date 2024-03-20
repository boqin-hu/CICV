; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude Pose.msg.html

(cl:defclass <Pose> (roslisp-msg-protocol:ros-message)
  ((pose_euler
    :reader pose_euler
    :initarg :pose_euler
    :type common_msgs-msg:PoseEuler
    :initform (cl:make-instance 'common_msgs-msg:PoseEuler))
   (pose_quaternion
    :reader pose_quaternion
    :initarg :pose_quaternion
    :type common_msgs-msg:PoseQuaternion
    :initform (cl:make-instance 'common_msgs-msg:PoseQuaternion))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Pose (<Pose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<Pose> is deprecated: use common_msgs-msg:Pose instead.")))

(cl:ensure-generic-function 'pose_euler-val :lambda-list '(m))
(cl:defmethod pose_euler-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:pose_euler-val is deprecated.  Use common_msgs-msg:pose_euler instead.")
  (pose_euler m))

(cl:ensure-generic-function 'pose_quaternion-val :lambda-list '(m))
(cl:defmethod pose_quaternion-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:pose_quaternion-val is deprecated.  Use common_msgs-msg:pose_quaternion instead.")
  (pose_quaternion m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:status-val is deprecated.  Use common_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pose>) ostream)
  "Serializes a message object of type '<Pose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_euler) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_quaternion) ostream)
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pose>) istream)
  "Deserializes a message object of type '<Pose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_euler) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_quaternion) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pose>)))
  "Returns string type for a message object of type '<Pose>"
  "common_msgs/Pose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pose)))
  "Returns string type for a message object of type 'Pose"
  "common_msgs/Pose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pose>)))
  "Returns md5sum for a message object of type '<Pose>"
  "184ff128e0b5b9ac5cd314f5034d86b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pose)))
  "Returns md5sum for a message object of type 'Pose"
  "184ff128e0b5b9ac5cd314f5034d86b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pose>)))
  "Returns full string definition for message of type '<Pose>"
  (cl:format cl:nil "PoseEuler  	pose_euler~%PoseQuaternion 	pose_quaternion~%int8  	status   # 0-normal  1-error~%================================================================================~%MSG: common_msgs/PoseEuler~%Vector3WithCovariance 	position~%EulerWithCovariance 	rotation~%================================================================================~%MSG: common_msgs/Vector3WithCovariance~%UnsureVar 	x~%UnsureVar 	y~%UnsureVar 	z~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%================================================================================~%MSG: common_msgs/EulerWithCovariance~%UnsureVar 	roll~%UnsureVar 	pitch~%UnsureVar 	yaw~%================================================================================~%MSG: common_msgs/PoseQuaternion~%Vector3WithCovariance 	position~%Quaternion 	quaternion~%Vector3  rpy_covariance	~%================================================================================~%MSG: common_msgs/Quaternion~%float64 	x~%float64 	y~%float64 	z~%float64 	w~%================================================================================~%MSG: common_msgs/Vector3~%float64 	x~%float64 	y~%float64 	z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pose)))
  "Returns full string definition for message of type 'Pose"
  (cl:format cl:nil "PoseEuler  	pose_euler~%PoseQuaternion 	pose_quaternion~%int8  	status   # 0-normal  1-error~%================================================================================~%MSG: common_msgs/PoseEuler~%Vector3WithCovariance 	position~%EulerWithCovariance 	rotation~%================================================================================~%MSG: common_msgs/Vector3WithCovariance~%UnsureVar 	x~%UnsureVar 	y~%UnsureVar 	z~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%================================================================================~%MSG: common_msgs/EulerWithCovariance~%UnsureVar 	roll~%UnsureVar 	pitch~%UnsureVar 	yaw~%================================================================================~%MSG: common_msgs/PoseQuaternion~%Vector3WithCovariance 	position~%Quaternion 	quaternion~%Vector3  rpy_covariance	~%================================================================================~%MSG: common_msgs/Quaternion~%float64 	x~%float64 	y~%float64 	z~%float64 	w~%================================================================================~%MSG: common_msgs/Vector3~%float64 	x~%float64 	y~%float64 	z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_euler))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_quaternion))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pose>))
  "Converts a ROS message object to a list"
  (cl:list 'Pose
    (cl:cons ':pose_euler (pose_euler msg))
    (cl:cons ':pose_quaternion (pose_quaternion msg))
    (cl:cons ':status (status msg))
))
