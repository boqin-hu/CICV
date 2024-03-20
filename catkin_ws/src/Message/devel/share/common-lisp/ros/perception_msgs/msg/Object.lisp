; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude Object.msg.html

(cl:defclass <Object> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (vxrel
    :reader vxrel
    :initarg :vxrel
    :type cl:float
    :initform 0.0)
   (vyrel
    :reader vyrel
    :initarg :vyrel
    :type cl:float
    :initform 0.0)
   (xabs
    :reader xabs
    :initarg :xabs
    :type cl:float
    :initform 0.0)
   (yabs
    :reader yabs
    :initarg :yabs
    :type cl:float
    :initform 0.0)
   (vxabs
    :reader vxabs
    :initarg :vxabs
    :type cl:float
    :initform 0.0)
   (vyabs
    :reader vyabs
    :initarg :vyabs
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (source
    :reader source
    :initarg :source
    :type cl:fixnum
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
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
   (cells
    :reader cells
    :initarg :cells
    :type (cl:vector perception_msgs-msg:ObstacleCell)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:ObstacleCell :initial-element (cl:make-instance 'perception_msgs-msg:ObstacleCell))))
)

(cl:defclass Object (<Object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<Object> is deprecated: use perception_msgs-msg:Object instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:id-val is deprecated.  Use perception_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:x-val is deprecated.  Use perception_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:y-val is deprecated.  Use perception_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:z-val is deprecated.  Use perception_msgs-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'vxrel-val :lambda-list '(m))
(cl:defmethod vxrel-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:vxrel-val is deprecated.  Use perception_msgs-msg:vxrel instead.")
  (vxrel m))

(cl:ensure-generic-function 'vyrel-val :lambda-list '(m))
(cl:defmethod vyrel-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:vyrel-val is deprecated.  Use perception_msgs-msg:vyrel instead.")
  (vyrel m))

(cl:ensure-generic-function 'xabs-val :lambda-list '(m))
(cl:defmethod xabs-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:xabs-val is deprecated.  Use perception_msgs-msg:xabs instead.")
  (xabs m))

(cl:ensure-generic-function 'yabs-val :lambda-list '(m))
(cl:defmethod yabs-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:yabs-val is deprecated.  Use perception_msgs-msg:yabs instead.")
  (yabs m))

(cl:ensure-generic-function 'vxabs-val :lambda-list '(m))
(cl:defmethod vxabs-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:vxabs-val is deprecated.  Use perception_msgs-msg:vxabs instead.")
  (vxabs m))

(cl:ensure-generic-function 'vyabs-val :lambda-list '(m))
(cl:defmethod vyabs-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:vyabs-val is deprecated.  Use perception_msgs-msg:vyabs instead.")
  (vyabs m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:width-val is deprecated.  Use perception_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:length-val is deprecated.  Use perception_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:height-val is deprecated.  Use perception_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:speed-val is deprecated.  Use perception_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:heading-val is deprecated.  Use perception_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:type-val is deprecated.  Use perception_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:source-val is deprecated.  Use perception_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:confidence-val is deprecated.  Use perception_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:age-val is deprecated.  Use perception_msgs-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'velocitystatus-val :lambda-list '(m))
(cl:defmethod velocitystatus-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:velocitystatus-val is deprecated.  Use perception_msgs-msg:velocitystatus instead.")
  (velocitystatus m))

(cl:ensure-generic-function 'cells-val :lambda-list '(m))
(cl:defmethod cells-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:cells-val is deprecated.  Use perception_msgs-msg:cells instead.")
  (cells m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Object>) ostream)
  "Serializes a message object of type '<Object>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vxrel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vyrel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xabs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yabs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vxabs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vyabs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'velocitystatus)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cells))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cells))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Object>) istream)
  "Deserializes a message object of type '<Object>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vxrel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vyrel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xabs) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yabs) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vxabs) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vyabs) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'velocitystatus)) (cl:read-byte istream))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Object>)))
  "Returns string type for a message object of type '<Object>"
  "perception_msgs/Object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Object)))
  "Returns string type for a message object of type 'Object"
  "perception_msgs/Object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Object>)))
  "Returns md5sum for a message object of type '<Object>"
  "8076fab59ac243046da9a425a9cf9fc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Object)))
  "Returns md5sum for a message object of type 'Object"
  "8076fab59ac243046da9a425a9cf9fc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Object>)))
  "Returns full string definition for message of type '<Object>"
  (cl:format cl:nil "uint32 id 						# obstacle ID.~%float32 x  		# relative distance of x, VCS, unit: m~%float32 y 		# relative distance of y, VCS, unit: m~%float32 z 						# relative distance of z, VCS, unit: m~%float32 vxrel     # relative speed of x, VCS, unit: m/s~%float32 vyrel     # relative speed of y, VCS, unit: m/s~%float64 xabs      # relative distance of x, VCS, unit: m~%float64 yabs      # relative distance of y, VCS, unit: m~%float32 vxabs     # relative speed of x, VCS, unit: m/s~%float32 vyabs     # relative speed of y, VCS, unit: m/s~%float32 width     # unit: m~%float32 length    # unit: m~%float32 height     				# unit: m~%float32 speed      				# unit: m/s~%float32 heading      			# unit: du~%uint8 type 					# CAR_TYPE=0, TRUCK_TYPE=1, PEDESTRIAN_TYPE=2, CYCLIST_TYPE=3, UNKNOWN_TYPE=4, UNKNOWN_MOVABLE_TYPE=5, UNKNOWN_UNMOVABLE_TYPE=6~%uint8 source 					# VISION=0x0000 MOBILEYE=0x0001 LIDAR=0x0100 RADAR=0x0200 ARS_0=0x0201   ARS_1=0x0202  ARS_2=0x0203  ARS_3=0x0204~%float32 confidence				# 0.0~~1.0~%uint32 age						# ~%uint8 velocitystatus 			# ~%ObstacleCell[] cells ~%~%# uint8 track_level~%# uint8 invi_count~%# uint8 vis_count~%~%# float32 acc_x~%# float32 acc_y~%~%~%================================================================================~%MSG: perception_msgs/ObstacleCell~%int32 idc~%float64 x~%float64 y~%float64 xg~%float64 yg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Object)))
  "Returns full string definition for message of type 'Object"
  (cl:format cl:nil "uint32 id 						# obstacle ID.~%float32 x  		# relative distance of x, VCS, unit: m~%float32 y 		# relative distance of y, VCS, unit: m~%float32 z 						# relative distance of z, VCS, unit: m~%float32 vxrel     # relative speed of x, VCS, unit: m/s~%float32 vyrel     # relative speed of y, VCS, unit: m/s~%float64 xabs      # relative distance of x, VCS, unit: m~%float64 yabs      # relative distance of y, VCS, unit: m~%float32 vxabs     # relative speed of x, VCS, unit: m/s~%float32 vyabs     # relative speed of y, VCS, unit: m/s~%float32 width     # unit: m~%float32 length    # unit: m~%float32 height     				# unit: m~%float32 speed      				# unit: m/s~%float32 heading      			# unit: du~%uint8 type 					# CAR_TYPE=0, TRUCK_TYPE=1, PEDESTRIAN_TYPE=2, CYCLIST_TYPE=3, UNKNOWN_TYPE=4, UNKNOWN_MOVABLE_TYPE=5, UNKNOWN_UNMOVABLE_TYPE=6~%uint8 source 					# VISION=0x0000 MOBILEYE=0x0001 LIDAR=0x0100 RADAR=0x0200 ARS_0=0x0201   ARS_1=0x0202  ARS_2=0x0203  ARS_3=0x0204~%float32 confidence				# 0.0~~1.0~%uint32 age						# ~%uint8 velocitystatus 			# ~%ObstacleCell[] cells ~%~%# uint8 track_level~%# uint8 invi_count~%# uint8 vis_count~%~%# float32 acc_x~%# float32 acc_y~%~%~%================================================================================~%MSG: perception_msgs/ObstacleCell~%int32 idc~%float64 x~%float64 y~%float64 xg~%float64 yg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Object>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     8
     8
     4
     4
     4
     4
     4
     4
     4
     1
     1
     4
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cells) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Object>))
  "Converts a ROS message object to a list"
  (cl:list 'Object
    (cl:cons ':id (id msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':vxrel (vxrel msg))
    (cl:cons ':vyrel (vyrel msg))
    (cl:cons ':xabs (xabs msg))
    (cl:cons ':yabs (yabs msg))
    (cl:cons ':vxabs (vxabs msg))
    (cl:cons ':vyabs (vyabs msg))
    (cl:cons ':width (width msg))
    (cl:cons ':length (length msg))
    (cl:cons ':height (height msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':type (type msg))
    (cl:cons ':source (source msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':age (age msg))
    (cl:cons ':velocitystatus (velocitystatus msg))
    (cl:cons ':cells (cells msg))
))
