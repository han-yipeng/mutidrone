;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::Rpms)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'Rpms (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::RPMS")
  (make-package "QUADROTOR_MSGS::RPMS"))

(in-package "ROS")
;;//! \htmlinclude Rpms.msg.html


(defclass quadrotor_msgs::Rpms
  :super ros::object
  :slots (_rpm0 _rpm1 _rpm2 _rpm3 ))

(defmethod quadrotor_msgs::Rpms
  (:init
   (&key
    ((:rpm0 __rpm0) 0.0)
    ((:rpm1 __rpm1) 0.0)
    ((:rpm2 __rpm2) 0.0)
    ((:rpm3 __rpm3) 0.0)
    )
   (send-super :init)
   (setq _rpm0 (float __rpm0))
   (setq _rpm1 (float __rpm1))
   (setq _rpm2 (float __rpm2))
   (setq _rpm3 (float __rpm3))
   self)
  (:rpm0
   (&optional __rpm0)
   (if __rpm0 (setq _rpm0 __rpm0)) _rpm0)
  (:rpm1
   (&optional __rpm1)
   (if __rpm1 (setq _rpm1 __rpm1)) _rpm1)
  (:rpm2
   (&optional __rpm2)
   (if __rpm2 (setq _rpm2 __rpm2)) _rpm2)
  (:rpm3
   (&optional __rpm3)
   (if __rpm3 (setq _rpm3 __rpm3)) _rpm3)
  (:serialization-length
   ()
   (+
    ;; float64 _rpm0
    8
    ;; float64 _rpm1
    8
    ;; float64 _rpm2
    8
    ;; float64 _rpm3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _rpm0
       (sys::poke _rpm0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm1
       (sys::poke _rpm1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm2
       (sys::poke _rpm2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rpm3
       (sys::poke _rpm3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _rpm0
     (setq _rpm0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm1
     (setq _rpm1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm2
     (setq _rpm2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rpm3
     (setq _rpm3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get quadrotor_msgs::Rpms :md5sum-) "8f34c377dbbd6cd5c05fde291e41b791")
(setf (get quadrotor_msgs::Rpms :datatype-) "quadrotor_msgs/Rpms")
(setf (get quadrotor_msgs::Rpms :definition-)
      "float64 rpm0
float64 rpm1
float64 rpm2
float64 rpm3

")



(provide :quadrotor_msgs/Rpms "8f34c377dbbd6cd5c05fde291e41b791")


