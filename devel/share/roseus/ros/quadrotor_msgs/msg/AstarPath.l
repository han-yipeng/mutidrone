;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::AstarPath)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'AstarPath (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::ASTARPATH")
  (make-package "QUADROTOR_MSGS::ASTARPATH"))

(in-package "ROS")
;;//! \htmlinclude AstarPath.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quadrotor_msgs::AstarPath
  :super ros::object
  :slots (_header _start _goal _points ))

(defmethod quadrotor_msgs::AstarPath
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:start __start) (instance geometry_msgs::Point :init))
    ((:goal __goal) (instance geometry_msgs::Point :init))
    ((:points __points) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _start __start)
   (setq _goal __goal)
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _start
    (send _start :serialization-length)
    ;; geometry_msgs/Point _goal
    (send _goal :serialization-length)
    ;; quadrotor_msgs/AstarPathPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _start
       (send _start :serialize s)
     ;; geometry_msgs/Point _goal
       (send _goal :serialize s)
     ;; quadrotor_msgs/AstarPathPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geometry_msgs/Point _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; quadrotor_msgs/AstarPathPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance quadrotor_msgs::AstarPathPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get quadrotor_msgs::AstarPath :md5sum-) "c042622e5284a67df730df6129bec0d8")
(setf (get quadrotor_msgs::AstarPath :datatype-) "quadrotor_msgs/AstarPath")
(setf (get quadrotor_msgs::AstarPath :definition-)
      "std_msgs/Header header
geometry_msgs/Point start
geometry_msgs/Point goal
quadrotor_msgs/AstarPathPoint[] points

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: quadrotor_msgs/AstarPathPoint
geometry_msgs/Point position
float64 angle
float64 clearance
bool waypoint

")



(provide :quadrotor_msgs/AstarPath "c042622e5284a67df730df6129bec0d8")


