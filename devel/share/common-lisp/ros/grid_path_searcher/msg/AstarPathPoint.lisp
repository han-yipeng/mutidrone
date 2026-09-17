; Auto-generated. Do not edit!


(cl:in-package grid_path_searcher-msg)


;//! \htmlinclude AstarPathPoint.msg.html

(cl:defclass <AstarPathPoint> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (angle_deg
    :reader angle_deg
    :initarg :angle_deg
    :type cl:float
    :initform 0.0)
   (clearance_m
    :reader clearance_m
    :initarg :clearance_m
    :type cl:float
    :initform 0.0)
   (arc_length_m
    :reader arc_length_m
    :initarg :arc_length_m
    :type cl:float
    :initform 0.0)
   (curvature
    :reader curvature
    :initarg :curvature
    :type cl:float
    :initform 0.0)
   (complexity
    :reader complexity
    :initarg :complexity
    :type cl:float
    :initform 0.0)
   (desired_spacing_m
    :reader desired_spacing_m
    :initarg :desired_spacing_m
    :type cl:float
    :initform 0.0)
   (selected_as_waypoint
    :reader selected_as_waypoint
    :initarg :selected_as_waypoint
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AstarPathPoint (<AstarPathPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AstarPathPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AstarPathPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grid_path_searcher-msg:<AstarPathPoint> is deprecated: use grid_path_searcher-msg:AstarPathPoint instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <AstarPathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grid_path_searcher-msg:position-val is deprecated.  Use grid_path_searcher-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'angle_deg-val :lambda-list '(m))
(cl:defmethod angle_deg-val ((m <AstarPathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grid_path_searcher-msg:angle_deg-val is deprecated.  Use grid_path_searcher-msg:angle_deg instead.")
  (angle_deg m))

(cl:ensure-generic-function 'clearance_m-val :lambda-list '(m))
(cl:defmethod clearance_m-val ((m <AstarPathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grid_path_searcher-msg:clearance_m-val is deprecated.  Use grid_path_searcher-msg:clearance_m instead.")
  (clearance_m m))

(cl:ensure-generic-function 'arc_length_m-val :lambda-list '(m))
(cl:defmethod arc_length_m-val ((m <AstarPathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grid_path_searcher-msg:arc_length_m-val is deprecated.  Use grid_path_searcher-msg:arc_length_m instead.")
  (arc_length_m m))

(cl:ensure-generic-function 'curvature-val :lambda-list '(m))
(cl:defmethod curvature-val ((m <AstarPathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grid_path_searcher-msg:curvature-val is deprecated.  Use grid_path_searcher-msg:curvature instead.")
  (curvature m))

(cl:ensure-generic-function 'complexity-val :lambda-list '(m))
(cl:defmethod complexity-val ((m <AstarPathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grid_path_searcher-msg:complexity-val is deprecated.  Use grid_path_searcher-msg:complexity instead.")
  (complexity m))

(cl:ensure-generic-function 'desired_spacing_m-val :lambda-list '(m))
(cl:defmethod desired_spacing_m-val ((m <AstarPathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grid_path_searcher-msg:desired_spacing_m-val is deprecated.  Use grid_path_searcher-msg:desired_spacing_m instead.")
  (desired_spacing_m m))

(cl:ensure-generic-function 'selected_as_waypoint-val :lambda-list '(m))
(cl:defmethod selected_as_waypoint-val ((m <AstarPathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grid_path_searcher-msg:selected_as_waypoint-val is deprecated.  Use grid_path_searcher-msg:selected_as_waypoint instead.")
  (selected_as_waypoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AstarPathPoint>) ostream)
  "Serializes a message object of type '<AstarPathPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle_deg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'clearance_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'arc_length_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'curvature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'complexity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'desired_spacing_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'selected_as_waypoint) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AstarPathPoint>) istream)
  "Deserializes a message object of type '<AstarPathPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_deg) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'clearance_m) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arc_length_m) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curvature) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'complexity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_spacing_m) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'selected_as_waypoint) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AstarPathPoint>)))
  "Returns string type for a message object of type '<AstarPathPoint>"
  "grid_path_searcher/AstarPathPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AstarPathPoint)))
  "Returns string type for a message object of type 'AstarPathPoint"
  "grid_path_searcher/AstarPathPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AstarPathPoint>)))
  "Returns md5sum for a message object of type '<AstarPathPoint>"
  "d8313e5fbfae9cb5949798e6a59c10b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AstarPathPoint)))
  "Returns md5sum for a message object of type 'AstarPathPoint"
  "d8313e5fbfae9cb5949798e6a59c10b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AstarPathPoint>)))
  "Returns full string definition for message of type '<AstarPathPoint>"
  (cl:format cl:nil "geometry_msgs/Point position~%float64 angle_deg~%float64 clearance_m~%float64 arc_length_m~%float64 curvature~%float64 complexity~%float64 desired_spacing_m~%bool selected_as_waypoint~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AstarPathPoint)))
  "Returns full string definition for message of type 'AstarPathPoint"
  (cl:format cl:nil "geometry_msgs/Point position~%float64 angle_deg~%float64 clearance_m~%float64 arc_length_m~%float64 curvature~%float64 complexity~%float64 desired_spacing_m~%bool selected_as_waypoint~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AstarPathPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
     8
     8
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AstarPathPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'AstarPathPoint
    (cl:cons ':position (position msg))
    (cl:cons ':angle_deg (angle_deg msg))
    (cl:cons ':clearance_m (clearance_m msg))
    (cl:cons ':arc_length_m (arc_length_m msg))
    (cl:cons ':curvature (curvature msg))
    (cl:cons ':complexity (complexity msg))
    (cl:cons ':desired_spacing_m (desired_spacing_m msg))
    (cl:cons ':selected_as_waypoint (selected_as_waypoint msg))
))
