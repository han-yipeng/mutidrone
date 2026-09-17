; Auto-generated. Do not edit!


(cl:in-package quadrotor_msgs-msg)


;//! \htmlinclude AstarPathPoint.msg.html

(cl:defclass <AstarPathPoint> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (clearance
    :reader clearance
    :initarg :clearance
    :type cl:float
    :initform 0.0)
   (waypoint
    :reader waypoint
    :initarg :waypoint
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AstarPathPoint (<AstarPathPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AstarPathPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AstarPathPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quadrotor_msgs-msg:<AstarPathPoint> is deprecated: use quadrotor_msgs-msg:AstarPathPoint instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <AstarPathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:position-val is deprecated.  Use quadrotor_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <AstarPathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:angle-val is deprecated.  Use quadrotor_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'clearance-val :lambda-list '(m))
(cl:defmethod clearance-val ((m <AstarPathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:clearance-val is deprecated.  Use quadrotor_msgs-msg:clearance instead.")
  (clearance m))

(cl:ensure-generic-function 'waypoint-val :lambda-list '(m))
(cl:defmethod waypoint-val ((m <AstarPathPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:waypoint-val is deprecated.  Use quadrotor_msgs-msg:waypoint instead.")
  (waypoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AstarPathPoint>) ostream)
  "Serializes a message object of type '<AstarPathPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'clearance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'waypoint) 1 0)) ostream)
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
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'clearance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'waypoint) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AstarPathPoint>)))
  "Returns string type for a message object of type '<AstarPathPoint>"
  "quadrotor_msgs/AstarPathPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AstarPathPoint)))
  "Returns string type for a message object of type 'AstarPathPoint"
  "quadrotor_msgs/AstarPathPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AstarPathPoint>)))
  "Returns md5sum for a message object of type '<AstarPathPoint>"
  "4f3f50b66c9f55c6a0c57168ac23576a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AstarPathPoint)))
  "Returns md5sum for a message object of type 'AstarPathPoint"
  "4f3f50b66c9f55c6a0c57168ac23576a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AstarPathPoint>)))
  "Returns full string definition for message of type '<AstarPathPoint>"
  (cl:format cl:nil "geometry_msgs/Point position~%float64 angle~%float64 clearance~%bool waypoint~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AstarPathPoint)))
  "Returns full string definition for message of type 'AstarPathPoint"
  (cl:format cl:nil "geometry_msgs/Point position~%float64 angle~%float64 clearance~%bool waypoint~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AstarPathPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AstarPathPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'AstarPathPoint
    (cl:cons ':position (position msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':clearance (clearance msg))
    (cl:cons ':waypoint (waypoint msg))
))
