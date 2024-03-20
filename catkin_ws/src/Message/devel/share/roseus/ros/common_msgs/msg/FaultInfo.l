;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::FaultInfo)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'FaultInfo (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::FAULTINFO")
  (make-package "COMMON_MSGS::FAULTINFO"))

(in-package "ROS")
;;//! \htmlinclude FaultInfo.msg.html


(defclass common_msgs::FaultInfo
  :super ros::object
  :slots (_timestamp_sec _module_name _version _error_code _msg _fault_level _fault_type ))

(defmethod common_msgs::FaultInfo
  (:init
   (&key
    ((:timestamp_sec __timestamp_sec) 0.0)
    ((:module_name __module_name) "")
    ((:version __version) "")
    ((:error_code __error_code) 0)
    ((:msg __msg) "")
    ((:fault_level __fault_level) 0)
    ((:fault_type __fault_type) 0)
    )
   (send-super :init)
   (setq _timestamp_sec (float __timestamp_sec))
   (setq _module_name (string __module_name))
   (setq _version (string __version))
   (setq _error_code (round __error_code))
   (setq _msg (string __msg))
   (setq _fault_level (round __fault_level))
   (setq _fault_type (round __fault_type))
   self)
  (:timestamp_sec
   (&optional __timestamp_sec)
   (if __timestamp_sec (setq _timestamp_sec __timestamp_sec)) _timestamp_sec)
  (:module_name
   (&optional __module_name)
   (if __module_name (setq _module_name __module_name)) _module_name)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:fault_level
   (&optional __fault_level)
   (if __fault_level (setq _fault_level __fault_level)) _fault_level)
  (:fault_type
   (&optional __fault_type)
   (if __fault_type (setq _fault_type __fault_type)) _fault_type)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp_sec
    8
    ;; string _module_name
    4 (length _module_name)
    ;; string _version
    4 (length _version)
    ;; int32 _error_code
    4
    ;; string _msg
    4 (length _msg)
    ;; int8 _fault_level
    1
    ;; int8 _fault_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp_sec
       (sys::poke _timestamp_sec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _module_name
       (write-long (length _module_name) s) (princ _module_name s)
     ;; string _version
       (write-long (length _version) s) (princ _version s)
     ;; int32 _error_code
       (write-long _error_code s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;; int8 _fault_level
       (write-byte _fault_level s)
     ;; int8 _fault_type
       (write-byte _fault_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp_sec
     (setq _timestamp_sec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _module_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _module_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _fault_level
     (setq _fault_level (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _fault_level 127) (setq _fault_level (- _fault_level 256)))
   ;; int8 _fault_type
     (setq _fault_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _fault_type 127) (setq _fault_type (- _fault_type 256)))
   ;;
   self)
  )

(setf (get common_msgs::FaultInfo :md5sum-) "1b5939be01d58923002cbc6c918b82ce")
(setf (get common_msgs::FaultInfo :datatype-) "common_msgs/FaultInfo")
(setf (get common_msgs::FaultInfo :definition-)
      "float64 	timestamp_sec
string 	module_name
string 	version
int32 	error_code
string 	msg
int8 	fault_level
int8 	fault_type
")



(provide :common_msgs/FaultInfo "1b5939be01d58923002cbc6c918b82ce")


