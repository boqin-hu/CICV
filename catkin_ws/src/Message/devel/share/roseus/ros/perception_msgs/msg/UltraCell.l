;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::UltraCell)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'UltraCell (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::ULTRACELL")
  (make-package "PERCEPTION_MSGS::ULTRACELL"))

(in-package "ROS")
;;//! \htmlinclude UltraCell.msg.html


(defclass perception_msgs::UltraCell
  :super ros::object
  :slots (_id _direct_dist _indirect_dist _status ))

(defmethod perception_msgs::UltraCell
  (:init
   (&key
    ((:id __id) 0)
    ((:direct_dist __direct_dist) 0.0)
    ((:indirect_dist __indirect_dist) 0.0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _direct_dist (float __direct_dist))
   (setq _indirect_dist (float __indirect_dist))
   (setq _status (round __status))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:direct_dist
   (&optional __direct_dist)
   (if __direct_dist (setq _direct_dist __direct_dist)) _direct_dist)
  (:indirect_dist
   (&optional __indirect_dist)
   (if __indirect_dist (setq _indirect_dist __indirect_dist)) _indirect_dist)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float32 _direct_dist
    4
    ;; float32 _indirect_dist
    4
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float32 _direct_dist
       (sys::poke _direct_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _indirect_dist
       (sys::poke _indirect_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _direct_dist
     (setq _direct_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _indirect_dist
     (setq _indirect_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_msgs::UltraCell :md5sum-) "67a3d6d891c19fe871cf9831066c666a")
(setf (get perception_msgs::UltraCell :datatype-) "perception_msgs/UltraCell")
(setf (get perception_msgs::UltraCell :definition-)
      "int32   id
float32 direct_dist
float32 indirect_dist
int32   status

")



(provide :perception_msgs/UltraCell "67a3d6d891c19fe871cf9831066c666a")


