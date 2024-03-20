;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::TrajectoryInfo)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'TrajectoryInfo (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::TRAJECTORYINFO")
  (make-package "PERCEPTION_MSGS::TRAJECTORYINFO"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryInfo.msg.html


(defclass perception_msgs::TrajectoryInfo
  :super ros::object
  :slots (_path_id _total_path_length _total_path_time _decision_type _light_type _lane_ids _trajectorypoints ))

(defmethod perception_msgs::TrajectoryInfo
  (:init
   (&key
    ((:path_id __path_id) 0)
    ((:total_path_length __total_path_length) 0.0)
    ((:total_path_time __total_path_time) 0.0)
    ((:decision_type __decision_type) 0)
    ((:light_type __light_type) 0)
    ((:lane_ids __lane_ids) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:trajectorypoints __trajectorypoints) ())
    )
   (send-super :init)
   (setq _path_id (round __path_id))
   (setq _total_path_length (float __total_path_length))
   (setq _total_path_time (float __total_path_time))
   (setq _decision_type (round __decision_type))
   (setq _light_type (round __light_type))
   (setq _lane_ids __lane_ids)
   (setq _trajectorypoints __trajectorypoints)
   self)
  (:path_id
   (&optional __path_id)
   (if __path_id (setq _path_id __path_id)) _path_id)
  (:total_path_length
   (&optional __total_path_length)
   (if __total_path_length (setq _total_path_length __total_path_length)) _total_path_length)
  (:total_path_time
   (&optional __total_path_time)
   (if __total_path_time (setq _total_path_time __total_path_time)) _total_path_time)
  (:decision_type
   (&optional __decision_type)
   (if __decision_type (setq _decision_type __decision_type)) _decision_type)
  (:light_type
   (&optional __light_type)
   (if __light_type (setq _light_type __light_type)) _light_type)
  (:lane_ids
   (&optional __lane_ids)
   (if __lane_ids (setq _lane_ids __lane_ids)) _lane_ids)
  (:trajectorypoints
   (&rest __trajectorypoints)
   (if (keywordp (car __trajectorypoints))
       (send* _trajectorypoints __trajectorypoints)
     (progn
       (if __trajectorypoints (setq _trajectorypoints (car __trajectorypoints)))
       _trajectorypoints)))
  (:serialization-length
   ()
   (+
    ;; int32 _path_id
    4
    ;; float32 _total_path_length
    4
    ;; float32 _total_path_time
    4
    ;; int8 _decision_type
    1
    ;; int8 _light_type
    1
    ;; string[] _lane_ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _lane_ids)) 4
    ;; perception_msgs/TrajectoryPoint[] _trajectorypoints
    (apply #'+ (send-all _trajectorypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _path_id
       (write-long _path_id s)
     ;; float32 _total_path_length
       (sys::poke _total_path_length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _total_path_time
       (sys::poke _total_path_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _decision_type
       (write-byte _decision_type s)
     ;; int8 _light_type
       (write-byte _light_type s)
     ;; string[] _lane_ids
     (write-long (length _lane_ids) s)
     (dolist (elem _lane_ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;; perception_msgs/TrajectoryPoint[] _trajectorypoints
     (write-long (length _trajectorypoints) s)
     (dolist (elem _trajectorypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _path_id
     (setq _path_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _total_path_length
     (setq _total_path_length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _total_path_time
     (setq _total_path_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _decision_type
     (setq _decision_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _decision_type 127) (setq _decision_type (- _decision_type 256)))
   ;; int8 _light_type
     (setq _light_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _light_type 127) (setq _light_type (- _light_type 256)))
   ;; string[] _lane_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _lane_ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; perception_msgs/TrajectoryPoint[] _trajectorypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectorypoints (let (r) (dotimes (i n) (push (instance perception_msgs::TrajectoryPoint :init) r)) r))
     (dolist (elem- _trajectorypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_msgs::TrajectoryInfo :md5sum-) "c7d900a70debd0d52467ed4c06e4dc57")
(setf (get perception_msgs::TrajectoryInfo :datatype-) "perception_msgs/TrajectoryInfo")
(setf (get perception_msgs::TrajectoryInfo :definition-)
      "int32 path_id
float32 total_path_length
float32 total_path_time
int8 decision_type
int8 light_type
string[] lane_ids
TrajectoryPoint[] trajectorypoints

================================================================================
MSG: perception_msgs/TrajectoryPoint
Point2D position
float32 velocity
float32 heading
float32 curvature
float32 s
float32 t
int8 point_type

================================================================================
MSG: perception_msgs/Point2D
float64 x
float64 y

")



(provide :perception_msgs/TrajectoryInfo "c7d900a70debd0d52467ed4c06e4dc57")


