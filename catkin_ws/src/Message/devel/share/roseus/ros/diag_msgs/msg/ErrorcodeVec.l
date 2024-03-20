;; Auto-generated. Do not edit!


(when (boundp 'diag_msgs::ErrorcodeVec)
  (if (not (find-package "DIAG_MSGS"))
    (make-package "DIAG_MSGS"))
  (shadow 'ErrorcodeVec (find-package "DIAG_MSGS")))
(unless (find-package "DIAG_MSGS::ERRORCODEVEC")
  (make-package "DIAG_MSGS::ERRORCODEVEC"))

(in-package "ROS")
;;//! \htmlinclude ErrorcodeVec.msg.html


(defclass diag_msgs::ErrorcodeVec
  :super ros::object
  :slots (_error_vec _interactive ))

(defmethod diag_msgs::ErrorcodeVec
  (:init
   (&key
    ((:error_vec __error_vec) ())
    ((:interactive __interactive) 0)
    )
   (send-super :init)
   (setq _error_vec __error_vec)
   (setq _interactive (round __interactive))
   self)
  (:error_vec
   (&rest __error_vec)
   (if (keywordp (car __error_vec))
       (send* _error_vec __error_vec)
     (progn
       (if __error_vec (setq _error_vec (car __error_vec)))
       _error_vec)))
  (:interactive
   (&optional __interactive)
   (if __interactive (setq _interactive __interactive)) _interactive)
  (:serialization-length
   ()
   (+
    ;; diag_msgs/ErrorcodeInfo[] _error_vec
    (apply #'+ (send-all _error_vec :serialization-length)) 4
    ;; int32 _interactive
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; diag_msgs/ErrorcodeInfo[] _error_vec
     (write-long (length _error_vec) s)
     (dolist (elem _error_vec)
       (send elem :serialize s)
       )
     ;; int32 _interactive
       (write-long _interactive s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; diag_msgs/ErrorcodeInfo[] _error_vec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _error_vec (let (r) (dotimes (i n) (push (instance diag_msgs::ErrorcodeInfo :init) r)) r))
     (dolist (elem- _error_vec)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _interactive
     (setq _interactive (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get diag_msgs::ErrorcodeVec :md5sum-) "6d652d5f9dc7c3fdadce9102b2c47862")
(setf (get diag_msgs::ErrorcodeVec :datatype-) "diag_msgs/ErrorcodeVec")
(setf (get diag_msgs::ErrorcodeVec :definition-)
      "ErrorcodeInfo[] 	error_vec
int32     interactive

================================================================================
MSG: diag_msgs/ErrorcodeInfo
int32     error_code
int32     error_level
int32     error_level_hmi


")



(provide :diag_msgs/ErrorcodeVec "6d652d5f9dc7c3fdadce9102b2c47862")


