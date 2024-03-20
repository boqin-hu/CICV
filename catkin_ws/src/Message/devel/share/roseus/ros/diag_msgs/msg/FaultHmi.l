;; Auto-generated. Do not edit!


(when (boundp 'diag_msgs::FaultHmi)
  (if (not (find-package "DIAG_MSGS"))
    (make-package "DIAG_MSGS"))
  (shadow 'FaultHmi (find-package "DIAG_MSGS")))
(unless (find-package "DIAG_MSGS::FAULTHMI")
  (make-package "DIAG_MSGS::FAULTHMI"))

(in-package "ROS")
;;//! \htmlinclude FaultHmi.msg.html


(defclass diag_msgs::FaultHmi
  :super ros::object
  :slots (_timestamp_sec _event_id _interactive _error_code _msg _event_type ))

(defmethod diag_msgs::FaultHmi
  (:init
   (&key
    ((:timestamp_sec __timestamp_sec) 0.0)
    ((:event_id __event_id) 0)
    ((:interactive __interactive) 0)
    ((:error_code __error_code) 0)
    ((:msg __msg) "")
    ((:event_type __event_type) 0)
    )
   (send-super :init)
   (setq _timestamp_sec (float __timestamp_sec))
   (setq _event_id (round __event_id))
   (setq _interactive (round __interactive))
   (setq _error_code (round __error_code))
   (setq _msg (string __msg))
   (setq _event_type (round __event_type))
   self)
  (:timestamp_sec
   (&optional __timestamp_sec)
   (if __timestamp_sec (setq _timestamp_sec __timestamp_sec)) _timestamp_sec)
  (:event_id
   (&optional __event_id)
   (if __event_id (setq _event_id __event_id)) _event_id)
  (:interactive
   (&optional __interactive)
   (if __interactive (setq _interactive __interactive)) _interactive)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:event_type
   (&optional __event_type)
   (if __event_type (setq _event_type __event_type)) _event_type)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp_sec
    8
    ;; int32 _event_id
    4
    ;; int32 _interactive
    4
    ;; int32 _error_code
    4
    ;; string _msg
    4 (length _msg)
    ;; int32 _event_type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp_sec
       (sys::poke _timestamp_sec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _event_id
       (write-long _event_id s)
     ;; int32 _interactive
       (write-long _interactive s)
     ;; int32 _error_code
       (write-long _error_code s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;; int32 _event_type
       (write-long _event_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp_sec
     (setq _timestamp_sec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _event_id
     (setq _event_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _interactive
     (setq _interactive (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _event_type
     (setq _event_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get diag_msgs::FaultHmi :md5sum-) "30009e522ed486022cfeb6ce5fc06580")
(setf (get diag_msgs::FaultHmi :datatype-) "diag_msgs/FaultHmi")
(setf (get diag_msgs::FaultHmi :definition-)
      "float64   timestamp_sec
int32     event_id
int32     interactive
int32     error_code
string    msg
int32     event_type

")



(provide :diag_msgs/FaultHmi "30009e522ed486022cfeb6ce5fc06580")


