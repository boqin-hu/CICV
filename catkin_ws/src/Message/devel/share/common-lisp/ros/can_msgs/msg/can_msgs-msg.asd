
(cl:in-package :asdf)

(defsystem "can_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CAN32A" :depends-on ("_package_CAN32A"))
    (:file "_package_CAN32A" :depends-on ("_package"))
  ))