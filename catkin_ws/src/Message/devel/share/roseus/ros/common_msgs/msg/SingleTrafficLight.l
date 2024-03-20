;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::SingleTrafficLight)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'SingleTrafficLight (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::SINGLETRAFFICLIGHT")
  (make-package "COMMON_MSGS::SINGLETRAFFICLIGHT"))

(in-package "ROS")
;;//! \htmlinclude SingleTrafficLight.msg.html


(defclass common_msgs::SingleTrafficLight
  :super ros::object
  :slots (_color _id _confidence _tracking_time ))

(defmethod common_msgs::SingleTrafficLight
  (:init
   (&key
    ((:color __color) 0)
    ((:id __id) 0)
    ((:confidence __confidence) 0.0)
    ((:tracking_time __tracking_time) 0.0)
    )
   (send-super :init)
   (setq _color (round __color))
   (setq _id (round __id))
   (setq _confidence (float __confidence))
   (setq _tracking_time (float __tracking_time))
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:tracking_time
   (&optional __tracking_time)
   (if __tracking_time (setq _tracking_time __tracking_time)) _tracking_time)
  (:serialization-length
   ()
   (+
    ;; int8 _color
    1
    ;; int32 _id
    4
    ;; float32 _confidence
    4
    ;; float32 _tracking_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _color
       (write-byte _color s)
     ;; int32 _id
       (write-long _id s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tracking_time
       (sys::poke _tracking_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _color
     (setq _color (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _color 127) (setq _color (- _color 256)))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tracking_time
     (setq _tracking_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get common_msgs::SingleTrafficLight :md5sum-) "2061b2d7b133ea8f4ea7826bb7846d41")
(setf (get common_msgs::SingleTrafficLight :datatype-) "common_msgs/SingleTrafficLight")
(setf (get common_msgs::SingleTrafficLight :definition-)
      "int8 color #UNKNOWN_COLOR = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;
int32 id # Traffic light string-ID in the map data.
float32 confidence  #How confidence about the detected results, between 0 and 1.
float32 tracking_time  # Duration of the traffic light since detected.

")



(provide :common_msgs/SingleTrafficLight "2061b2d7b133ea8f4ea7826bb7846d41")


