
(cl:in-package :asdf)

(defsystem "map_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :common_msgs-msg
)
  :components ((:file "_package")
    (:file "MissionPoint" :depends-on ("_package_MissionPoint"))
    (:file "_package_MissionPoint" :depends-on ("_package"))
    (:file "RoutePlan" :depends-on ("_package_RoutePlan"))
    (:file "_package_RoutePlan" :depends-on ("_package"))
  ))