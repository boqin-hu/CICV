; Auto-generated. Do not edit!


(cl:in-package lidar_msgs-msg)


;//! \htmlinclude DetectedObject.msg.html

(cl:defclass <DetectedObject> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (tracked_pose
    :reader tracked_pose
    :initarg :tracked_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (output_pose
    :reader output_pose
    :initarg :output_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (dimensions
    :reader dimensions
    :initarg :dimensions
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (behavior_state
    :reader behavior_state
    :initarg :behavior_state
    :type cl:fixnum
    :initform 0)
   (age
    :reader age
    :initarg :age
    :type cl:integer
    :initform 0)
   (velocitystatus
    :reader velocitystatus
    :initarg :velocitystatus
    :type cl:fixnum
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (pointcloud
    :reader pointcloud
    :initarg :pointcloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (cells
    :reader cells
    :initarg :cells
    :type (cl:vector perception_msgs-msg:ObstacleCell)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:ObstacleCell :initial-element (cl:make-instance 'perception_msgs-msg:ObstacleCell)))
   (convex_hull
    :reader convex_hull
    :initarg :convex_hull
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped))
   (pose_reliable
    :reader pose_reliable
    :initarg :pose_reliable
    :type cl:boolean
    :initform cl:nil)
   (velocity_reliable
    :reader velocity_reliable
    :initarg :velocity_reliable
    :type cl:boolean
    :initform cl:nil)
   (acceleration_reliable
    :reader acceleration_reliable
    :initarg :acceleration_reliable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DetectedObject (<DetectedObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidar_msgs-msg:<DetectedObject> is deprecated: use lidar_msgs-msg:DetectedObject instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:header-val is deprecated.  Use lidar_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:id-val is deprecated.  Use lidar_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:label-val is deprecated.  Use lidar_msgs-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:type-val is deprecated.  Use lidar_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:score-val is deprecated.  Use lidar_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:color-val is deprecated.  Use lidar_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:valid-val is deprecated.  Use lidar_msgs-msg:valid instead.")
  (valid m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:pose-val is deprecated.  Use lidar_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'tracked_pose-val :lambda-list '(m))
(cl:defmethod tracked_pose-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:tracked_pose-val is deprecated.  Use lidar_msgs-msg:tracked_pose instead.")
  (tracked_pose m))

(cl:ensure-generic-function 'output_pose-val :lambda-list '(m))
(cl:defmethod output_pose-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:output_pose-val is deprecated.  Use lidar_msgs-msg:output_pose instead.")
  (output_pose m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:yaw-val is deprecated.  Use lidar_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'dimensions-val :lambda-list '(m))
(cl:defmethod dimensions-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:dimensions-val is deprecated.  Use lidar_msgs-msg:dimensions instead.")
  (dimensions m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:velocity-val is deprecated.  Use lidar_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:acceleration-val is deprecated.  Use lidar_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:angle-val is deprecated.  Use lidar_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'behavior_state-val :lambda-list '(m))
(cl:defmethod behavior_state-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:behavior_state-val is deprecated.  Use lidar_msgs-msg:behavior_state instead.")
  (behavior_state m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:age-val is deprecated.  Use lidar_msgs-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'velocitystatus-val :lambda-list '(m))
(cl:defmethod velocitystatus-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:velocitystatus-val is deprecated.  Use lidar_msgs-msg:velocitystatus instead.")
  (velocitystatus m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:confidence-val is deprecated.  Use lidar_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'pointcloud-val :lambda-list '(m))
(cl:defmethod pointcloud-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:pointcloud-val is deprecated.  Use lidar_msgs-msg:pointcloud instead.")
  (pointcloud m))

(cl:ensure-generic-function 'cells-val :lambda-list '(m))
(cl:defmethod cells-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:cells-val is deprecated.  Use lidar_msgs-msg:cells instead.")
  (cells m))

(cl:ensure-generic-function 'convex_hull-val :lambda-list '(m))
(cl:defmethod convex_hull-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:convex_hull-val is deprecated.  Use lidar_msgs-msg:convex_hull instead.")
  (convex_hull m))

(cl:ensure-generic-function 'pose_reliable-val :lambda-list '(m))
(cl:defmethod pose_reliable-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:pose_reliable-val is deprecated.  Use lidar_msgs-msg:pose_reliable instead.")
  (pose_reliable m))

(cl:ensure-generic-function 'velocity_reliable-val :lambda-list '(m))
(cl:defmethod velocity_reliable-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:velocity_reliable-val is deprecated.  Use lidar_msgs-msg:velocity_reliable instead.")
  (velocity_reliable m))

(cl:ensure-generic-function 'acceleration_reliable-val :lambda-list '(m))
(cl:defmethod acceleration_reliable-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_msgs-msg:acceleration_reliable-val is deprecated.  Use lidar_msgs-msg:acceleration_reliable instead.")
  (acceleration_reliable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedObject>) ostream)
  "Serializes a message object of type '<DetectedObject>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tracked_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'output_pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimensions) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'behavior_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'velocitystatus)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointcloud) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cells))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cells))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'convex_hull) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pose_reliable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'velocity_reliable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'acceleration_reliable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedObject>) istream)
  "Deserializes a message object of type '<DetectedObject>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tracked_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'output_pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimensions) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'behavior_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'velocitystatus)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointcloud) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cells) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cells)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:ObstacleCell))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'convex_hull) istream)
    (cl:setf (cl:slot-value msg 'pose_reliable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'velocity_reliable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'acceleration_reliable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedObject>)))
  "Returns string type for a message object of type '<DetectedObject>"
  "lidar_msgs/DetectedObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedObject)))
  "Returns string type for a message object of type 'DetectedObject"
  "lidar_msgs/DetectedObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedObject>)))
  "Returns md5sum for a message object of type '<DetectedObject>"
  "d9aeea43fbddadcbfb4c8da6ce992363")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedObject)))
  "Returns md5sum for a message object of type 'DetectedObject"
  "d9aeea43fbddadcbfb4c8da6ce992363")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedObject>)))
  "Returns full string definition for message of type '<DetectedObject>"
  (cl:format cl:nil "std_msgs/Header                 header~%~%uint32                          id~%string                          label~%uint8                           type   # 0--car, 1--truck, 2--pedestrian, 3--cyclist, 4--unknown~%float32                         score   ~%std_msgs/ColorRGBA              color   # Define this object specific color~%bool                            valid   # Defines if this object is valid, or invalid as defined by the filtering~%~%~%geometry_msgs/Pose              pose~%geometry_msgs/Pose              tracked_pose~%geometry_msgs/Pose              output_pose~%float32                         yaw~%geometry_msgs/Vector3           dimensions~%geometry_msgs/Twist             velocity~%geometry_msgs/Twist             acceleration~%~%float32                         angle       # Angle [0 to 2*PI), allow rotated rects~%############### Behavior State of the Detected Object~%uint8                           behavior_state # FORWARD_STATE = 0, STOPPING_STATE = 1, BRANCH_LEFT_STATE = 2, BRANCH_RIGHT_STATE = 3, YIELDING_STATE = 4, ACCELERATING_STATE = 5, SLOWDOWN_STATE = 6~%~%uint32                          age~%uint8                           velocitystatus  # speed confidence  0--low, 1--normal, 2--high~%float32                         confidence    # confidence of obstacle~%~%sensor_msgs/PointCloud2         pointcloud~%perception_msgs/ObstacleCell[]  cells~%geometry_msgs/PolygonStamped    convex_hull~%~%bool                            pose_reliable~%bool                            velocity_reliable~%bool                            acceleration_reliable~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: perception_msgs/ObstacleCell~%int32 idc~%float64 x~%float64 y~%float64 xg~%float64 yg~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedObject)))
  "Returns full string definition for message of type 'DetectedObject"
  (cl:format cl:nil "std_msgs/Header                 header~%~%uint32                          id~%string                          label~%uint8                           type   # 0--car, 1--truck, 2--pedestrian, 3--cyclist, 4--unknown~%float32                         score   ~%std_msgs/ColorRGBA              color   # Define this object specific color~%bool                            valid   # Defines if this object is valid, or invalid as defined by the filtering~%~%~%geometry_msgs/Pose              pose~%geometry_msgs/Pose              tracked_pose~%geometry_msgs/Pose              output_pose~%float32                         yaw~%geometry_msgs/Vector3           dimensions~%geometry_msgs/Twist             velocity~%geometry_msgs/Twist             acceleration~%~%float32                         angle       # Angle [0 to 2*PI), allow rotated rects~%############### Behavior State of the Detected Object~%uint8                           behavior_state # FORWARD_STATE = 0, STOPPING_STATE = 1, BRANCH_LEFT_STATE = 2, BRANCH_RIGHT_STATE = 3, YIELDING_STATE = 4, ACCELERATING_STATE = 5, SLOWDOWN_STATE = 6~%~%uint32                          age~%uint8                           velocitystatus  # speed confidence  0--low, 1--normal, 2--high~%float32                         confidence    # confidence of obstacle~%~%sensor_msgs/PointCloud2         pointcloud~%perception_msgs/ObstacleCell[]  cells~%geometry_msgs/PolygonStamped    convex_hull~%~%bool                            pose_reliable~%bool                            velocity_reliable~%bool                            acceleration_reliable~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: perception_msgs/ObstacleCell~%int32 idc~%float64 x~%float64 y~%float64 xg~%float64 yg~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedObject>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:length (cl:slot-value msg 'label))
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tracked_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'output_pose))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimensions))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     4
     1
     4
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointcloud))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cells) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'convex_hull))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedObject>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedObject
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':label (label msg))
    (cl:cons ':type (type msg))
    (cl:cons ':score (score msg))
    (cl:cons ':color (color msg))
    (cl:cons ':valid (valid msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':tracked_pose (tracked_pose msg))
    (cl:cons ':output_pose (output_pose msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':dimensions (dimensions msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':behavior_state (behavior_state msg))
    (cl:cons ':age (age msg))
    (cl:cons ':velocitystatus (velocitystatus msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':pointcloud (pointcloud msg))
    (cl:cons ':cells (cells msg))
    (cl:cons ':convex_hull (convex_hull msg))
    (cl:cons ':pose_reliable (pose_reliable msg))
    (cl:cons ':velocity_reliable (velocity_reliable msg))
    (cl:cons ':acceleration_reliable (acceleration_reliable msg))
))
