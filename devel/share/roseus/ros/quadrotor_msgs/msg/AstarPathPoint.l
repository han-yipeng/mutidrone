;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::AstarPathPoint)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'AstarPathPoint (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::ASTARPATHPOINT")
  (make-package "QUADROTOR_MSGS::ASTARPATHPOINT"))

(in-package "ROS")
;;//! \htmlinclude AstarPathPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass quadrotor_msgs::AstarPathPoint
  :super ros::object
  :slots (_position _angle _clearance _waypoint ))

(defmethod quadrotor_msgs::AstarPathPoint
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:angle __angle) 0.0)
    ((:clearance __clearance) 0.0)
    ((:waypoint __waypoint) nil)
    )
   (send-super :init)
   (setq _position __position)
   (setq _angle (float __angle))
   (setq _clearance (float __clearance))
   (setq _waypoint __waypoint)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:clearance
   (&optional __clearance)
   (if __clearance (setq _clearance __clearance)) _clearance)
  (:waypoint
   (&optional (__waypoint :null))
   (if (not (eq __waypoint :null)) (setq _waypoint __waypoint)) _waypoint)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _angle
    8
    ;; float64 _clearance
    8
    ;; bool _waypoint
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _clearance
       (sys::poke _clearance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _waypoint
       (if _waypoint (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _clearance
     (setq _clearance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _waypoint
     (setq _waypoint (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get quadrotor_msgs::AstarPathPoint :md5sum-) "4f3f50b66c9f55c6a0c57168ac23576a")
(setf (get quadrotor_msgs::AstarPathPoint :datatype-) "quadrotor_msgs/AstarPathPoint")
(setf (get quadrotor_msgs::AstarPathPoint :definition-)
      "geometry_msgs/Point position
float64 angle
float64 clearance
bool waypoint

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :quadrotor_msgs/AstarPathPoint "4f3f50b66c9f55c6a0c57168ac23576a")


