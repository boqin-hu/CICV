; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude LidarCalibrationResult.msg.html

(cl:defclass <LidarCalibrationResult> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type common_msgs-msg:PoseEuler
    :initform (cl:make-instance 'common_msgs-msg:PoseEuler))
   (result
    :reader result
    :initarg :result
    :type common_msgs-msg:CalibrationResult
    :initform (cl:make-instance 'common_msgs-msg:CalibrationResult)))
)

(cl:defclass LidarCalibrationResult (<LidarCalibrationResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarCalibrationResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarCalibrationResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<LidarCalibrationResult> is deprecated: use common_msgs-msg:LidarCalibrationResult instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <LidarCalibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:pose-val is deprecated.  Use common_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <LidarCalibrationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:result-val is deprecated.  Use common_msgs-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarCalibrationResult>) ostream)
  "Serializes a message object of type '<LidarCalibrationResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarCalibrationResult>) istream)
  "Deserializes a message object of type '<LidarCalibrationResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarCalibrationResult>)))
  "Returns string type for a message object of type '<LidarCalibrationResult>"
  "common_msgs/LidarCalibrationResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarCalibrationResult)))
  "Returns string type for a message object of type 'LidarCalibrationResult"
  "common_msgs/LidarCalibrationResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarCalibrationResult>)))
  "Returns md5sum for a message object of type '<LidarCalibrationResult>"
  "cc71203314fcc658fa8b4d2918277dff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarCalibrationResult)))
  "Returns md5sum for a message object of type 'LidarCalibrationResult"
  "cc71203314fcc658fa8b4d2918277dff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarCalibrationResult>)))
  "Returns full string definition for message of type '<LidarCalibrationResult>"
  (cl:format cl:nil "PoseEuler pose~%CalibrationResult result~%~%================================================================================~%MSG: common_msgs/PoseEuler~%Vector3WithCovariance 	position~%EulerWithCovariance 	rotation~%================================================================================~%MSG: common_msgs/Vector3WithCovariance~%UnsureVar 	x~%UnsureVar 	y~%UnsureVar 	z~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%================================================================================~%MSG: common_msgs/EulerWithCovariance~%UnsureVar 	roll~%UnsureVar 	pitch~%UnsureVar 	yaw~%================================================================================~%MSG: common_msgs/CalibrationResult~%float64  timestamp_sec~%string 	module_name~%string 	version~%string 	info~%int8 	status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarCalibrationResult)))
  "Returns full string definition for message of type 'LidarCalibrationResult"
  (cl:format cl:nil "PoseEuler pose~%CalibrationResult result~%~%================================================================================~%MSG: common_msgs/PoseEuler~%Vector3WithCovariance 	position~%EulerWithCovariance 	rotation~%================================================================================~%MSG: common_msgs/Vector3WithCovariance~%UnsureVar 	x~%UnsureVar 	y~%UnsureVar 	z~%================================================================================~%MSG: common_msgs/UnsureVar~%float64 	variable~%float64 	var_std~%================================================================================~%MSG: common_msgs/EulerWithCovariance~%UnsureVar 	roll~%UnsureVar 	pitch~%UnsureVar 	yaw~%================================================================================~%MSG: common_msgs/CalibrationResult~%float64  timestamp_sec~%string 	module_name~%string 	version~%string 	info~%int8 	status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarCalibrationResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarCalibrationResult>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarCalibrationResult
    (cl:cons ':pose (pose msg))
    (cl:cons ':result (result msg))
))
