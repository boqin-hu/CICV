;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::UdpMsg)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'UdpMsg (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::UDPMSG")
  (make-package "COMMON_MSGS::UDPMSG"))

(in-package "ROS")
;;//! \htmlinclude UdpMsg.msg.html


(defclass common_msgs::UdpMsg
  :super ros::object
  :slots (_id _data ))

(defmethod common_msgs::UdpMsg
  (:init
   (&key
    ((:id __id) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _data __data)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get common_msgs::UdpMsg :md5sum-) "3c2d87a0c38a57b06a8a8c5c8e11972d")
(setf (get common_msgs::UdpMsg :datatype-) "common_msgs/UdpMsg")
(setf (get common_msgs::UdpMsg :definition-)
      "int32    id
uint8[] data

")



(provide :common_msgs/UdpMsg "3c2d87a0c38a57b06a8a8c5c8e11972d")


