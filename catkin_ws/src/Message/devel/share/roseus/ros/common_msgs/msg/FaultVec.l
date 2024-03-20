;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::FaultVec)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'FaultVec (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::FAULTVEC")
  (make-package "COMMON_MSGS::FAULTVEC"))

(in-package "ROS")
;;//! \htmlinclude FaultVec.msg.html


(defclass common_msgs::FaultVec
  :super ros::object
  :slots (_info_vec _module_fault_level ))

(defmethod common_msgs::FaultVec
  (:init
   (&key
    ((:info_vec __info_vec) ())
    ((:module_fault_level __module_fault_level) 0)
    )
   (send-super :init)
   (setq _info_vec __info_vec)
   (setq _module_fault_level (round __module_fault_level))
   self)
  (:info_vec
   (&rest __info_vec)
   (if (keywordp (car __info_vec))
       (send* _info_vec __info_vec)
     (progn
       (if __info_vec (setq _info_vec (car __info_vec)))
       _info_vec)))
  (:module_fault_level
   (&optional __module_fault_level)
   (if __module_fault_level (setq _module_fault_level __module_fault_level)) _module_fault_level)
  (:serialization-length
   ()
   (+
    ;; common_msgs/FaultInfo[] _info_vec
    (apply #'+ (send-all _info_vec :serialization-length)) 4
    ;; int32 _module_fault_level
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; common_msgs/FaultInfo[] _info_vec
     (write-long (length _info_vec) s)
     (dolist (elem _info_vec)
       (send elem :serialize s)
       )
     ;; int32 _module_fault_level
       (write-long _module_fault_level s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; common_msgs/FaultInfo[] _info_vec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _info_vec (let (r) (dotimes (i n) (push (instance common_msgs::FaultInfo :init) r)) r))
     (dolist (elem- _info_vec)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _module_fault_level
     (setq _module_fault_level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get common_msgs::FaultVec :md5sum-) "32507500d69130d261243cee8a95edc3")
(setf (get common_msgs::FaultVec :datatype-) "common_msgs/FaultVec")
(setf (get common_msgs::FaultVec :definition-)
      "FaultInfo[] 	info_vec
int32 	module_fault_level

================================================================================
MSG: common_msgs/FaultInfo
float64 	timestamp_sec
string 	module_name
string 	version
int32 	error_code
string 	msg
int8 	fault_level
int8 	fault_type
")



(provide :common_msgs/FaultVec "32507500d69130d261243cee8a95edc3")


