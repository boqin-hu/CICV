;; Auto-generated. Do not edit!


(when (boundp 'control_msgs::control_sys)
  (if (not (find-package "CONTROL_MSGS"))
    (make-package "CONTROL_MSGS"))
  (shadow 'control_sys (find-package "CONTROL_MSGS")))
(unless (find-package "CONTROL_MSGS::CONTROL_SYS")
  (make-package "CONTROL_MSGS::CONTROL_SYS"))

(in-package "ROS")
;;//! \htmlinclude control_sys.msg.html


(defclass control_msgs::control_sys
  :super ros::object
  :slots (_lat_targetangle _lat_targettorque _vehicle_shiftposition _vehicle_sys_status _actuatormode _shiftposition _brakelight _reverselight _epb_status _vehicle_auto_enable _vehicle_lat_enable _vehicle_lon_enable _vehicle_epb_status _road_vaild_flag _calibration_flag _write_enable_flag _PowerFault _ComFault _USSFault _ChassisFault ))

(defmethod control_msgs::control_sys
  (:init
   (&key
    ((:lat_targetangle __lat_targetangle) 0.0)
    ((:lat_targettorque __lat_targettorque) 0.0)
    ((:vehicle_shiftposition __vehicle_shiftposition) 0)
    ((:vehicle_sys_status __vehicle_sys_status) 0)
    ((:actuatormode __actuatormode) 0)
    ((:shiftposition __shiftposition) 0)
    ((:brakelight __brakelight) 0)
    ((:reverselight __reverselight) 0)
    ((:epb_status __epb_status) 0)
    ((:vehicle_auto_enable __vehicle_auto_enable) nil)
    ((:vehicle_lat_enable __vehicle_lat_enable) nil)
    ((:vehicle_lon_enable __vehicle_lon_enable) nil)
    ((:vehicle_epb_status __vehicle_epb_status) nil)
    ((:road_vaild_flag __road_vaild_flag) nil)
    ((:calibration_flag __calibration_flag) nil)
    ((:write_enable_flag __write_enable_flag) nil)
    ((:PowerFault __PowerFault) 0)
    ((:ComFault __ComFault) 0)
    ((:USSFault __USSFault) 0)
    ((:ChassisFault __ChassisFault) 0)
    )
   (send-super :init)
   (setq _lat_targetangle (float __lat_targetangle))
   (setq _lat_targettorque (float __lat_targettorque))
   (setq _vehicle_shiftposition (round __vehicle_shiftposition))
   (setq _vehicle_sys_status (round __vehicle_sys_status))
   (setq _actuatormode (round __actuatormode))
   (setq _shiftposition (round __shiftposition))
   (setq _brakelight (round __brakelight))
   (setq _reverselight (round __reverselight))
   (setq _epb_status (round __epb_status))
   (setq _vehicle_auto_enable __vehicle_auto_enable)
   (setq _vehicle_lat_enable __vehicle_lat_enable)
   (setq _vehicle_lon_enable __vehicle_lon_enable)
   (setq _vehicle_epb_status __vehicle_epb_status)
   (setq _road_vaild_flag __road_vaild_flag)
   (setq _calibration_flag __calibration_flag)
   (setq _write_enable_flag __write_enable_flag)
   (setq _PowerFault (round __PowerFault))
   (setq _ComFault (round __ComFault))
   (setq _USSFault (round __USSFault))
   (setq _ChassisFault (round __ChassisFault))
   self)
  (:lat_targetangle
   (&optional __lat_targetangle)
   (if __lat_targetangle (setq _lat_targetangle __lat_targetangle)) _lat_targetangle)
  (:lat_targettorque
   (&optional __lat_targettorque)
   (if __lat_targettorque (setq _lat_targettorque __lat_targettorque)) _lat_targettorque)
  (:vehicle_shiftposition
   (&optional __vehicle_shiftposition)
   (if __vehicle_shiftposition (setq _vehicle_shiftposition __vehicle_shiftposition)) _vehicle_shiftposition)
  (:vehicle_sys_status
   (&optional __vehicle_sys_status)
   (if __vehicle_sys_status (setq _vehicle_sys_status __vehicle_sys_status)) _vehicle_sys_status)
  (:actuatormode
   (&optional __actuatormode)
   (if __actuatormode (setq _actuatormode __actuatormode)) _actuatormode)
  (:shiftposition
   (&optional __shiftposition)
   (if __shiftposition (setq _shiftposition __shiftposition)) _shiftposition)
  (:brakelight
   (&optional __brakelight)
   (if __brakelight (setq _brakelight __brakelight)) _brakelight)
  (:reverselight
   (&optional __reverselight)
   (if __reverselight (setq _reverselight __reverselight)) _reverselight)
  (:epb_status
   (&optional __epb_status)
   (if __epb_status (setq _epb_status __epb_status)) _epb_status)
  (:vehicle_auto_enable
   (&optional (__vehicle_auto_enable :null))
   (if (not (eq __vehicle_auto_enable :null)) (setq _vehicle_auto_enable __vehicle_auto_enable)) _vehicle_auto_enable)
  (:vehicle_lat_enable
   (&optional (__vehicle_lat_enable :null))
   (if (not (eq __vehicle_lat_enable :null)) (setq _vehicle_lat_enable __vehicle_lat_enable)) _vehicle_lat_enable)
  (:vehicle_lon_enable
   (&optional (__vehicle_lon_enable :null))
   (if (not (eq __vehicle_lon_enable :null)) (setq _vehicle_lon_enable __vehicle_lon_enable)) _vehicle_lon_enable)
  (:vehicle_epb_status
   (&optional (__vehicle_epb_status :null))
   (if (not (eq __vehicle_epb_status :null)) (setq _vehicle_epb_status __vehicle_epb_status)) _vehicle_epb_status)
  (:road_vaild_flag
   (&optional (__road_vaild_flag :null))
   (if (not (eq __road_vaild_flag :null)) (setq _road_vaild_flag __road_vaild_flag)) _road_vaild_flag)
  (:calibration_flag
   (&optional (__calibration_flag :null))
   (if (not (eq __calibration_flag :null)) (setq _calibration_flag __calibration_flag)) _calibration_flag)
  (:write_enable_flag
   (&optional (__write_enable_flag :null))
   (if (not (eq __write_enable_flag :null)) (setq _write_enable_flag __write_enable_flag)) _write_enable_flag)
  (:PowerFault
   (&optional __PowerFault)
   (if __PowerFault (setq _PowerFault __PowerFault)) _PowerFault)
  (:ComFault
   (&optional __ComFault)
   (if __ComFault (setq _ComFault __ComFault)) _ComFault)
  (:USSFault
   (&optional __USSFault)
   (if __USSFault (setq _USSFault __USSFault)) _USSFault)
  (:ChassisFault
   (&optional __ChassisFault)
   (if __ChassisFault (setq _ChassisFault __ChassisFault)) _ChassisFault)
  (:serialization-length
   ()
   (+
    ;; float32 _lat_targetangle
    4
    ;; float32 _lat_targettorque
    4
    ;; int16 _vehicle_shiftposition
    2
    ;; int16 _vehicle_sys_status
    2
    ;; int16 _actuatormode
    2
    ;; int16 _shiftposition
    2
    ;; int16 _brakelight
    2
    ;; int16 _reverselight
    2
    ;; int16 _epb_status
    2
    ;; bool _vehicle_auto_enable
    1
    ;; bool _vehicle_lat_enable
    1
    ;; bool _vehicle_lon_enable
    1
    ;; bool _vehicle_epb_status
    1
    ;; bool _road_vaild_flag
    1
    ;; bool _calibration_flag
    1
    ;; bool _write_enable_flag
    1
    ;; int16 _PowerFault
    2
    ;; int16 _ComFault
    2
    ;; int16 _USSFault
    2
    ;; int16 _ChassisFault
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _lat_targetangle
       (sys::poke _lat_targetangle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lat_targettorque
       (sys::poke _lat_targettorque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _vehicle_shiftposition
       (write-word _vehicle_shiftposition s)
     ;; int16 _vehicle_sys_status
       (write-word _vehicle_sys_status s)
     ;; int16 _actuatormode
       (write-word _actuatormode s)
     ;; int16 _shiftposition
       (write-word _shiftposition s)
     ;; int16 _brakelight
       (write-word _brakelight s)
     ;; int16 _reverselight
       (write-word _reverselight s)
     ;; int16 _epb_status
       (write-word _epb_status s)
     ;; bool _vehicle_auto_enable
       (if _vehicle_auto_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _vehicle_lat_enable
       (if _vehicle_lat_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _vehicle_lon_enable
       (if _vehicle_lon_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _vehicle_epb_status
       (if _vehicle_epb_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _road_vaild_flag
       (if _road_vaild_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _calibration_flag
       (if _calibration_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _write_enable_flag
       (if _write_enable_flag (write-byte -1 s) (write-byte 0 s))
     ;; int16 _PowerFault
       (write-word _PowerFault s)
     ;; int16 _ComFault
       (write-word _ComFault s)
     ;; int16 _USSFault
       (write-word _USSFault s)
     ;; int16 _ChassisFault
       (write-word _ChassisFault s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _lat_targetangle
     (setq _lat_targetangle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lat_targettorque
     (setq _lat_targettorque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _vehicle_shiftposition
     (setq _vehicle_shiftposition (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _vehicle_sys_status
     (setq _vehicle_sys_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _actuatormode
     (setq _actuatormode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _shiftposition
     (setq _shiftposition (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _brakelight
     (setq _brakelight (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _reverselight
     (setq _reverselight (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _epb_status
     (setq _epb_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _vehicle_auto_enable
     (setq _vehicle_auto_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vehicle_lat_enable
     (setq _vehicle_lat_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vehicle_lon_enable
     (setq _vehicle_lon_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vehicle_epb_status
     (setq _vehicle_epb_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _road_vaild_flag
     (setq _road_vaild_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _calibration_flag
     (setq _calibration_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _write_enable_flag
     (setq _write_enable_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _PowerFault
     (setq _PowerFault (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ComFault
     (setq _ComFault (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _USSFault
     (setq _USSFault (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ChassisFault
     (setq _ChassisFault (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get control_msgs::control_sys :md5sum-) "d52a3c865eee57fb22d3fe059b3266b6")
(setf (get control_msgs::control_sys :datatype-) "control_msgs/control_sys")
(setf (get control_msgs::control_sys :definition-)
      "float32   lat_targetangle
float32   lat_targettorque
int16     vehicle_shiftposition
int16     vehicle_sys_status
int16     actuatormode
int16     shiftposition
int16     brakelight
int16     reverselight
int16     epb_status
bool      vehicle_auto_enable
bool      vehicle_lat_enable
bool      vehicle_lon_enable
bool      vehicle_epb_status
bool      road_vaild_flag
bool      calibration_flag
bool      write_enable_flag
int16     PowerFault
int16     ComFault
int16     USSFault
int16     ChassisFault

")



(provide :control_msgs/control_sys "d52a3c865eee57fb22d3fe059b3266b6")


