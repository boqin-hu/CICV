
(cl:in-package :asdf)

(defsystem "diag_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ErrorcodeInfo" :depends-on ("_package_ErrorcodeInfo"))
    (:file "_package_ErrorcodeInfo" :depends-on ("_package"))
    (:file "ErrorcodeVec" :depends-on ("_package_ErrorcodeVec"))
    (:file "_package_ErrorcodeVec" :depends-on ("_package"))
    (:file "FaultHmi" :depends-on ("_package_FaultHmi"))
    (:file "_package_FaultHmi" :depends-on ("_package"))
    (:file "FaultHmiVec" :depends-on ("_package_FaultHmiVec"))
    (:file "_package_FaultHmiVec" :depends-on ("_package"))
  ))