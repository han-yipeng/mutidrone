;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::CorridorPolytope)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'CorridorPolytope (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::CORRIDORPOLYTOPE")
  (make-package "QUADROTOR_MSGS::CORRIDORPOLYTOPE"))

(in-package "ROS")
;;//! \htmlinclude CorridorPolytope.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass quadrotor_msgs::CorridorPolytope
  :super ros::object
  :slots (_path_begin _path_end _normals _offsets _vertices _clearance_bridge _complexity _local_extent _minimum_system_margin _maximum_system_margin ))

(defmethod quadrotor_msgs::CorridorPolytope
  (:init
   (&key
    ((:path_begin __path_begin) 0)
    ((:path_end __path_end) 0)
    ((:normals __normals) ())
    ((:offsets __offsets) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:vertices __vertices) ())
    ((:clearance_bridge __clearance_bridge) nil)
    ((:complexity __complexity) 0.0)
    ((:local_extent __local_extent) 0.0)
    ((:minimum_system_margin __minimum_system_margin) 0.0)
    ((:maximum_system_margin __maximum_system_margin) 0.0)
    )
   (send-super :init)
   (setq _path_begin (round __path_begin))
   (setq _path_end (round __path_end))
   (setq _normals __normals)
   (setq _offsets __offsets)
   (setq _vertices __vertices)
   (setq _clearance_bridge __clearance_bridge)
   (setq _complexity (float __complexity))
   (setq _local_extent (float __local_extent))
   (setq _minimum_system_margin (float __minimum_system_margin))
   (setq _maximum_system_margin (float __maximum_system_margin))
   self)
  (:path_begin
   (&optional __path_begin)
   (if __path_begin (setq _path_begin __path_begin)) _path_begin)
  (:path_end
   (&optional __path_end)
   (if __path_end (setq _path_end __path_end)) _path_end)
  (:normals
   (&rest __normals)
   (if (keywordp (car __normals))
       (send* _normals __normals)
     (progn
       (if __normals (setq _normals (car __normals)))
       _normals)))
  (:offsets
   (&optional __offsets)
   (if __offsets (setq _offsets __offsets)) _offsets)
  (:vertices
   (&rest __vertices)
   (if (keywordp (car __vertices))
       (send* _vertices __vertices)
     (progn
       (if __vertices (setq _vertices (car __vertices)))
       _vertices)))
  (:clearance_bridge
   (&optional (__clearance_bridge :null))
   (if (not (eq __clearance_bridge :null)) (setq _clearance_bridge __clearance_bridge)) _clearance_bridge)
  (:complexity
   (&optional __complexity)
   (if __complexity (setq _complexity __complexity)) _complexity)
  (:local_extent
   (&optional __local_extent)
   (if __local_extent (setq _local_extent __local_extent)) _local_extent)
  (:minimum_system_margin
   (&optional __minimum_system_margin)
   (if __minimum_system_margin (setq _minimum_system_margin __minimum_system_margin)) _minimum_system_margin)
  (:maximum_system_margin
   (&optional __maximum_system_margin)
   (if __maximum_system_margin (setq _maximum_system_margin __maximum_system_margin)) _maximum_system_margin)
  (:serialization-length
   ()
   (+
    ;; uint32 _path_begin
    4
    ;; uint32 _path_end
    4
    ;; geometry_msgs/Vector3[] _normals
    (apply #'+ (send-all _normals :serialization-length)) 4
    ;; float64[] _offsets
    (* 8    (length _offsets)) 4
    ;; geometry_msgs/Point[] _vertices
    (apply #'+ (send-all _vertices :serialization-length)) 4
    ;; bool _clearance_bridge
    1
    ;; float64 _complexity
    8
    ;; float64 _local_extent
    8
    ;; float64 _minimum_system_margin
    8
    ;; float64 _maximum_system_margin
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _path_begin
       (write-long _path_begin s)
     ;; uint32 _path_end
       (write-long _path_end s)
     ;; geometry_msgs/Vector3[] _normals
     (write-long (length _normals) s)
     (dolist (elem _normals)
       (send elem :serialize s)
       )
     ;; float64[] _offsets
     (write-long (length _offsets) s)
     (dotimes (i (length _offsets))
       (sys::poke (elt _offsets i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Point[] _vertices
     (write-long (length _vertices) s)
     (dolist (elem _vertices)
       (send elem :serialize s)
       )
     ;; bool _clearance_bridge
       (if _clearance_bridge (write-byte -1 s) (write-byte 0 s))
     ;; float64 _complexity
       (sys::poke _complexity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _local_extent
       (sys::poke _local_extent (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _minimum_system_margin
       (sys::poke _minimum_system_margin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _maximum_system_margin
       (sys::poke _maximum_system_margin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _path_begin
     (setq _path_begin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _path_end
     (setq _path_end (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3[] _normals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _normals (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _normals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _offsets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _offsets (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _offsets i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/Point[] _vertices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vertices (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _vertices)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _clearance_bridge
     (setq _clearance_bridge (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _complexity
     (setq _complexity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _local_extent
     (setq _local_extent (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _minimum_system_margin
     (setq _minimum_system_margin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _maximum_system_margin
     (setq _maximum_system_margin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get quadrotor_msgs::CorridorPolytope :md5sum-) "f1ee3021eb38c109bf2fef158ffb37a4")
(setf (get quadrotor_msgs::CorridorPolytope :datatype-) "quadrotor_msgs/CorridorPolytope")
(setf (get quadrotor_msgs::CorridorPolytope :definition-)
      "uint32 path_begin
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



(provide :quadrotor_msgs/CorridorPolytope "f1ee3021eb38c109bf2fef158ffb37a4")


