;; Auto-generated. Do not edit!


(when (boundp 'diag_msgs::FaultHmiVec)
  (if (not (find-package "DIAG_MSGS"))
    (make-package "DIAG_MSGS"))
  (shadow 'FaultHmiVec (find-package "DIAG_MSGS")))
(unless (find-package "DIAG_MSGS::FAULTHMIVEC")
  (make-package "DIAG_MSGS::FAULTHMIVEC"))

(in-package "ROS")
;;//! \htmlinclude FaultHmiVec.msg.html


(defclass diag_msgs::FaultHmiVec
  :super ros::object
  :slots (_hmi_vec ))

(defmethod diag_msgs::FaultHmiVec
  (:init
   (&key
    ((:hmi_vec __hmi_vec) ())
    )
   (send-super :init)
   (setq _hmi_vec __hmi_vec)
   self)
  (:hmi_vec
   (&rest __hmi_vec)
   (if (keywordp (car __hmi_vec))
       (send* _hmi_vec __hmi_vec)
     (progn
       (if __hmi_vec (setq _hmi_vec (car __hmi_vec)))
       _hmi_vec)))
  (:serialization-length
   ()
   (+
    ;; diag_msgs/FaultHmi[] _hmi_vec
    (apply #'+ (send-all _hmi_vec :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; diag_msgs/FaultHmi[] _hmi_vec
     (write-long (length _hmi_vec) s)
     (dolist (elem _hmi_vec)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; diag_msgs/FaultHmi[] _hmi_vec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hmi_vec (let (r) (dotimes (i n) (push (instance diag_msgs::FaultHmi :init) r)) r))
     (dolist (elem- _hmi_vec)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get diag_msgs::FaultHmiVec :md5sum-) "da59b13fe1c36e593adbfb404b2845a3")
(setf (get diag_msgs::FaultHmiVec :datatype-) "diag_msgs/FaultHmiVec")
(setf (get diag_msgs::FaultHmiVec :definition-)
      "FaultHmi[] 	hmi_vec

================================================================================
MSG: diag_msgs/FaultHmi
float64   timestamp_sec
int32     event_id
int32     interactive
int32     error_code
string    msg
int32     event_type

")



(provide :diag_msgs/FaultHmiVec "da59b13fe1c36e593adbfb404b2845a3")


