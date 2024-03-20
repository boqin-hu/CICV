;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::TrafficLightDetection)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'TrafficLightDetection (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::TRAFFICLIGHTDETECTION")
  (make-package "COMMON_MSGS::TRAFFICLIGHTDETECTION"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightDetection.msg.html


(defclass common_msgs::TrafficLightDetection
  :super ros::object
  :slots (_SimTim _num _traffic_light _contain_lights ))

(defmethod common_msgs::TrafficLightDetection
  (:init
   (&key
    ((:SimTim __SimTim) 0.0)
    ((:num __num) 0)
    ((:traffic_light __traffic_light) ())
    ((:contain_lights __contain_lights) nil)
    )
   (send-super :init)
   (setq _SimTim (float __SimTim))
   (setq _num (round __num))
   (setq _traffic_light __traffic_light)
   (setq _contain_lights __contain_lights)
   self)
  (:SimTim
   (&optional __SimTim)
   (if __SimTim (setq _SimTim __SimTim)) _SimTim)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:traffic_light
   (&rest __traffic_light)
   (if (keywordp (car __traffic_light))
       (send* _traffic_light __traffic_light)
     (progn
       (if __traffic_light (setq _traffic_light (car __traffic_light)))
       _traffic_light)))
  (:contain_lights
   (&optional (__contain_lights :null))
   (if (not (eq __contain_lights :null)) (setq _contain_lights __contain_lights)) _contain_lights)
  (:serialization-length
   ()
   (+
    ;; float64 _SimTim
    8
    ;; int32 _num
    4
    ;; common_msgs/SingleTrafficLight[] _traffic_light
    (apply #'+ (send-all _traffic_light :serialization-length)) 4
    ;; bool _contain_lights
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _SimTim
       (sys::poke _SimTim (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _num
       (write-long _num s)
     ;; common_msgs/SingleTrafficLight[] _traffic_light
     (write-long (length _traffic_light) s)
     (dolist (elem _traffic_light)
       (send elem :serialize s)
       )
     ;; bool _contain_lights
       (if _contain_lights (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _SimTim
     (setq _SimTim (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _num
     (setq _num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; common_msgs/SingleTrafficLight[] _traffic_light
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_light (let (r) (dotimes (i n) (push (instance common_msgs::SingleTrafficLight :init) r)) r))
     (dolist (elem- _traffic_light)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _contain_lights
     (setq _contain_lights (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get common_msgs::TrafficLightDetection :md5sum-) "ca3a73acb5dcd3f6d21017a5cd0a7b58")
(setf (get common_msgs::TrafficLightDetection :datatype-) "common_msgs/TrafficLightDetection")
(setf (get common_msgs::TrafficLightDetection :definition-)
      "#std_msgs/Header  header
float64 SimTim
int32 num 
SingleTrafficLight[] traffic_light
bool contain_lights

================================================================================
MSG: common_msgs/SingleTrafficLight
int8 color #UNKNOWN_COLOR = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;
int32 id # Traffic light string-ID in the map data.
float32 confidence  #How confidence about the detected results, between 0 and 1.
float32 tracking_time  # Duration of the traffic light since detected.

")



(provide :common_msgs/TrafficLightDetection "ca3a73acb5dcd3f6d21017a5cd0a7b58")


