;; Auto-generated. Do not edit!


(when (boundp 'navi_msgs::NavParas)
  (if (not (find-package "NAVI_MSGS"))
    (make-package "NAVI_MSGS"))
  (shadow 'NavParas (find-package "NAVI_MSGS")))
(unless (find-package "NAVI_MSGS::NAVPARAS")
  (make-package "NAVI_MSGS::NAVPARAS"))

(in-package "ROS")
;;//! \htmlinclude NavParas.msg.html


(defclass navi_msgs::NavParas
  :super ros::object
  :slots (_nav_operate _station_id _end_point ))

(defmethod navi_msgs::NavParas
  (:init
   (&key
    ((:nav_operate __nav_operate) "")
    ((:station_id __station_id) 0)
    ((:end_point __end_point) (instance navi_msgs::Point2D :init))
    )
   (send-super :init)
   (setq _nav_operate (string __nav_operate))
   (setq _station_id (round __station_id))
   (setq _end_point __end_point)
   self)
  (:nav_operate
   (&optional __nav_operate)
   (if __nav_operate (setq _nav_operate __nav_operate)) _nav_operate)
  (:station_id
   (&optional __station_id)
   (if __station_id (setq _station_id __station_id)) _station_id)
  (:end_point
   (&rest __end_point)
   (if (keywordp (car __end_point))
       (send* _end_point __end_point)
     (progn
       (if __end_point (setq _end_point (car __end_point)))
       _end_point)))
  (:serialization-length
   ()
   (+
    ;; string _nav_operate
    4 (length _nav_operate)
    ;; uint32 _station_id
    4
    ;; navi_msgs/Point2D _end_point
    (send _end_point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _nav_operate
       (write-long (length _nav_operate) s) (princ _nav_operate s)
     ;; uint32 _station_id
       (write-long _station_id s)
     ;; navi_msgs/Point2D _end_point
       (send _end_point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _nav_operate
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nav_operate (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _station_id
     (setq _station_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; navi_msgs/Point2D _end_point
     (send _end_point :deserialize buf ptr-) (incf ptr- (send _end_point :serialization-length))
   ;;
   self)
  )

(setf (get navi_msgs::NavParas :md5sum-) "922cf09137c76b3b8e2d97ff35c31b17")
(setf (get navi_msgs::NavParas :datatype-) "navi_msgs/NavParas")
(setf (get navi_msgs::NavParas :definition-)
      "string nav_operate 
uint32 station_id
Point2D end_point


================================================================================
MSG: navi_msgs/Point2D
float64 x
float64 y
")



(provide :navi_msgs/NavParas "922cf09137c76b3b8e2d97ff35c31b17")


