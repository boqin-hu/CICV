;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::response)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'response (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::RESPONSE")
  (make-package "COMMON_MSGS::RESPONSE"))

(in-package "ROS")
;;//! \htmlinclude response.msg.html


(defclass common_msgs::response
  :super ros::object
  :slots (_response_ID _sub_ID _response_data _slightfault _middlefault _severfault _deadlyfault _info_vec ))

(defmethod common_msgs::response
  (:init
   (&key
    ((:response_ID __response_ID) 0)
    ((:sub_ID __sub_ID) 0)
    ((:response_data __response_data) 0)
    ((:slightfault __slightfault) 0)
    ((:middlefault __middlefault) 0)
    ((:severfault __severfault) 0)
    ((:deadlyfault __deadlyfault) 0)
    ((:info_vec __info_vec) ())
    )
   (send-super :init)
   (setq _response_ID (round __response_ID))
   (setq _sub_ID (round __sub_ID))
   (setq _response_data (round __response_data))
   (setq _slightfault (round __slightfault))
   (setq _middlefault (round __middlefault))
   (setq _severfault (round __severfault))
   (setq _deadlyfault (round __deadlyfault))
   (setq _info_vec __info_vec)
   self)
  (:response_ID
   (&optional __response_ID)
   (if __response_ID (setq _response_ID __response_ID)) _response_ID)
  (:sub_ID
   (&optional __sub_ID)
   (if __sub_ID (setq _sub_ID __sub_ID)) _sub_ID)
  (:response_data
   (&optional __response_data)
   (if __response_data (setq _response_data __response_data)) _response_data)
  (:slightfault
   (&optional __slightfault)
   (if __slightfault (setq _slightfault __slightfault)) _slightfault)
  (:middlefault
   (&optional __middlefault)
   (if __middlefault (setq _middlefault __middlefault)) _middlefault)
  (:severfault
   (&optional __severfault)
   (if __severfault (setq _severfault __severfault)) _severfault)
  (:deadlyfault
   (&optional __deadlyfault)
   (if __deadlyfault (setq _deadlyfault __deadlyfault)) _deadlyfault)
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
    ;; int8 _response_ID
    1
    ;; int8 _sub_ID
    1
    ;; int8 _response_data
    1
    ;; int8 _slightfault
    1
    ;; int8 _middlefault
    1
    ;; int8 _severfault
    1
    ;; int8 _deadlyfault
    1
    ;; common_msgs/FaultInfo[] _info_vec
    (apply #'+ (send-all _info_vec :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _response_ID
       (write-byte _response_ID s)
     ;; int8 _sub_ID
       (write-byte _sub_ID s)
     ;; int8 _response_data
       (write-byte _response_data s)
     ;; int8 _slightfault
       (write-byte _slightfault s)
     ;; int8 _middlefault
       (write-byte _middlefault s)
     ;; int8 _severfault
       (write-byte _severfault s)
     ;; int8 _deadlyfault
       (write-byte _deadlyfault s)
     ;; common_msgs/FaultInfo[] _info_vec
     (write-long (length _info_vec) s)
     (dolist (elem _info_vec)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _response_ID
     (setq _response_ID (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _response_ID 127) (setq _response_ID (- _response_ID 256)))
   ;; int8 _sub_ID
     (setq _sub_ID (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _sub_ID 127) (setq _sub_ID (- _sub_ID 256)))
   ;; int8 _response_data
     (setq _response_data (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _response_data 127) (setq _response_data (- _response_data 256)))
   ;; int8 _slightfault
     (setq _slightfault (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _slightfault 127) (setq _slightfault (- _slightfault 256)))
   ;; int8 _middlefault
     (setq _middlefault (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _middlefault 127) (setq _middlefault (- _middlefault 256)))
   ;; int8 _severfault
     (setq _severfault (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _severfault 127) (setq _severfault (- _severfault 256)))
   ;; int8 _deadlyfault
     (setq _deadlyfault (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _deadlyfault 127) (setq _deadlyfault (- _deadlyfault 256)))
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

(setf (get common_msgs::response :md5sum-) "d370e960b936f004fa2ba4ee8e469d8d")
(setf (get common_msgs::response :datatype-) "common_msgs/response")
(setf (get common_msgs::response :definition-)
      "int8   response_ID
int8   sub_ID
int8  response_data
int8  slightfault
int8  middlefault
int8  severfault 
int8  deadlyfault 
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



(provide :common_msgs/response "d370e960b936f004fa2ba4ee8e469d8d")


