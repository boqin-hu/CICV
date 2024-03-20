;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::TimeStatus)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'TimeStatus (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::TIMESTATUS")
  (make-package "COMMON_MSGS::TIMESTATUS"))

(in-package "ROS")
;;//! \htmlinclude TimeStatus.msg.html


(defclass common_msgs::TimeStatus
  :super ros::object
  :slots (_dtime _source_node_name _destination_node_name ))

(defmethod common_msgs::TimeStatus
  (:init
   (&key
    ((:dtime __dtime) 0.0)
    ((:source_node_name __source_node_name) "")
    ((:destination_node_name __destination_node_name) "")
    )
   (send-super :init)
   (setq _dtime (float __dtime))
   (setq _source_node_name (string __source_node_name))
   (setq _destination_node_name (string __destination_node_name))
   self)
  (:dtime
   (&optional __dtime)
   (if __dtime (setq _dtime __dtime)) _dtime)
  (:source_node_name
   (&optional __source_node_name)
   (if __source_node_name (setq _source_node_name __source_node_name)) _source_node_name)
  (:destination_node_name
   (&optional __destination_node_name)
   (if __destination_node_name (setq _destination_node_name __destination_node_name)) _destination_node_name)
  (:serialization-length
   ()
   (+
    ;; float64 _dtime
    8
    ;; string _source_node_name
    4 (length _source_node_name)
    ;; string _destination_node_name
    4 (length _destination_node_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _dtime
       (sys::poke _dtime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _source_node_name
       (write-long (length _source_node_name) s) (princ _source_node_name s)
     ;; string _destination_node_name
       (write-long (length _destination_node_name) s) (princ _destination_node_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _dtime
     (setq _dtime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _source_node_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source_node_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _destination_node_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _destination_node_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get common_msgs::TimeStatus :md5sum-) "781f191435805db497e08aa1e68d3eff")
(setf (get common_msgs::TimeStatus :datatype-) "common_msgs/TimeStatus")
(setf (get common_msgs::TimeStatus :definition-)
      "float64 	dtime
string 	source_node_name
string 	destination_node_name
")



(provide :common_msgs/TimeStatus "781f191435805db497e08aa1e68d3eff")


