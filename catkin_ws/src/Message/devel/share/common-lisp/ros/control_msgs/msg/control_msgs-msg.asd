
(cl:in-package :asdf)

(defsystem "control_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "control_sys" :depends-on ("_package_control_sys"))
    (:file "_package_control_sys" :depends-on ("_package"))
  ))