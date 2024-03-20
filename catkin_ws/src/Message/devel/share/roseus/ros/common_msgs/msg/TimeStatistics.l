;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::TimeStatistics)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'TimeStatistics (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::TIMESTATISTICS")
  (make-package "COMMON_MSGS::TIMESTATISTICS"))

(in-package "ROS")
;;//! \htmlinclude TimeStatistics.msg.html


(defclass common_msgs::TimeStatistics
  :super ros::object
  :slots (_dev_time_status_msg _sending_timestamp ))

(defmethod common_msgs::TimeStatistics
  (:init
   (&key
    ((:dev_time_status_msg __dev_time_status_msg) ())
    ((:sending_timestamp __sending_timestamp) 0.0)
    )
   (send-super :init)
   (setq _dev_time_status_msg __dev_time_status_msg)
   (setq _sending_timestamp (float __sending_timestamp))
   self)
  (:dev_time_status_msg
   (&rest __dev_time_status_msg)
   (if (keywordp (car __dev_time_status_msg))
       (send* _dev_time_status_msg __dev_time_status_msg)
     (progn
       (if __dev_time_status_msg (setq _dev_time_status_msg (car __dev_time_status_msg)))
       _dev_time_status_msg)))
  (:sending_timestamp
   (&optional __sending_timestamp)
   (if __sending_timestamp (setq _sending_timestamp __sending_timestamp)) _sending_timestamp)
  (:serialization-length
   ()
   (+
    ;; common_msgs/TimeStatus[] _dev_time_status_msg
    (apply #'+ (send-all _dev_time_status_msg :serialization-length)) 4
    ;; float64 _sending_timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; common_msgs/TimeStatus[] _dev_time_status_msg
     (write-long (length _dev_time_status_msg) s)
     (dolist (elem _dev_time_status_msg)
       (send elem :serialize s)
       )
     ;; float64 _sending_timestamp
       (sys::poke _sending_timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; common_msgs/TimeStatus[] _dev_time_status_msg
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dev_time_status_msg (let (r) (dotimes (i n) (push (instance common_msgs::TimeStatus :init) r)) r))
     (dolist (elem- _dev_time_status_msg)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _sending_timestamp
     (setq _sending_timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get common_msgs::TimeStatistics :md5sum-) "92d8e806eb39fab86dbb2d3c912096f8")
(setf (get common_msgs::TimeStatistics :datatype-) "common_msgs/TimeStatistics")
(setf (get common_msgs::TimeStatistics :definition-)
      "TimeStatus[] 	dev_time_status_msg
float64 	sending_timestamp
================================================================================
MSG: common_msgs/TimeStatus
float64 	dtime
string 	source_node_name
string 	destination_node_name
")



(provide :common_msgs/TimeStatistics "92d8e806eb39fab86dbb2d3c912096f8")


