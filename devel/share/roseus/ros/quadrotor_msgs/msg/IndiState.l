;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::IndiState)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'IndiState (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::INDISTATE")
  (make-package "QUADROTOR_MSGS::INDISTATE"))

(in-package "ROS")
;;//! \htmlinclude IndiState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quadrotor_msgs::IndiState
  :super ros::object
  :slots (_header _indiF _indiqt _indiqy _indiq _drpy _cp _cv _ca _cq _cF ))

(defmethod quadrotor_msgs::IndiState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:indiF __indiF) 0.0)
    ((:indiqt __indiqt) 0.0)
    ((:indiqy __indiqy) 0.0)
    ((:indiq __indiq) (instance geometry_msgs::Vector3 :init))
    ((:drpy __drpy) (instance geometry_msgs::Vector3 :init))
    ((:cp __cp) (instance geometry_msgs::Vector3 :init))
    ((:cv __cv) (instance geometry_msgs::Vector3 :init))
    ((:ca __ca) (instance geometry_msgs::Vector3 :init))
    ((:cq __cq) (instance geometry_msgs::Vector3 :init))
    ((:cF __cF) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _indiF (float __indiF))
   (setq _indiqt (float __indiqt))
   (setq _indiqy (float __indiqy))
   (setq _indiq __indiq)
   (setq _drpy __drpy)
   (setq _cp __cp)
   (setq _cv __cv)
   (setq _ca __ca)
   (setq _cq __cq)
   (setq _cF __cF)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:indiF
   (&optional __indiF)
   (if __indiF (setq _indiF __indiF)) _indiF)
  (:indiqt
   (&optional __indiqt)
   (if __indiqt (setq _indiqt __indiqt)) _indiqt)
  (:indiqy
   (&optional __indiqy)
   (if __indiqy (setq _indiqy __indiqy)) _indiqy)
  (:indiq
   (&rest __indiq)
   (if (keywordp (car __indiq))
       (send* _indiq __indiq)
     (progn
       (if __indiq (setq _indiq (car __indiq)))
       _indiq)))
  (:drpy
   (&rest __drpy)
   (if (keywordp (car __drpy))
       (send* _drpy __drpy)
     (progn
       (if __drpy (setq _drpy (car __drpy)))
       _drpy)))
  (:cp
   (&rest __cp)
   (if (keywordp (car __cp))
       (send* _cp __cp)
     (progn
       (if __cp (setq _cp (car __cp)))
       _cp)))
  (:cv
   (&rest __cv)
   (if (keywordp (car __cv))
       (send* _cv __cv)
     (progn
       (if __cv (setq _cv (car __cv)))
       _cv)))
  (:ca
   (&rest __ca)
   (if (keywordp (car __ca))
       (send* _ca __ca)
     (progn
       (if __ca (setq _ca (car __ca)))
       _ca)))
  (:cq
   (&rest __cq)
   (if (keywordp (car __cq))
       (send* _cq __cq)
     (progn
       (if __cq (setq _cq (car __cq)))
       _cq)))
  (:cF
   (&rest __cF)
   (if (keywordp (car __cF))
       (send* _cF __cF)
     (progn
       (if __cF (setq _cF (car __cF)))
       _cF)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _indiF
    8
    ;; float64 _indiqt
    8
    ;; float64 _indiqy
    8
    ;; geometry_msgs/Vector3 _indiq
    (send _indiq :serialization-length)
    ;; geometry_msgs/Vector3 _drpy
    (send _drpy :serialization-length)
    ;; geometry_msgs/Vector3 _cp
    (send _cp :serialization-length)
    ;; geometry_msgs/Vector3 _cv
    (send _cv :serialization-length)
    ;; geometry_msgs/Vector3 _ca
    (send _ca :serialization-length)
    ;; geometry_msgs/Vector3 _cq
    (send _cq :serialization-length)
    ;; geometry_msgs/Vector3 _cF
    (send _cF :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _indiF
       (sys::poke _indiF (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _indiqt
       (sys::poke _indiqt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _indiqy
       (sys::poke _indiqy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _indiq
       (send _indiq :serialize s)
     ;; geometry_msgs/Vector3 _drpy
       (send _drpy :serialize s)
     ;; geometry_msgs/Vector3 _cp
       (send _cp :serialize s)
     ;; geometry_msgs/Vector3 _cv
       (send _cv :serialize s)
     ;; geometry_msgs/Vector3 _ca
       (send _ca :serialize s)
     ;; geometry_msgs/Vector3 _cq
       (send _cq :serialize s)
     ;; geometry_msgs/Vector3 _cF
       (send _cF :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _indiF
     (setq _indiF (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _indiqt
     (setq _indiqt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _indiqy
     (setq _indiqy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _indiq
     (send _indiq :deserialize buf ptr-) (incf ptr- (send _indiq :serialization-length))
   ;; geometry_msgs/Vector3 _drpy
     (send _drpy :deserialize buf ptr-) (incf ptr- (send _drpy :serialization-length))
   ;; geometry_msgs/Vector3 _cp
     (send _cp :deserialize buf ptr-) (incf ptr- (send _cp :serialization-length))
   ;; geometry_msgs/Vector3 _cv
     (send _cv :deserialize buf ptr-) (incf ptr- (send _cv :serialization-length))
   ;; geometry_msgs/Vector3 _ca
     (send _ca :deserialize buf ptr-) (incf ptr- (send _ca :serialization-length))
   ;; geometry_msgs/Vector3 _cq
     (send _cq :deserialize buf ptr-) (incf ptr- (send _cq :serialization-length))
   ;; geometry_msgs/Vector3 _cF
     (send _cF :deserialize buf ptr-) (incf ptr- (send _cF :serialization-length))
   ;;
   self)
  )

(setf (get quadrotor_msgs::IndiState :md5sum-) "3911a5b39960e03dbb9636a0eb9cd311")
(setf (get quadrotor_msgs::IndiState :datatype-) "quadrotor_msgs/IndiState")
(setf (get quadrotor_msgs::IndiState :definition-)
      "Header header
float64 indiF
float64 indiqt
float64 indiqy
geometry_msgs/Vector3 indiq
geometry_msgs/Vector3 drpy
geometry_msgs/Vector3 cp
geometry_msgs/Vector3 cv
geometry_msgs/Vector3 ca
geometry_msgs/Vector3 cq
geometry_msgs/Vector3 cF 
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :quadrotor_msgs/IndiState "3911a5b39960e03dbb9636a0eb9cd311")


