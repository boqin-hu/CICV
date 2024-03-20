; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude control_sys.msg.html

(cl:defclass <control_sys> (roslisp-msg-protocol:ros-message)
  ((lat_targetangle
    :reader lat_targetangle
    :initarg :lat_targetangle
    :type cl:float
    :initform 0.0)
   (lat_targettorque
    :reader lat_targettorque
    :initarg :lat_targettorque
    :type cl:float
    :initform 0.0)
   (vehicle_shiftposition
    :reader vehicle_shiftposition
    :initarg :vehicle_shiftposition
    :type cl:fixnum
    :initform 0)
   (vehicle_sys_status
    :reader vehicle_sys_status
    :initarg :vehicle_sys_status
    :type cl:fixnum
    :initform 0)
   (actuatormode
    :reader actuatormode
    :initarg :actuatormode
    :type cl:fixnum
    :initform 0)
   (shiftposition
    :reader shiftposition
    :initarg :shiftposition
    :type cl:fixnum
    :initform 0)
   (brakelight
    :reader brakelight
    :initarg :brakelight
    :type cl:fixnum
    :initform 0)
   (reverselight
    :reader reverselight
    :initarg :reverselight
    :type cl:fixnum
    :initform 0)
   (epb_status
    :reader epb_status
    :initarg :epb_status
    :type cl:fixnum
    :initform 0)
   (vehicle_auto_enable
    :reader vehicle_auto_enable
    :initarg :vehicle_auto_enable
    :type cl:boolean
    :initform cl:nil)
   (vehicle_lat_enable
    :reader vehicle_lat_enable
    :initarg :vehicle_lat_enable
    :type cl:boolean
    :initform cl:nil)
   (vehicle_lon_enable
    :reader vehicle_lon_enable
    :initarg :vehicle_lon_enable
    :type cl:boolean
    :initform cl:nil)
   (vehicle_epb_status
    :reader vehicle_epb_status
    :initarg :vehicle_epb_status
    :type cl:boolean
    :initform cl:nil)
   (road_vaild_flag
    :reader road_vaild_flag
    :initarg :road_vaild_flag
    :type cl:boolean
    :initform cl:nil)
   (calibration_flag
    :reader calibration_flag
    :initarg :calibration_flag
    :type cl:boolean
    :initform cl:nil)
   (write_enable_flag
    :reader write_enable_flag
    :initarg :write_enable_flag
    :type cl:boolean
    :initform cl:nil)
   (PowerFault
    :reader PowerFault
    :initarg :PowerFault
    :type cl:fixnum
    :initform 0)
   (ComFault
    :reader ComFault
    :initarg :ComFault
    :type cl:fixnum
    :initform 0)
   (USSFault
    :reader USSFault
    :initarg :USSFault
    :type cl:fixnum
    :initform 0)
   (ChassisFault
    :reader ChassisFault
    :initarg :ChassisFault
    :type cl:fixnum
    :initform 0))
)

(cl:defclass control_sys (<control_sys>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <control_sys>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'control_sys)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<control_sys> is deprecated: use control_msgs-msg:control_sys instead.")))

(cl:ensure-generic-function 'lat_targetangle-val :lambda-list '(m))
(cl:defmethod lat_targetangle-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:lat_targetangle-val is deprecated.  Use control_msgs-msg:lat_targetangle instead.")
  (lat_targetangle m))

(cl:ensure-generic-function 'lat_targettorque-val :lambda-list '(m))
(cl:defmethod lat_targettorque-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:lat_targettorque-val is deprecated.  Use control_msgs-msg:lat_targettorque instead.")
  (lat_targettorque m))

(cl:ensure-generic-function 'vehicle_shiftposition-val :lambda-list '(m))
(cl:defmethod vehicle_shiftposition-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:vehicle_shiftposition-val is deprecated.  Use control_msgs-msg:vehicle_shiftposition instead.")
  (vehicle_shiftposition m))

(cl:ensure-generic-function 'vehicle_sys_status-val :lambda-list '(m))
(cl:defmethod vehicle_sys_status-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:vehicle_sys_status-val is deprecated.  Use control_msgs-msg:vehicle_sys_status instead.")
  (vehicle_sys_status m))

(cl:ensure-generic-function 'actuatormode-val :lambda-list '(m))
(cl:defmethod actuatormode-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:actuatormode-val is deprecated.  Use control_msgs-msg:actuatormode instead.")
  (actuatormode m))

(cl:ensure-generic-function 'shiftposition-val :lambda-list '(m))
(cl:defmethod shiftposition-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:shiftposition-val is deprecated.  Use control_msgs-msg:shiftposition instead.")
  (shiftposition m))

(cl:ensure-generic-function 'brakelight-val :lambda-list '(m))
(cl:defmethod brakelight-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:brakelight-val is deprecated.  Use control_msgs-msg:brakelight instead.")
  (brakelight m))

(cl:ensure-generic-function 'reverselight-val :lambda-list '(m))
(cl:defmethod reverselight-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:reverselight-val is deprecated.  Use control_msgs-msg:reverselight instead.")
  (reverselight m))

(cl:ensure-generic-function 'epb_status-val :lambda-list '(m))
(cl:defmethod epb_status-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:epb_status-val is deprecated.  Use control_msgs-msg:epb_status instead.")
  (epb_status m))

(cl:ensure-generic-function 'vehicle_auto_enable-val :lambda-list '(m))
(cl:defmethod vehicle_auto_enable-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:vehicle_auto_enable-val is deprecated.  Use control_msgs-msg:vehicle_auto_enable instead.")
  (vehicle_auto_enable m))

(cl:ensure-generic-function 'vehicle_lat_enable-val :lambda-list '(m))
(cl:defmethod vehicle_lat_enable-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:vehicle_lat_enable-val is deprecated.  Use control_msgs-msg:vehicle_lat_enable instead.")
  (vehicle_lat_enable m))

(cl:ensure-generic-function 'vehicle_lon_enable-val :lambda-list '(m))
(cl:defmethod vehicle_lon_enable-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:vehicle_lon_enable-val is deprecated.  Use control_msgs-msg:vehicle_lon_enable instead.")
  (vehicle_lon_enable m))

(cl:ensure-generic-function 'vehicle_epb_status-val :lambda-list '(m))
(cl:defmethod vehicle_epb_status-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:vehicle_epb_status-val is deprecated.  Use control_msgs-msg:vehicle_epb_status instead.")
  (vehicle_epb_status m))

(cl:ensure-generic-function 'road_vaild_flag-val :lambda-list '(m))
(cl:defmethod road_vaild_flag-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:road_vaild_flag-val is deprecated.  Use control_msgs-msg:road_vaild_flag instead.")
  (road_vaild_flag m))

(cl:ensure-generic-function 'calibration_flag-val :lambda-list '(m))
(cl:defmethod calibration_flag-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:calibration_flag-val is deprecated.  Use control_msgs-msg:calibration_flag instead.")
  (calibration_flag m))

(cl:ensure-generic-function 'write_enable_flag-val :lambda-list '(m))
(cl:defmethod write_enable_flag-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:write_enable_flag-val is deprecated.  Use control_msgs-msg:write_enable_flag instead.")
  (write_enable_flag m))

(cl:ensure-generic-function 'PowerFault-val :lambda-list '(m))
(cl:defmethod PowerFault-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:PowerFault-val is deprecated.  Use control_msgs-msg:PowerFault instead.")
  (PowerFault m))

(cl:ensure-generic-function 'ComFault-val :lambda-list '(m))
(cl:defmethod ComFault-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:ComFault-val is deprecated.  Use control_msgs-msg:ComFault instead.")
  (ComFault m))

(cl:ensure-generic-function 'USSFault-val :lambda-list '(m))
(cl:defmethod USSFault-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:USSFault-val is deprecated.  Use control_msgs-msg:USSFault instead.")
  (USSFault m))

(cl:ensure-generic-function 'ChassisFault-val :lambda-list '(m))
(cl:defmethod ChassisFault-val ((m <control_sys>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:ChassisFault-val is deprecated.  Use control_msgs-msg:ChassisFault instead.")
  (ChassisFault m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <control_sys>) ostream)
  "Serializes a message object of type '<control_sys>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat_targetangle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat_targettorque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'vehicle_shiftposition)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vehicle_sys_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'actuatormode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'shiftposition)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'brakelight)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reverselight)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'epb_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_auto_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_lat_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_lon_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_epb_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'road_vaild_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'calibration_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'write_enable_flag) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'PowerFault)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ComFault)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'USSFault)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ChassisFault)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <control_sys>) istream)
  "Deserializes a message object of type '<control_sys>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_targetangle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_targettorque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicle_shiftposition) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicle_sys_status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actuatormode) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shiftposition) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'brakelight) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reverselight) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'epb_status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'vehicle_auto_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vehicle_lat_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vehicle_lon_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vehicle_epb_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'road_vaild_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'calibration_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'write_enable_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'PowerFault) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ComFault) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'USSFault) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ChassisFault) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<control_sys>)))
  "Returns string type for a message object of type '<control_sys>"
  "control_msgs/control_sys")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'control_sys)))
  "Returns string type for a message object of type 'control_sys"
  "control_msgs/control_sys")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<control_sys>)))
  "Returns md5sum for a message object of type '<control_sys>"
  "d52a3c865eee57fb22d3fe059b3266b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'control_sys)))
  "Returns md5sum for a message object of type 'control_sys"
  "d52a3c865eee57fb22d3fe059b3266b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<control_sys>)))
  "Returns full string definition for message of type '<control_sys>"
  (cl:format cl:nil "float32   lat_targetangle~%float32   lat_targettorque~%int16     vehicle_shiftposition~%int16     vehicle_sys_status~%int16     actuatormode~%int16     shiftposition~%int16     brakelight~%int16     reverselight~%int16     epb_status~%bool      vehicle_auto_enable~%bool      vehicle_lat_enable~%bool      vehicle_lon_enable~%bool      vehicle_epb_status~%bool      road_vaild_flag~%bool      calibration_flag~%bool      write_enable_flag~%int16     PowerFault~%int16     ComFault~%int16     USSFault~%int16     ChassisFault~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'control_sys)))
  "Returns full string definition for message of type 'control_sys"
  (cl:format cl:nil "float32   lat_targetangle~%float32   lat_targettorque~%int16     vehicle_shiftposition~%int16     vehicle_sys_status~%int16     actuatormode~%int16     shiftposition~%int16     brakelight~%int16     reverselight~%int16     epb_status~%bool      vehicle_auto_enable~%bool      vehicle_lat_enable~%bool      vehicle_lon_enable~%bool      vehicle_epb_status~%bool      road_vaild_flag~%bool      calibration_flag~%bool      write_enable_flag~%int16     PowerFault~%int16     ComFault~%int16     USSFault~%int16     ChassisFault~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <control_sys>))
  (cl:+ 0
     4
     4
     2
     2
     2
     2
     2
     2
     2
     1
     1
     1
     1
     1
     1
     1
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <control_sys>))
  "Converts a ROS message object to a list"
  (cl:list 'control_sys
    (cl:cons ':lat_targetangle (lat_targetangle msg))
    (cl:cons ':lat_targettorque (lat_targettorque msg))
    (cl:cons ':vehicle_shiftposition (vehicle_shiftposition msg))
    (cl:cons ':vehicle_sys_status (vehicle_sys_status msg))
    (cl:cons ':actuatormode (actuatormode msg))
    (cl:cons ':shiftposition (shiftposition msg))
    (cl:cons ':brakelight (brakelight msg))
    (cl:cons ':reverselight (reverselight msg))
    (cl:cons ':epb_status (epb_status msg))
    (cl:cons ':vehicle_auto_enable (vehicle_auto_enable msg))
    (cl:cons ':vehicle_lat_enable (vehicle_lat_enable msg))
    (cl:cons ':vehicle_lon_enable (vehicle_lon_enable msg))
    (cl:cons ':vehicle_epb_status (vehicle_epb_status msg))
    (cl:cons ':road_vaild_flag (road_vaild_flag msg))
    (cl:cons ':calibration_flag (calibration_flag msg))
    (cl:cons ':write_enable_flag (write_enable_flag msg))
    (cl:cons ':PowerFault (PowerFault msg))
    (cl:cons ':ComFault (ComFault msg))
    (cl:cons ':USSFault (USSFault msg))
    (cl:cons ':ChassisFault (ChassisFault msg))
))
