;; Auto-generated. Do not edit!


(when (boundp 'navi_msgs::WifiInfo)
  (if (not (find-package "NAVI_MSGS"))
    (make-package "NAVI_MSGS"))
  (shadow 'WifiInfo (find-package "NAVI_MSGS")))
(unless (find-package "NAVI_MSGS::WIFIINFO")
  (make-package "NAVI_MSGS::WIFIINFO"))

(in-package "ROS")
;;//! \htmlinclude WifiInfo.msg.html


(defclass navi_msgs::WifiInfo
  :super ros::object
  :slots (_wifi_name _level ))

(defmethod navi_msgs::WifiInfo
  (:init
   (&key
    ((:wifi_name __wifi_name) "")
    ((:level __level) 0)
    )
   (send-super :init)
   (setq _wifi_name (string __wifi_name))
   (setq _level (round __level))
   self)
  (:wifi_name
   (&optional __wifi_name)
   (if __wifi_name (setq _wifi_name __wifi_name)) _wifi_name)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:serialization-length
   ()
   (+
    ;; string _wifi_name
    4 (length _wifi_name)
    ;; int32 _level
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _wifi_name
       (write-long (length _wifi_name) s) (princ _wifi_name s)
     ;; int32 _level
       (write-long _level s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _wifi_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _wifi_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _level
     (setq _level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get navi_msgs::WifiInfo :md5sum-) "2208983a79b60f616ffc67f0aae922b9")
(setf (get navi_msgs::WifiInfo :datatype-) "navi_msgs/WifiInfo")
(setf (get navi_msgs::WifiInfo :definition-)
      "string  wifi_name
int32  level

")



(provide :navi_msgs/WifiInfo "2208983a79b60f616ffc67f0aae922b9")


