
(cl:in-package :asdf)

(defsystem "imu-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :common_msgs-msg
)
  :components ((:file "_package")
    (:file "LocalizationControl" :depends-on ("_package_LocalizationControl"))
    (:file "_package_LocalizationControl" :depends-on ("_package"))
    (:file "SensorImu" :depends-on ("_package_SensorImu"))
    (:file "_package_SensorImu" :depends-on ("_package"))
  ))