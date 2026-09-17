; Auto-generated. Do not edit!


(cl:in-package quadrotor_msgs-msg)


;//! \htmlinclude PositionCommandLoad.msg.html

(cl:defclass <PositionCommandLoad> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass PositionCommandLoad (<PositionCommandLoad>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionCommandLoad>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionCommandLoad)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quadrotor_msgs-msg:<PositionCommandLoad> is deprecated: use quadrotor_msgs-msg:PositionCommandLoad instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PositionCommandLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:header-val is deprecated.  Use quadrotor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PositionCommandLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:position-val is deprecated.  Use quadrotor_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <PositionCommandLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:velocity-val is deprecated.  Use quadrotor_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <PositionCommandLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:acceleration-val is deprecated.  Use quadrotor_msgs-msg:acceleration instead.")
  (acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionCommandLoad>) ostream)
  "Serializes a message object of type '<PositionCommandLoad>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionCommandLoad>) istream)
  "Deserializes a message object of type '<PositionCommandLoad>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionCommandLoad>)))
  "Returns string type for a message object of type '<PositionCommandLoad>"
  "quadrotor_msgs/PositionCommandLoad")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionCommandLoad)))
  "Returns string type for a message object of type 'PositionCommandLoad"
  "quadrotor_msgs/PositionCommandLoad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionCommandLoad>)))
  "Returns md5sum for a message object of type '<PositionCommandLoad>"
  "d93b1238f5c8f132b50acf13dccb9971")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionCommandLoad)))
  "Returns md5sum for a message object of type 'PositionCommandLoad"
  "d93b1238f5c8f132b50acf13dccb9971")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionCommandLoad>)))
  "Returns full string definition for message of type '<PositionCommandLoad>"
  (cl:format cl:nil "Header header~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionCommandLoad)))
  "Returns full string definition for message of type 'PositionCommandLoad"
  (cl:format cl:nil "Header header~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionCommandLoad>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionCommandLoad>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionCommandLoad
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
))
