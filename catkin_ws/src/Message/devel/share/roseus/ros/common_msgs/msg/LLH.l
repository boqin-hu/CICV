;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::LLH)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'LLH (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::LLH")
  (make-package "COMMON_MSGS::LLH"))

(in-package "ROS")
;;//! \htmlinclude LLH.msg.html


(defclass common_msgs::LLH
  :super ros::object
  :slots (_lat _lon _height ))

(defmethod common_msgs::LLH
  (:init
   (&key
    ((:lat __lat) (instance common_msgs::UnsureVar :init))
    ((:lon __lon) (instance common_msgs::UnsureVar :init))
    ((:height __height) (instance common_msgs::UnsureVar :init))
    )
   (send-super :init)
   (setq _lat __lat)
   (setq _lon __lon)
   (setq _height __height)
   self)
  (:lat
   (&rest __lat)
   (if (keywordp (car __lat))
       (send* _lat __lat)
     (progn
       (if __lat (setq _lat (car __lat)))
       _lat)))
  (:lon
   (&rest __lon)
   (if (keywordp (car __lon))
       (send* _lon __lon)
     (progn
       (if __lon (setq _lon (car __lon)))
       _lon)))
  (:height
   (&rest __height)
   (if (keywordp (car __height))
       (send* _height __height)
     (progn
       (if __height (setq _height (car __height)))
       _height)))
  (:serialization-length
   ()
   (+
    ;; common_msgs/UnsureVar _lat
    (send _lat :serialization-length)
    ;; common_msgs/UnsureVar _lon
    (send _lon :serialization-length)
    ;; common_msgs/UnsureVar _height
    (send _height :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; common_msgs/UnsureVar _lat
       (send _lat :serialize s)
     ;; common_msgs/UnsureVar _lon
       (send _lon :serialize s)
     ;; common_msgs/UnsureVar _height
       (send _height :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; common_msgs/UnsureVar _lat
     (send _lat :deserialize buf ptr-) (incf ptr- (send _lat :serialization-length))
   ;; common_msgs/UnsureVar _lon
     (send _lon :deserialize buf ptr-) (incf ptr- (send _lon :serialization-length))
   ;; common_msgs/UnsureVar _height
     (send _height :deserialize buf ptr-) (incf ptr- (send _height :serialization-length))
   ;;
   self)
  )

(setf (get common_msgs::LLH :md5sum-) "903e0c8677e34a871ad57acebdb42ffd")
(setf (get common_msgs::LLH :datatype-) "common_msgs/LLH")
(setf (get common_msgs::LLH :definition-)
      "UnsureVar 	lat
UnsureVar 	lon
UnsureVar 	height
================================================================================
MSG: common_msgs/UnsureVar
float64 	variable
float64 	var_std
")



(provide :common_msgs/LLH "903e0c8677e34a871ad57acebdb42ffd")


