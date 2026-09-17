;; Auto-generated. Do not edit!


(when (boundp 'grid_path_searcher::AstarPathPoint)
  (if (not (find-package "GRID_PATH_SEARCHER"))
    (make-package "GRID_PATH_SEARCHER"))
  (shadow 'AstarPathPoint (find-package "GRID_PATH_SEARCHER")))
(unless (find-package "GRID_PATH_SEARCHER::ASTARPATHPOINT")
  (make-package "GRID_PATH_SEARCHER::ASTARPATHPOINT"))

(in-package "ROS")
;;//! \htmlinclude AstarPathPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass grid_path_searcher::AstarPathPoint
  :super ros::object
  :slots (_position _angle_deg _clearance_m _arc_length_m _curvature _complexity _desired_spacing_m _selected_as_waypoint ))

(defmethod grid_path_searcher::AstarPathPoint
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:angle_deg __angle_deg) 0.0)
    ((:clearance_m __clearance_m) 0.0)
    ((:arc_length_m __arc_length_m) 0.0)
    ((:curvature __curvature) 0.0)
    ((:complexity __complexity) 0.0)
    ((:desired_spacing_m __desired_spacing_m) 0.0)
    ((:selected_as_waypoint __selected_as_waypoint) nil)
    )
   (send-super :init)
   (setq _position __position)
   (setq _angle_deg (float __angle_deg))
   (setq _clearance_m (float __clearance_m))
   (setq _arc_length_m (float __arc_length_m))
   (setq _curvature (float __curvature))
   (setq _complexity (float __complexity))
   (setq _desired_spacing_m (float __desired_spacing_m))
   (setq _selected_as_waypoint __selected_as_waypoint)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:angle_deg
   (&optional __angle_deg)
   (if __angle_deg (setq _angle_deg __angle_deg)) _angle_deg)
  (:clearance_m
   (&optional __clearance_m)
   (if __clearance_m (setq _clearance_m __clearance_m)) _clearance_m)
  (:arc_length_m
   (&optional __arc_length_m)
   (if __arc_length_m (setq _arc_length_m __arc_length_m)) _arc_length_m)
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:complexity
   (&optional __complexity)
   (if __complexity (setq _complexity __complexity)) _complexity)
  (:desired_spacing_m
   (&optional __desired_spacing_m)
   (if __desired_spacing_m (setq _desired_spacing_m __desired_spacing_m)) _desired_spacing_m)
  (:selected_as_waypoint
   (&optional (__selected_as_waypoint :null))
   (if (not (eq __selected_as_waypoint :null)) (setq _selected_as_waypoint __selected_as_waypoint)) _selected_as_waypoint)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _angle_deg
    8
    ;; float64 _clearance_m
    8
    ;; float64 _arc_length_m
    8
    ;; float64 _curvature
    8
    ;; float64 _complexity
    8
    ;; float64 _desired_spacing_m
    8
    ;; bool _selected_as_waypoint
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _angle_deg
       (sys::poke _angle_deg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _clearance_m
       (sys::poke _clearance_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _arc_length_m
       (sys::poke _arc_length_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _curvature
       (sys::poke _curvature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _complexity
       (sys::poke _complexity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _desired_spacing_m
       (sys::poke _desired_spacing_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _selected_as_waypoint
       (if _selected_as_waypoint (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _angle_deg
     (setq _angle_deg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _clearance_m
     (setq _clearance_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _arc_length_m
     (setq _arc_length_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _curvature
     (setq _curvature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _complexity
     (setq _complexity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _desired_spacing_m
     (setq _desired_spacing_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _selected_as_waypoint
     (setq _selected_as_waypoint (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get grid_path_searcher::AstarPathPoint :md5sum-) "d8313e5fbfae9cb5949798e6a59c10b3")
(setf (get grid_path_searcher::AstarPathPoint :datatype-) "grid_path_searcher/AstarPathPoint")
(setf (get grid_path_searcher::AstarPathPoint :definition-)
      "geometry_msgs/Point position
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



(provide :grid_path_searcher/AstarPathPoint "d8313e5fbfae9cb5949798e6a59c10b3")


