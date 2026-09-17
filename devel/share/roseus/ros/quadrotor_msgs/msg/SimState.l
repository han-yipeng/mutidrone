;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::SimState)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'SimState (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::SIMSTATE")
  (make-package "QUADROTOR_MSGS::SIMSTATE"))

(in-package "ROS")
;;//! \htmlinclude SimState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quadrotor_msgs::SimState
  :super ros::object
  :slots (_header _srpy _sq ))

(defmethod quadrotor_msgs::SimState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:srpy __srpy) (instance geometry_msgs::Vector3 :init))
    ((:sq __sq) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _srpy __srpy)
   (setq _sq __sq)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:srpy
   (&rest __srpy)
   (if (keywordp (car __srpy))
       (send* _srpy __srpy)
     (progn
       (if __srpy (setq _srpy (car __srpy)))
       _srpy)))
  (:sq
   (&rest __sq)
   (if (keywordp (car __sq))
       (send* _sq __sq)
     (progn
       (if __sq (setq _sq (car __sq)))
       _sq)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _srpy
    (send _srpy :serialization-length)
    ;; geometry_msgs/Vector3 _sq
    (send _sq :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _srpy
       (send _srpy :serialize s)
     ;; geometry_msgs/Vector3 _sq
       (send _sq :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _srpy
     (send _srpy :deserialize buf ptr-) (incf ptr- (send _srpy :serialization-length))
   ;; geometry_msgs/Vector3 _sq
     (send _sq :deserialize buf ptr-) (incf ptr- (send _sq :serialization-length))
   ;;
   self)
  )

(setf (get quadrotor_msgs::SimState :md5sum-) "644e11e25552c02543ecd03ed7f77057")
(setf (get quadrotor_msgs::SimState :datatype-) "quadrotor_msgs/SimState")
(setf (get quadrotor_msgs::SimState :definition-)
      "Header header
geometry_msgs/Vector3 srpy
geometry_msgs/Vector3 sq
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



(provide :quadrotor_msgs/SimState "644e11e25552c02543ecd03ed7f77057")


