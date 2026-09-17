;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::LoadCorridor)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'LoadCorridor (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::LOADCORRIDOR")
  (make-package "QUADROTOR_MSGS::LOADCORRIDOR"))

(in-package "ROS")
;;//! \htmlinclude LoadCorridor.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quadrotor_msgs::LoadCorridor
  :super ros::object
  :slots (_header _polytopes _transition_centers _transition_radii _transition_tangents _transition_longitudinal_radii _transition_transverse_radii ))

(defmethod quadrotor_msgs::LoadCorridor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:polytopes __polytopes) ())
    ((:transition_centers __transition_centers) ())
    ((:transition_radii __transition_radii) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:transition_tangents __transition_tangents) ())
    ((:transition_longitudinal_radii __transition_longitudinal_radii) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:transition_transverse_radii __transition_transverse_radii) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _polytopes __polytopes)
   (setq _transition_centers __transition_centers)
   (setq _transition_radii __transition_radii)
   (setq _transition_tangents __transition_tangents)
   (setq _transition_longitudinal_radii __transition_longitudinal_radii)
   (setq _transition_transverse_radii __transition_transverse_radii)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:polytopes
   (&rest __polytopes)
   (if (keywordp (car __polytopes))
       (send* _polytopes __polytopes)
     (progn
       (if __polytopes (setq _polytopes (car __polytopes)))
       _polytopes)))
  (:transition_centers
   (&rest __transition_centers)
   (if (keywordp (car __transition_centers))
       (send* _transition_centers __transition_centers)
     (progn
       (if __transition_centers (setq _transition_centers (car __transition_centers)))
       _transition_centers)))
  (:transition_radii
   (&optional __transition_radii)
   (if __transition_radii (setq _transition_radii __transition_radii)) _transition_radii)
  (:transition_tangents
   (&rest __transition_tangents)
   (if (keywordp (car __transition_tangents))
       (send* _transition_tangents __transition_tangents)
     (progn
       (if __transition_tangents (setq _transition_tangents (car __transition_tangents)))
       _transition_tangents)))
  (:transition_longitudinal_radii
   (&optional __transition_longitudinal_radii)
   (if __transition_longitudinal_radii (setq _transition_longitudinal_radii __transition_longitudinal_radii)) _transition_longitudinal_radii)
  (:transition_transverse_radii
   (&optional __transition_transverse_radii)
   (if __transition_transverse_radii (setq _transition_transverse_radii __transition_transverse_radii)) _transition_transverse_radii)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; quadrotor_msgs/CorridorPolytope[] _polytopes
    (apply #'+ (send-all _polytopes :serialization-length)) 4
    ;; geometry_msgs/Point[] _transition_centers
    (apply #'+ (send-all _transition_centers :serialization-length)) 4
    ;; float64[] _transition_radii
    (* 8    (length _transition_radii)) 4
    ;; geometry_msgs/Vector3[] _transition_tangents
    (apply #'+ (send-all _transition_tangents :serialization-length)) 4
    ;; float64[] _transition_longitudinal_radii
    (* 8    (length _transition_longitudinal_radii)) 4
    ;; float64[] _transition_transverse_radii
    (* 8    (length _transition_transverse_radii)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; quadrotor_msgs/CorridorPolytope[] _polytopes
     (write-long (length _polytopes) s)
     (dolist (elem _polytopes)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _transition_centers
     (write-long (length _transition_centers) s)
     (dolist (elem _transition_centers)
       (send elem :serialize s)
       )
     ;; float64[] _transition_radii
     (write-long (length _transition_radii) s)
     (dotimes (i (length _transition_radii))
       (sys::poke (elt _transition_radii i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Vector3[] _transition_tangents
     (write-long (length _transition_tangents) s)
     (dolist (elem _transition_tangents)
       (send elem :serialize s)
       )
     ;; float64[] _transition_longitudinal_radii
     (write-long (length _transition_longitudinal_radii) s)
     (dotimes (i (length _transition_longitudinal_radii))
       (sys::poke (elt _transition_longitudinal_radii i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _transition_transverse_radii
     (write-long (length _transition_transverse_radii) s)
     (dotimes (i (length _transition_transverse_radii))
       (sys::poke (elt _transition_transverse_radii i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; quadrotor_msgs/CorridorPolytope[] _polytopes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polytopes (let (r) (dotimes (i n) (push (instance quadrotor_msgs::CorridorPolytope :init) r)) r))
     (dolist (elem- _polytopes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _transition_centers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transition_centers (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _transition_centers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _transition_radii
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transition_radii (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _transition_radii i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/Vector3[] _transition_tangents
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transition_tangents (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _transition_tangents)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _transition_longitudinal_radii
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transition_longitudinal_radii (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _transition_longitudinal_radii i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _transition_transverse_radii
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transition_transverse_radii (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _transition_transverse_radii i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get quadrotor_msgs::LoadCorridor :md5sum-) "36351e1e34a11193f6c66fa2067de8d5")
(setf (get quadrotor_msgs::LoadCorridor :datatype-) "quadrotor_msgs/LoadCorridor")
(setf (get quadrotor_msgs::LoadCorridor :definition-)
      "std_msgs/Header header
quadrotor_msgs/CorridorPolytope[] polytopes
geometry_msgs/Point[] transition_centers
float64[] transition_radii
geometry_msgs/Vector3[] transition_tangents
float64[] transition_longitudinal_radii
float64[] transition_transverse_radii

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
MSG: quadrotor_msgs/CorridorPolytope
uint32 path_begin
uint32 path_end
geometry_msgs/Vector3[] normals
float64[] offsets
geometry_msgs/Point[] vertices
bool clearance_bridge
float64 complexity
float64 local_extent
float64 minimum_system_margin
float64 maximum_system_margin

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :quadrotor_msgs/LoadCorridor "36351e1e34a11193f6c66fa2067de8d5")


