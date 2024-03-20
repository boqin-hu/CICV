;; Auto-generated. Do not edit!


(when (boundp 'navi_msgs::TimeStamp)
  (if (not (find-package "NAVI_MSGS"))
    (make-package "NAVI_MSGS"))
  (shadow 'TimeStamp (find-package "NAVI_MSGS")))
(unless (find-package "NAVI_MSGS::TIMESTAMP")
  (make-package "NAVI_MSGS::TIMESTAMP"))

(in-package "ROS")
;;//! \htmlinclude TimeStamp.msg.html


(defclass navi_msgs::TimeStamp
  :super ros::object
  :slots (_s _ns ))

(defmethod navi_msgs::TimeStamp
  (:init
   (&key
    ((:s __s) 0)
    ((:ns __ns) 0)
    )
   (send-super :init)
   (setq _s (round __s))
   (setq _ns (round __ns))
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:ns
   (&optional __ns)
   (if __ns (setq _ns __ns)) _ns)
  (:serialization-length
   ()
   (+
    ;; uint64 _s
    8
    ;; uint64 _ns
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _s
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _s (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _s) (= (length (_s . bv)) 2)) ;; bignum
              (write-long (ash (elt (_s . bv) 0) 0) s)
              (write-long (ash (elt (_s . bv) 1) -1) s))
             ((and (class _s) (= (length (_s . bv)) 1)) ;; big1
              (write-long (elt (_s . bv) 0) s)
              (write-long (if (>= _s 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _s s)(write-long (if (>= _s 0) 0 #xffffffff) s)))
     ;; uint64 _ns
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ns (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ns) (= (length (_ns . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ns . bv) 0) 0) s)
              (write-long (ash (elt (_ns . bv) 1) -1) s))
             ((and (class _ns) (= (length (_ns . bv)) 1)) ;; big1
              (write-long (elt (_ns . bv) 0) s)
              (write-long (if (>= _ns 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ns s)(write-long (if (>= _ns 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _s
     
#+(or :alpha :irix6 :x86_64)
      (setf _s (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _s (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _ns
     
#+(or :alpha :irix6 :x86_64)
      (setf _ns (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ns (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get navi_msgs::TimeStamp :md5sum-) "239b6a0a87ff2c711f5fde0f2b68a67d")
(setf (get navi_msgs::TimeStamp :datatype-) "navi_msgs/TimeStamp")
(setf (get navi_msgs::TimeStamp :definition-)
      "uint64 s
uint64 ns
")



(provide :navi_msgs/TimeStamp "239b6a0a87ff2c711f5fde0f2b68a67d")


