
(cl:in-package :asdf)

(defsystem "canbus_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CanFault" :depends-on ("_package_CanFault"))
    (:file "_package_CanFault" :depends-on ("_package"))
  ))