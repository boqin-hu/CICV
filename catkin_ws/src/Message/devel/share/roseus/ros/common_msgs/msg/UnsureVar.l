;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::UnsureVar)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'UnsureVar (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::UNSUREVAR")
  (make-package "COMMON_MSGS::UNSUREVAR"))

(in-package "ROS")
;;//! \htmlinclude UnsureVar.msg.html


(defclass common_msgs::UnsureVar
  :super ros::object
  :slots (_variable _var_std ))

(defmethod common_msgs::UnsureVar
  (:init
   (&key
    ((:variable __variable) 0.0)
    ((:var_std __var_std) 0.0)
    )
   (send-super :init)
   (setq _variable (float __variable))
   (setq _var_std (float __var_std))
   self)
  (:variable
   (&optional __variable)
   (if __variable (setq _variable __variable)) _variable)
  (:var_std
   (&optional __var_std)
   (if __var_std (setq _var_std __var_std)) _var_std)
  (:serialization-length
   ()
   (+
    ;; float64 _variable
    8
    ;; float64 _var_std
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _variable
       (sys::poke _variable (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _var_std
       (sys::poke _var_std (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _variable
     (setq _variable (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _var_std
     (setq _var_std (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get common_msgs::UnsureVar :md5sum-) "fb873e7f683e84becffacbe8b9daf29a")
(setf (get common_msgs::UnsureVar :datatype-) "common_msgs/UnsureVar")
(setf (get common_msgs::UnsureVar :definition-)
      "float64 	variable
float64 	var_std
")



(provide :common_msgs/UnsureVar "fb873e7f683e84becffacbe8b9daf29a")


