;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::Object)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'Object (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::OBJECT")
  (make-package "PERCEPTION_MSGS::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html


(defclass perception_msgs::Object
  :super ros::object
  :slots (_id _x _y _z _vxrel _vyrel _xabs _yabs _vxabs _vyabs _width _length _height _speed _heading _type _source _confidence _age _velocitystatus _cells ))

(defmethod perception_msgs::Object
  (:init
   (&key
    ((:id __id) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:vxrel __vxrel) 0.0)
    ((:vyrel __vyrel) 0.0)
    ((:xabs __xabs) 0.0)
    ((:yabs __yabs) 0.0)
    ((:vxabs __vxabs) 0.0)
    ((:vyabs __vyabs) 0.0)
    ((:width __width) 0.0)
    ((:length __length) 0.0)
    ((:height __height) 0.0)
    ((:speed __speed) 0.0)
    ((:heading __heading) 0.0)
    ((:type __type) 0)
    ((:source __source) 0)
    ((:confidence __confidence) 0.0)
    ((:age __age) 0)
    ((:velocitystatus __velocitystatus) 0)
    ((:cells __cells) ())
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _vxrel (float __vxrel))
   (setq _vyrel (float __vyrel))
   (setq _xabs (float __xabs))
   (setq _yabs (float __yabs))
   (setq _vxabs (float __vxabs))
   (setq _vyabs (float __vyabs))
   (setq _width (float __width))
   (setq _length (float __length))
   (setq _height (float __height))
   (setq _speed (float __speed))
   (setq _heading (float __heading))
   (setq _type (round __type))
   (setq _source (round __source))
   (setq _confidence (float __confidence))
   (setq _age (round __age))
   (setq _velocitystatus (round __velocitystatus))
   (setq _cells __cells)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:vxrel
   (&optional __vxrel)
   (if __vxrel (setq _vxrel __vxrel)) _vxrel)
  (:vyrel
   (&optional __vyrel)
   (if __vyrel (setq _vyrel __vyrel)) _vyrel)
  (:xabs
   (&optional __xabs)
   (if __xabs (setq _xabs __xabs)) _xabs)
  (:yabs
   (&optional __yabs)
   (if __yabs (setq _yabs __yabs)) _yabs)
  (:vxabs
   (&optional __vxabs)
   (if __vxabs (setq _vxabs __vxabs)) _vxabs)
  (:vyabs
   (&optional __vyabs)
   (if __vyabs (setq _vyabs __vyabs)) _vyabs)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:velocitystatus
   (&optional __velocitystatus)
   (if __velocitystatus (setq _velocitystatus __velocitystatus)) _velocitystatus)
  (:cells
   (&rest __cells)
   (if (keywordp (car __cells))
       (send* _cells __cells)
     (progn
       (if __cells (setq _cells (car __cells)))
       _cells)))
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _vxrel
    4
    ;; float32 _vyrel
    4
    ;; float64 _xabs
    8
    ;; float64 _yabs
    8
    ;; float32 _vxabs
    4
    ;; float32 _vyabs
    4
    ;; float32 _width
    4
    ;; float32 _length
    4
    ;; float32 _height
    4
    ;; float32 _speed
    4
    ;; float32 _heading
    4
    ;; uint8 _type
    1
    ;; uint8 _source
    1
    ;; float32 _confidence
    4
    ;; uint32 _age
    4
    ;; uint8 _velocitystatus
    1
    ;; perception_msgs/ObstacleCell[] _cells
    (apply #'+ (send-all _cells :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vxrel
       (sys::poke _vxrel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vyrel
       (sys::poke _vyrel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _xabs
       (sys::poke _xabs (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yabs
       (sys::poke _yabs (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _vxabs
       (sys::poke _vxabs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vyabs
       (sys::poke _vyabs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8 _source
       (write-byte _source s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _age
       (write-long _age s)
     ;; uint8 _velocitystatus
       (write-byte _velocitystatus s)
     ;; perception_msgs/ObstacleCell[] _cells
     (write-long (length _cells) s)
     (dolist (elem _cells)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vxrel
     (setq _vxrel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vyrel
     (setq _vyrel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _xabs
     (setq _xabs (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yabs
     (setq _yabs (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _vxabs
     (setq _vxabs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vyabs
     (setq _vyabs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _source
     (setq _source (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _age
     (setq _age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _velocitystatus
     (setq _velocitystatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; perception_msgs/ObstacleCell[] _cells
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cells (let (r) (dotimes (i n) (push (instance perception_msgs::ObstacleCell :init) r)) r))
     (dolist (elem- _cells)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_msgs::Object :md5sum-) "8076fab59ac243046da9a425a9cf9fc0")
(setf (get perception_msgs::Object :datatype-) "perception_msgs/Object")
(setf (get perception_msgs::Object :definition-)
      "uint32 id 						# obstacle ID.
float32 x  		# relative distance of x, VCS, unit: m
float32 y 		# relative distance of y, VCS, unit: m
float32 z 						# relative distance of z, VCS, unit: m
float32 vxrel     # relative speed of x, VCS, unit: m/s
float32 vyrel     # relative speed of y, VCS, unit: m/s
float64 xabs      # relative distance of x, VCS, unit: m
float64 yabs      # relative distance of y, VCS, unit: m
float32 vxabs     # relative speed of x, VCS, unit: m/s
float32 vyabs     # relative speed of y, VCS, unit: m/s
float32 width     # unit: m
float32 length    # unit: m
float32 height     				# unit: m
float32 speed      				# unit: m/s
float32 heading      			# unit: du
uint8 type 					# CAR_TYPE=0, TRUCK_TYPE=1, PEDESTRIAN_TYPE=2, CYCLIST_TYPE=3, UNKNOWN_TYPE=4, UNKNOWN_MOVABLE_TYPE=5, UNKNOWN_UNMOVABLE_TYPE=6
uint8 source 					# VISION=0x0000 MOBILEYE=0x0001 LIDAR=0x0100 RADAR=0x0200 ARS_0=0x0201   ARS_1=0x0202  ARS_2=0x0203  ARS_3=0x0204
float32 confidence				# 0.0~1.0
uint32 age						# 
uint8 velocitystatus 			# 
ObstacleCell[] cells 

# uint8 track_level
# uint8 invi_count
# uint8 vis_count

# float32 acc_x
# float32 acc_y


================================================================================
MSG: perception_msgs/ObstacleCell
int32 idc
float64 x
float64 y
float64 xg
float64 yg
")



(provide :perception_msgs/Object "8076fab59ac243046da9a425a9cf9fc0")


