;; Auto-generated. Do not edit!


(when (boundp 'navi_msgs::NaviTask)
  (if (not (find-package "NAVI_MSGS"))
    (make-package "NAVI_MSGS"))
  (shadow 'NaviTask (find-package "NAVI_MSGS")))
(unless (find-package "NAVI_MSGS::NAVITASK")
  (make-package "NAVI_MSGS::NAVITASK"))

(in-package "ROS")
;;//! \htmlinclude NaviTask.msg.html


(defclass navi_msgs::NaviTask
  :super ros::object
  :slots (_v_header _station_cntr _nav_pose ))

(defmethod navi_msgs::NaviTask
  (:init
   (&key
    ((:v_header __v_header) (instance navi_msgs::VehHeader :init))
    ((:station_cntr __station_cntr) 0)
    ((:nav_pose __nav_pose) ())
    )
   (send-super :init)
   (setq _v_header __v_header)
   (setq _station_cntr (round __station_cntr))
   (setq _nav_pose __nav_pose)
   self)
  (:v_header
   (&rest __v_header)
   (if (keywordp (car __v_header))
       (send* _v_header __v_header)
     (progn
       (if __v_header (setq _v_header (car __v_header)))
       _v_header)))
  (:station_cntr
   (&optional __station_cntr)
   (if __station_cntr (setq _station_cntr __station_cntr)) _station_cntr)
  (:nav_pose
   (&rest __nav_pose)
   (if (keywordp (car __nav_pose))
       (send* _nav_pose __nav_pose)
     (progn
       (if __nav_pose (setq _nav_pose (car __nav_pose)))
       _nav_pose)))
  (:serialization-length
   ()
   (+
    ;; navi_msgs/VehHeader _v_header
    (send _v_header :serialization-length)
    ;; int32 _station_cntr
    4
    ;; navi_msgs/StationPoint[] _nav_pose
    (apply #'+ (send-all _nav_pose :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; navi_msgs/VehHeader _v_header
       (send _v_header :serialize s)
     ;; int32 _station_cntr
       (write-long _station_cntr s)
     ;; navi_msgs/StationPoint[] _nav_pose
     (write-long (length _nav_pose) s)
     (dolist (elem _nav_pose)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; navi_msgs/VehHeader _v_header
     (send _v_header :deserialize buf ptr-) (incf ptr- (send _v_header :serialization-length))
   ;; int32 _station_cntr
     (setq _station_cntr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; navi_msgs/StationPoint[] _nav_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nav_pose (let (r) (dotimes (i n) (push (instance navi_msgs::StationPoint :init) r)) r))
     (dolist (elem- _nav_pose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get navi_msgs::NaviTask :md5sum-) "cbeb6d361fd989a080e278524d680bf9")
(setf (get navi_msgs::NaviTask :datatype-) "navi_msgs/NaviTask")
(setf (get navi_msgs::NaviTask :definition-)
      "VehHeader v_header
int32 station_cntr	
StationPoint[] nav_pose

================================================================================
MSG: navi_msgs/VehHeader
uint16 veh_id
TimeStamp time
================================================================================
MSG: navi_msgs/TimeStamp
uint64 s
uint64 ns
================================================================================
MSG: navi_msgs/StationPoint
float64 x
float64 y
uint16 station_id

")



(provide :navi_msgs/NaviTask "cbeb6d361fd989a080e278524d680bf9")


