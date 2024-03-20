;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::SingleTrafficLight)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'SingleTrafficLight (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::SINGLETRAFFICLIGHT")
  (make-package "PERCEPTION_MSGS::SINGLETRAFFICLIGHT"))

(in-package "ROS")
;;//! \htmlinclude SingleTrafficLight.msg.html


(defclass perception_msgs::SingleTrafficLight
  :super ros::object
  :slots (_color _id _confidence _tracking_time ))

(defmethod perception_msgs::SingleTrafficLight
  (:init
   (&key
    ((:color __color) 0)
    ((:id __id) "")
    ((:confidence __confidence) 0.0)
    ((:tracking_time __tracking_time) 0.0)
    )
   (send-super :init)
   (setq _color (round __color))
   (setq _id (string __id))
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
    ;; string _id
    4 (length _id)
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
     ;; string _id
       (write-long (length _id) s) (princ _id s)
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
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tracking_time
     (setq _tracking_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_msgs::SingleTrafficLight :md5sum-) "881071b86c0a28ec94db50b4995ef6c8")
(setf (get perception_msgs::SingleTrafficLight :datatype-) "perception_msgs/SingleTrafficLight")
(setf (get perception_msgs::SingleTrafficLight :definition-)
      "int8 color #UNKNOWN_COLOR = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;
string id # Traffic light string-ID in the map data.
float32 confidence  #How confidence about the detected results, between 0 and 1.
float32 tracking_time  # Duration of the traffic light since detected.

")



(provide :perception_msgs/SingleTrafficLight "881071b86c0a28ec94db50b4995ef6c8")


