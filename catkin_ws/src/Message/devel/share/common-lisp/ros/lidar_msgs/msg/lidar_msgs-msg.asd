
(cl:in-package :asdf)

(defsystem "lidar_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :perception_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Centroids" :depends-on ("_package_Centroids"))
    (:file "_package_Centroids" :depends-on ("_package"))
    (:file "CloudCluster" :depends-on ("_package_CloudCluster"))
    (:file "_package_CloudCluster" :depends-on ("_package"))
    (:file "CloudClusterArray" :depends-on ("_package_CloudClusterArray"))
    (:file "_package_CloudClusterArray" :depends-on ("_package"))
    (:file "DetectedObject" :depends-on ("_package_DetectedObject"))
    (:file "_package_DetectedObject" :depends-on ("_package"))
    (:file "DetectedObjectArray" :depends-on ("_package_DetectedObjectArray"))
    (:file "_package_DetectedObjectArray" :depends-on ("_package"))
    (:file "LidarObject" :depends-on ("_package_LidarObject"))
    (:file "_package_LidarObject" :depends-on ("_package"))
    (:file "LidarObjectList" :depends-on ("_package_LidarObjectList"))
    (:file "_package_LidarObjectList" :depends-on ("_package"))
    (:file "ObjFusion" :depends-on ("_package_ObjFusion"))
    (:file "_package_ObjFusion" :depends-on ("_package"))
    (:file "ObjList" :depends-on ("_package_ObjList"))
    (:file "_package_ObjList" :depends-on ("_package"))
    (:file "ObjListArray" :depends-on ("_package_ObjListArray"))
    (:file "_package_ObjListArray" :depends-on ("_package"))
  ))