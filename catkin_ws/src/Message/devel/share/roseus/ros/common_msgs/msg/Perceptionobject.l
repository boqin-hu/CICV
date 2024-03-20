;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::Perceptionobject)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'Perceptionobject (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::PERCEPTIONOBJECT")
  (make-package "COMMON_MSGS::PERCEPTIONOBJECT"))

(in-package "ROS")
;;//! \htmlinclude Perceptionobject.msg.html


(defclass common_msgs::Perceptionobject
  :super ros::object
  :slots (_SimTim _ID _x _y _v_x _v_y _xg _yg _v_xg _v_yg _heading _length _width _height _type _xrel _yrel _v_xrel _v_yrel ))

(defmethod common_msgs::Perceptionobject
  (:init
   (&key
    ((:SimTim __SimTim) 0.0)
    ((:ID __ID) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:v_x __v_x) 0.0)
    ((:v_y __v_y) 0.0)
    ((:xg __xg) 0.0)
    ((:yg __yg) 0.0)
    ((:v_xg __v_xg) 0.0)
    ((:v_yg __v_yg) 0.0)
    ((:heading __heading) 0.0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:type __type) 0)
    ((:xrel __xrel) 0.0)
    ((:yrel __yrel) 0.0)
    ((:v_xrel __v_xrel) 0.0)
    ((:v_yrel __v_yrel) 0.0)
    )
   (send-super :init)
   (setq _SimTim (float __SimTim))
   (setq _ID (round __ID))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _v_x (float __v_x))
   (setq _v_y (float __v_y))
   (setq _xg (float __xg))
   (setq _yg (float __yg))
   (setq _v_xg (float __v_xg))
   (setq _v_yg (float __v_yg))
   (setq _heading (float __heading))
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _type (round __type))
   (setq _xrel (float __xrel))
   (setq _yrel (float __yrel))
   (setq _v_xrel (float __v_xrel))
   (setq _v_yrel (float __v_yrel))
   self)
  (:SimTim
   (&optional __SimTim)
   (if __SimTim (setq _SimTim __SimTim)) _SimTim)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:v_x
   (&optional __v_x)
   (if __v_x (setq _v_x __v_x)) _v_x)
  (:v_y
   (&optional __v_y)
   (if __v_y (setq _v_y __v_y)) _v_y)
  (:xg
   (&optional __xg)
   (if __xg (setq _xg __xg)) _xg)
  (:yg
   (&optional __yg)
   (if __yg (setq _yg __yg)) _yg)
  (:v_xg
   (&optional __v_xg)
   (if __v_xg (setq _v_xg __v_xg)) _v_xg)
  (:v_yg
   (&optional __v_yg)
   (if __v_yg (setq _v_yg __v_yg)) _v_yg)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:xrel
   (&optional __xrel)
   (if __xrel (setq _xrel __xrel)) _xrel)
  (:yrel
   (&optional __yrel)
   (if __yrel (setq _yrel __yrel)) _yrel)
  (:v_xrel
   (&optional __v_xrel)
   (if __v_xrel (setq _v_xrel __v_xrel)) _v_xrel)
  (:v_yrel
   (&optional __v_yrel)
   (if __v_yrel (setq _v_yrel __v_yrel)) _v_yrel)
  (:serialization-length
   ()
   (+
    ;; float64 _SimTim
    8
    ;; uint32 _ID
    4
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _v_x
    8
    ;; float64 _v_y
    8
    ;; float64 _xg
    8
    ;; float64 _yg
    8
    ;; float64 _v_xg
    8
    ;; float64 _v_yg
    8
    ;; float32 _heading
    4
    ;; float64 _length
    8
    ;; float64 _width
    8
    ;; float64 _height
    8
    ;; uint8 _type
    1
    ;; float64 _xrel
    8
    ;; float64 _yrel
    8
    ;; float64 _v_xrel
    8
    ;; float64 _v_yrel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _SimTim
       (sys::poke _SimTim (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _ID
       (write-long _ID s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_x
       (sys::poke _v_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_y
       (sys::poke _v_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xg
       (sys::poke _xg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yg
       (sys::poke _yg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_xg
       (sys::poke _v_xg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_yg
       (sys::poke _v_yg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _type
       (write-byte _type s)
     ;; float64 _xrel
       (sys::poke _xrel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yrel
       (sys::poke _yrel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_xrel
       (sys::poke _v_xrel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_yrel
       (sys::poke _v_yrel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _SimTim
     (setq _SimTim (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_x
     (setq _v_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_y
     (setq _v_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xg
     (setq _xg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yg
     (setq _yg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_xg
     (setq _v_xg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_yg
     (setq _v_yg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _xrel
     (setq _xrel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yrel
     (setq _yrel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_xrel
     (setq _v_xrel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_yrel
     (setq _v_yrel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get common_msgs::Perceptionobject :md5sum-) "3e487cfd175ff6d18074f7b91bb10dc6")
(setf (get common_msgs::Perceptionobject :datatype-) "common_msgs/Perceptionobject")
(setf (get common_msgs::Perceptionobject :definition-)
      "float64 SimTim
uint32 ID 
float64 x
float64 y
float64 v_x
float64 v_y
float64 xg	
float64 yg
float64 v_xg
float64 v_yg
float32 heading	
float64 length	
float64 width
float64 height
uint8 type
float64 xrel	
float64 yrel
float64 v_xrel
float64 v_yrel



#ros消息时间戳转换成double类型的时间，单位:s	
#x坐标值 FLU车体坐标系,单位:m	
#y坐标值 FLU车体坐标系,单位:m	
#x方向绝对距离，单位:m	
#y方向绝对距离，单位:m	
#单位:度	
#单位:m	
#单位:m	
#\"类型(# 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck)（0-未知,1-行人，
#2-叉车，3-物料箱，4-货架，5-AMR）\"	
#x方向绝对速度，单位:m/s	
#y方向绝对速度，单位:m/s	
#x方向相对速度，单位:m/s	
#y方向相对距离，单位:m/s	
#被激光雷达检测到的次数，乘以周期（100ms）是检测到的时间	
#在utm坐标系下的x坐标	
#在utm坐标系下的y坐标	


")



(provide :common_msgs/Perceptionobject "3e487cfd175ff6d18074f7b91bb10dc6")


