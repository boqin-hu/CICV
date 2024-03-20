;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::CalibrationResult)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'CalibrationResult (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::CALIBRATIONRESULT")
  (make-package "COMMON_MSGS::CALIBRATIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude CalibrationResult.msg.html


(defclass common_msgs::CalibrationResult
  :super ros::object
  :slots (_timestamp_sec _module_name _version _info _status ))

(defmethod common_msgs::CalibrationResult
  (:init
   (&key
    ((:timestamp_sec __timestamp_sec) 0.0)
    ((:module_name __module_name) "")
    ((:version __version) "")
    ((:info __info) "")
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _timestamp_sec (float __timestamp_sec))
   (setq _module_name (string __module_name))
   (setq _version (string __version))
   (setq _info (string __info))
   (setq _status (round __status))
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
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp_sec
    8
    ;; string _module_name
    4 (length _module_name)
    ;; string _version
    4 (length _version)
    ;; string _info
    4 (length _info)
    ;; int8 _status
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
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;; int8 _status
       (write-byte _status s)
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
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;;
   self)
  )

(setf (get common_msgs::CalibrationResult :md5sum-) "7389e3af2197513b2128e672d4f25be4")
(setf (get common_msgs::CalibrationResult :datatype-) "common_msgs/CalibrationResult")
(setf (get common_msgs::CalibrationResult :definition-)
      "float64  timestamp_sec
string 	module_name
string 	version
string 	info
int8 	status

")



(provide :common_msgs/CalibrationResult "7389e3af2197513b2128e672d4f25be4")


