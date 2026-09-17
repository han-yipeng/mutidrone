;; Auto-generated. Do not edit!


(when (boundp 'grid_path_searcher::AstarPath)
  (if (not (find-package "GRID_PATH_SEARCHER"))
    (make-package "GRID_PATH_SEARCHER"))
  (shadow 'AstarPath (find-package "GRID_PATH_SEARCHER")))
(unless (find-package "GRID_PATH_SEARCHER::ASTARPATH")
  (make-package "GRID_PATH_SEARCHER::ASTARPATH"))

(in-package "ROS")
;;//! \htmlinclude AstarPath.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass grid_path_searcher::AstarPath
  :super ros::object
  :slots (_header _points ))

(defmethod grid_path_searcher::AstarPath
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:points __points) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
    ;; grid_path_searcher/AstarPathPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; grid_path_searcher/AstarPathPoint[] _points
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
   ;; grid_path_searcher/AstarPathPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance grid_path_searcher::AstarPathPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get grid_path_searcher::AstarPath :md5sum-) "89c845f19440f2177b6bb178d87c77c4")
(setf (get grid_path_searcher::AstarPath :datatype-) "grid_path_searcher/AstarPath")
(setf (get grid_path_searcher::AstarPath :definition-)
      "std_msgs/Header header
grid_path_searcher/AstarPathPoint[] points

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
MSG: grid_path_searcher/AstarPathPoint
geometry_msgs/Point position
float64 angle_deg
float64 clearance_m
float64 arc_length_m
float64 curvature
float64 complexity
float64 desired_spacing_m
bool selected_as_waypoint

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :grid_path_searcher/AstarPath "89c845f19440f2177b6bb178d87c77c4")


