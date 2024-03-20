;; Auto-generated. Do not edit!


(when (boundp 'diag_msgs::ErrorcodeInfo)
  (if (not (find-package "DIAG_MSGS"))
    (make-package "DIAG_MSGS"))
  (shadow 'ErrorcodeInfo (find-package "DIAG_MSGS")))
(unless (find-package "DIAG_MSGS::ERRORCODEINFO")
  (make-package "DIAG_MSGS::ERRORCODEINFO"))

(in-package "ROS")
;;//! \htmlinclude ErrorcodeInfo.msg.html


(defclass diag_msgs::ErrorcodeInfo
  :super ros::object
  :slots (_error_code _error_level _error_level_hmi ))

(defmethod diag_msgs::ErrorcodeInfo
  (:init
   (&key
    ((:error_code __error_code) 0)
    ((:error_level __error_level) 0)
    ((:error_level_hmi __error_level_hmi) 0)
    )
   (send-super :init)
   (setq _error_code (round __error_code))
   (setq _error_level (round __error_level))
   (setq _error_level_hmi (round __error_level_hmi))
   self)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:error_level
   (&optional __error_level)
   (if __error_level (setq _error_level __error_level)) _error_level)
  (:error_level_hmi
   (&optional __error_level_hmi)
   (if __error_level_hmi (setq _error_level_hmi __error_level_hmi)) _error_level_hmi)
  (:serialization-length
   ()
   (+
    ;; int32 _error_code
    4
    ;; int32 _error_level
    4
    ;; int32 _error_level_hmi
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _error_code
       (write-long _error_code s)
     ;; int32 _error_level
       (write-long _error_level s)
     ;; int32 _error_level_hmi
       (write-long _error_level_hmi s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _error_level
     (setq _error_level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _error_level_hmi
     (setq _error_level_hmi (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get diag_msgs::ErrorcodeInfo :md5sum-) "c4a20555fb21237671de7ca17abb84ed")
(setf (get diag_msgs::ErrorcodeInfo :datatype-) "diag_msgs/ErrorcodeInfo")
(setf (get diag_msgs::ErrorcodeInfo :definition-)
      "int32     error_code
int32     error_level
int32     error_level_hmi


")



(provide :diag_msgs/ErrorcodeInfo "c4a20555fb21237671de7ca17abb84ed")


