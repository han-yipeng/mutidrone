;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::SO3Command)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'SO3Command (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::SO3COMMAND")
  (make-package "QUADROTOR_MSGS::SO3COMMAND"))

(in-package "ROS")
;;//! \htmlinclude SO3Command.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quadrotor_msgs::SO3Command
  :super ros::object
  :slots (_header _id _force _orientation _omg _domg _aux _ref_p _ref_v _ref_a _ref_q _ref_rpy _ref_F _ref_qt _ref_qy ))

(defmethod quadrotor_msgs::SO3Command
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:force __force) (instance geometry_msgs::Vector3 :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:omg __omg) (instance geometry_msgs::Vector3 :init))
    ((:domg __domg) (instance geometry_msgs::Vector3 :init))
    ((:aux __aux) (instance quadrotor_msgs::AuxCommand :init))
    ((:ref_p __ref_p) (instance geometry_msgs::Vector3 :init))
    ((:ref_v __ref_v) (instance geometry_msgs::Vector3 :init))
    ((:ref_a __ref_a) (instance geometry_msgs::Vector3 :init))
    ((:ref_q __ref_q) (instance geometry_msgs::Vector3 :init))
    ((:ref_rpy __ref_rpy) (instance geometry_msgs::Vector3 :init))
    ((:ref_F __ref_F) 0.0)
    ((:ref_qt __ref_qt) 0.0)
    ((:ref_qy __ref_qy) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _force __force)
   (setq _orientation __orientation)
   (setq _omg __omg)
   (setq _domg __domg)
   (setq _aux __aux)
   (setq _ref_p __ref_p)
   (setq _ref_v __ref_v)
   (setq _ref_a __ref_a)
   (setq _ref_q __ref_q)
   (setq _ref_rpy __ref_rpy)
   (setq _ref_F (float __ref_F))
   (setq _ref_qt (float __ref_qt))
   (setq _ref_qy (float __ref_qy))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:force
   (&rest __force)
   (if (keywordp (car __force))
       (send* _force __force)
     (progn
       (if __force (setq _force (car __force)))
       _force)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:omg
   (&rest __omg)
   (if (keywordp (car __omg))
       (send* _omg __omg)
     (progn
       (if __omg (setq _omg (car __omg)))
       _omg)))
  (:domg
   (&rest __domg)
   (if (keywordp (car __domg))
       (send* _domg __domg)
     (progn
       (if __domg (setq _domg (car __domg)))
       _domg)))
  (:aux
   (&rest __aux)
   (if (keywordp (car __aux))
       (send* _aux __aux)
     (progn
       (if __aux (setq _aux (car __aux)))
       _aux)))
  (:ref_p
   (&rest __ref_p)
   (if (keywordp (car __ref_p))
       (send* _ref_p __ref_p)
     (progn
       (if __ref_p (setq _ref_p (car __ref_p)))
       _ref_p)))
  (:ref_v
   (&rest __ref_v)
   (if (keywordp (car __ref_v))
       (send* _ref_v __ref_v)
     (progn
       (if __ref_v (setq _ref_v (car __ref_v)))
       _ref_v)))
  (:ref_a
   (&rest __ref_a)
   (if (keywordp (car __ref_a))
       (send* _ref_a __ref_a)
     (progn
       (if __ref_a (setq _ref_a (car __ref_a)))
       _ref_a)))
  (:ref_q
   (&rest __ref_q)
   (if (keywordp (car __ref_q))
       (send* _ref_q __ref_q)
     (progn
       (if __ref_q (setq _ref_q (car __ref_q)))
       _ref_q)))
  (:ref_rpy
   (&rest __ref_rpy)
   (if (keywordp (car __ref_rpy))
       (send* _ref_rpy __ref_rpy)
     (progn
       (if __ref_rpy (setq _ref_rpy (car __ref_rpy)))
       _ref_rpy)))
  (:ref_F
   (&optional __ref_F)
   (if __ref_F (setq _ref_F __ref_F)) _ref_F)
  (:ref_qt
   (&optional __ref_qt)
   (if __ref_qt (setq _ref_qt __ref_qt)) _ref_qt)
  (:ref_qy
   (&optional __ref_qy)
   (if __ref_qy (setq _ref_qy __ref_qy)) _ref_qy)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _id
    1
    ;; geometry_msgs/Vector3 _force
    (send _force :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; geometry_msgs/Vector3 _omg
    (send _omg :serialization-length)
    ;; geometry_msgs/Vector3 _domg
    (send _domg :serialization-length)
    ;; quadrotor_msgs/AuxCommand _aux
    (send _aux :serialization-length)
    ;; geometry_msgs/Vector3 _ref_p
    (send _ref_p :serialization-length)
    ;; geometry_msgs/Vector3 _ref_v
    (send _ref_v :serialization-length)
    ;; geometry_msgs/Vector3 _ref_a
    (send _ref_a :serialization-length)
    ;; geometry_msgs/Vector3 _ref_q
    (send _ref_q :serialization-length)
    ;; geometry_msgs/Vector3 _ref_rpy
    (send _ref_rpy :serialization-length)
    ;; float64 _ref_F
    8
    ;; float64 _ref_qt
    8
    ;; float64 _ref_qy
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _id
       (write-byte _id s)
     ;; geometry_msgs/Vector3 _force
       (send _force :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; geometry_msgs/Vector3 _omg
       (send _omg :serialize s)
     ;; geometry_msgs/Vector3 _domg
       (send _domg :serialize s)
     ;; quadrotor_msgs/AuxCommand _aux
       (send _aux :serialize s)
     ;; geometry_msgs/Vector3 _ref_p
       (send _ref_p :serialize s)
     ;; geometry_msgs/Vector3 _ref_v
       (send _ref_v :serialize s)
     ;; geometry_msgs/Vector3 _ref_a
       (send _ref_a :serialize s)
     ;; geometry_msgs/Vector3 _ref_q
       (send _ref_q :serialize s)
     ;; geometry_msgs/Vector3 _ref_rpy
       (send _ref_rpy :serialize s)
     ;; float64 _ref_F
       (sys::poke _ref_F (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_qt
       (sys::poke _ref_qt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_qy
       (sys::poke _ref_qy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Vector3 _force
     (send _force :deserialize buf ptr-) (incf ptr- (send _force :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; geometry_msgs/Vector3 _omg
     (send _omg :deserialize buf ptr-) (incf ptr- (send _omg :serialization-length))
   ;; geometry_msgs/Vector3 _domg
     (send _domg :deserialize buf ptr-) (incf ptr- (send _domg :serialization-length))
   ;; quadrotor_msgs/AuxCommand _aux
     (send _aux :deserialize buf ptr-) (incf ptr- (send _aux :serialization-length))
   ;; geometry_msgs/Vector3 _ref_p
     (send _ref_p :deserialize buf ptr-) (incf ptr- (send _ref_p :serialization-length))
   ;; geometry_msgs/Vector3 _ref_v
     (send _ref_v :deserialize buf ptr-) (incf ptr- (send _ref_v :serialization-length))
   ;; geometry_msgs/Vector3 _ref_a
     (send _ref_a :deserialize buf ptr-) (incf ptr- (send _ref_a :serialization-length))
   ;; geometry_msgs/Vector3 _ref_q
     (send _ref_q :deserialize buf ptr-) (incf ptr- (send _ref_q :serialization-length))
   ;; geometry_msgs/Vector3 _ref_rpy
     (send _ref_rpy :deserialize buf ptr-) (incf ptr- (send _ref_rpy :serialization-length))
   ;; float64 _ref_F
     (setq _ref_F (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_qt
     (setq _ref_qt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_qy
     (setq _ref_qy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get quadrotor_msgs::SO3Command :md5sum-) "cdd2dd735e73a1d9a730f9dbe0796283")
(setf (get quadrotor_msgs::SO3Command :datatype-) "quadrotor_msgs/SO3Command")
(setf (get quadrotor_msgs::SO3Command :definition-)
      "Header header
uint8 id
geometry_msgs/Vector3 force
geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 omg
geometry_msgs/Vector3 domg
quadrotor_msgs/AuxCommand aux
geometry_msgs/Vector3 ref_p
geometry_msgs/Vector3 ref_v
geometry_msgs/Vector3 ref_a
geometry_msgs/Vector3 ref_q
geometry_msgs/Vector3 ref_rpy
float64 ref_F
float64 ref_qt
float64 ref_qy


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
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: quadrotor_msgs/AuxCommand
float64 current_yaw
float64 kf_correction
float64[2] angle_corrections# Trims for roll, pitch
bool enable_motors
bool use_external_yaw

")



(provide :quadrotor_msgs/SO3Command "cdd2dd735e73a1d9a730f9dbe0796283")


