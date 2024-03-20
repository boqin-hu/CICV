;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::request)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'request (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::REQUEST")
  (make-package "COMMON_MSGS::REQUEST"))

(in-package "ROS")
;;//! \htmlinclude request.msg.html


(defclass common_msgs::request
  :super ros::object
  :slots (_diag_ID _sub_ID _diag_data _info_vec ))

(defmethod common_msgs::request
  (:init
   (&key
    ((:diag_ID __diag_ID) 0)
    ((:sub_ID __sub_ID) 0)
    ((:diag_data __diag_data) 0)
    ((:info_vec __info_vec) ())
    )
   (send-super :init)
   (setq _diag_ID (round __diag_ID))
   (setq _sub_ID (round __sub_ID))
   (setq _diag_data (round __diag_data))
   (setq _info_vec __info_vec)
   self)
  (:diag_ID
   (&optional __diag_ID)
   (if __diag_ID (setq _diag_ID __diag_ID)) _diag_ID)
  (:sub_ID
   (&optional __sub_ID)
   (if __sub_ID (setq _sub_ID __sub_ID)) _sub_ID)
  (:diag_data
   (&optional __diag_data)
   (if __diag_data (setq _diag_data __diag_data)) _diag_data)
  (:info_vec
   (&rest __info_vec)
   (if (keywordp (car __info_vec))
       (send* _info_vec __info_vec)
     (progn
       (if __info_vec (setq _info_vec (car __info_vec)))
       _info_vec)))
  (:serialization-length
   ()
   (+
    ;; int8 _diag_ID
    1
    ;; int32 _sub_ID
    4
    ;; int32 _diag_data
    4
    ;; common_msgs/FaultInfo[] _info_vec
    (apply #'+ (send-all _info_vec :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _diag_ID
       (write-byte _diag_ID s)
     ;; int32 _sub_ID
       (write-long _sub_ID s)
     ;; int32 _diag_data
       (write-long _diag_data s)
     ;; common_msgs/FaultInfo[] _info_vec
     (write-long (length _info_vec) s)
     (dolist (elem _info_vec)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _diag_ID
     (setq _diag_ID (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _diag_ID 127) (setq _diag_ID (- _diag_ID 256)))
   ;; int32 _sub_ID
     (setq _sub_ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _diag_data
     (setq _diag_data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; common_msgs/FaultInfo[] _info_vec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _info_vec (let (r) (dotimes (i n) (push (instance common_msgs::FaultInfo :init) r)) r))
     (dolist (elem- _info_vec)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get common_msgs::request :md5sum-) "8474d648f7f606e5d733ab5d6a81594f")
(setf (get common_msgs::request :datatype-) "common_msgs/request")
(setf (get common_msgs::request :definition-)
      "int8    diag_ID
int32    sub_ID 
int32   diag_data
FaultInfo[]    info_vec

================================================================================
MSG: common_msgs/FaultInfo
float64 	timestamp_sec
string 	module_name
string 	version
int32 	error_code
string 	msg
int8 	fault_level
int8 	fault_type
")



(provide :common_msgs/request "8474d648f7f606e5d733ab5d6a81594f")


