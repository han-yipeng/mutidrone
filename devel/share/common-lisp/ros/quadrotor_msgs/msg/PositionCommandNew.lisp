; Auto-generated. Do not edit!


(cl:in-package quadrotor_msgs-msg)


;//! \htmlinclude PositionCommandNew.msg.html

(cl:defclass <PositionCommandNew> (roslisp-msg-protocol:ros-message)
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
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (jerk
    :reader jerk
    :initarg :jerk
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (snap
    :reader snap
    :initarg :snap
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angT
    :reader angT
    :initarg :angT
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (dAngT
    :reader dAngT
    :initarg :dAngT
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (d2AngT
    :reader d2AngT
    :initarg :d2AngT
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (d3AngT
    :reader d3AngT
    :initarg :d3AngT
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (d4AngT
    :reader d4AngT
    :initarg :d4AngT
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (yaw_dot
    :reader yaw_dot
    :initarg :yaw_dot
    :type cl:float
    :initform 0.0)
   (yaw_acc
    :reader yaw_acc
    :initarg :yaw_acc
    :type cl:float
    :initform 0.0)
   (trajectory_id
    :reader trajectory_id
    :initarg :trajectory_id
    :type cl:integer
    :initform 0)
   (trajectory_flag
    :reader trajectory_flag
    :initarg :trajectory_flag
    :type cl:fixnum
    :initform 0)
   (flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PositionCommandNew (<PositionCommandNew>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionCommandNew>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionCommandNew)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quadrotor_msgs-msg:<PositionCommandNew> is deprecated: use quadrotor_msgs-msg:PositionCommandNew instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:header-val is deprecated.  Use quadrotor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:position-val is deprecated.  Use quadrotor_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:velocity-val is deprecated.  Use quadrotor_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:acceleration-val is deprecated.  Use quadrotor_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'jerk-val :lambda-list '(m))
(cl:defmethod jerk-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:jerk-val is deprecated.  Use quadrotor_msgs-msg:jerk instead.")
  (jerk m))

(cl:ensure-generic-function 'snap-val :lambda-list '(m))
(cl:defmethod snap-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:snap-val is deprecated.  Use quadrotor_msgs-msg:snap instead.")
  (snap m))

(cl:ensure-generic-function 'angT-val :lambda-list '(m))
(cl:defmethod angT-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:angT-val is deprecated.  Use quadrotor_msgs-msg:angT instead.")
  (angT m))

(cl:ensure-generic-function 'dAngT-val :lambda-list '(m))
(cl:defmethod dAngT-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:dAngT-val is deprecated.  Use quadrotor_msgs-msg:dAngT instead.")
  (dAngT m))

(cl:ensure-generic-function 'd2AngT-val :lambda-list '(m))
(cl:defmethod d2AngT-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:d2AngT-val is deprecated.  Use quadrotor_msgs-msg:d2AngT instead.")
  (d2AngT m))

(cl:ensure-generic-function 'd3AngT-val :lambda-list '(m))
(cl:defmethod d3AngT-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:d3AngT-val is deprecated.  Use quadrotor_msgs-msg:d3AngT instead.")
  (d3AngT m))

(cl:ensure-generic-function 'd4AngT-val :lambda-list '(m))
(cl:defmethod d4AngT-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:d4AngT-val is deprecated.  Use quadrotor_msgs-msg:d4AngT instead.")
  (d4AngT m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:yaw-val is deprecated.  Use quadrotor_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'yaw_dot-val :lambda-list '(m))
(cl:defmethod yaw_dot-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:yaw_dot-val is deprecated.  Use quadrotor_msgs-msg:yaw_dot instead.")
  (yaw_dot m))

(cl:ensure-generic-function 'yaw_acc-val :lambda-list '(m))
(cl:defmethod yaw_acc-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:yaw_acc-val is deprecated.  Use quadrotor_msgs-msg:yaw_acc instead.")
  (yaw_acc m))

(cl:ensure-generic-function 'trajectory_id-val :lambda-list '(m))
(cl:defmethod trajectory_id-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:trajectory_id-val is deprecated.  Use quadrotor_msgs-msg:trajectory_id instead.")
  (trajectory_id m))

(cl:ensure-generic-function 'trajectory_flag-val :lambda-list '(m))
(cl:defmethod trajectory_flag-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:trajectory_flag-val is deprecated.  Use quadrotor_msgs-msg:trajectory_flag instead.")
  (trajectory_flag m))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <PositionCommandNew>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:flag-val is deprecated.  Use quadrotor_msgs-msg:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PositionCommandNew>)))
    "Constants for message type '<PositionCommandNew>"
  '((:TRAJECTORY_STATUS_EMPTY . 0)
    (:TRAJECTORY_STATUS_READY . 1)
    (:TRAJECTORY_STATUS_COMPLETED . 3)
    (:TRAJECTROY_STATUS_ABORT . 4)
    (:TRAJECTORY_STATUS_ILLEGAL_START . 5)
    (:TRAJECTORY_STATUS_ILLEGAL_FINAL . 6)
    (:TRAJECTORY_STATUS_IMPOSSIBLE . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PositionCommandNew)))
    "Constants for message type 'PositionCommandNew"
  '((:TRAJECTORY_STATUS_EMPTY . 0)
    (:TRAJECTORY_STATUS_READY . 1)
    (:TRAJECTORY_STATUS_COMPLETED . 3)
    (:TRAJECTROY_STATUS_ABORT . 4)
    (:TRAJECTORY_STATUS_ILLEGAL_START . 5)
    (:TRAJECTORY_STATUS_ILLEGAL_FINAL . 6)
    (:TRAJECTORY_STATUS_IMPOSSIBLE . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionCommandNew>) ostream)
  "Serializes a message object of type '<PositionCommandNew>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'jerk) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'snap) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angT) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dAngT) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'd2AngT) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'd3AngT) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'd4AngT) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trajectory_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trajectory_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trajectory_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trajectory_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trajectory_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionCommandNew>) istream)
  "Deserializes a message object of type '<PositionCommandNew>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'jerk) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'snap) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angT) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dAngT) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'd2AngT) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'd3AngT) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'd4AngT) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_dot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_acc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trajectory_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trajectory_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'trajectory_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'trajectory_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trajectory_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionCommandNew>)))
  "Returns string type for a message object of type '<PositionCommandNew>"
  "quadrotor_msgs/PositionCommandNew")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionCommandNew)))
  "Returns string type for a message object of type 'PositionCommandNew"
  "quadrotor_msgs/PositionCommandNew")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionCommandNew>)))
  "Returns md5sum for a message object of type '<PositionCommandNew>"
  "a692de32b73afd5934726e7cbc8f9797")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionCommandNew)))
  "Returns md5sum for a message object of type 'PositionCommandNew"
  "a692de32b73afd5934726e7cbc8f9797")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionCommandNew>)))
  "Returns full string definition for message of type '<PositionCommandNew>"
  (cl:format cl:nil "Header header~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 jerk~%geometry_msgs/Vector3 snap~%geometry_msgs/Vector3 angT~%geometry_msgs/Vector3 dAngT~%geometry_msgs/Vector3 d2AngT~%geometry_msgs/Vector3 d3AngT~%geometry_msgs/Vector3 d4AngT~%float64 yaw~%float64 yaw_dot~%float64 yaw_acc~%~%uint32 trajectory_id~%~%uint8 TRAJECTORY_STATUS_EMPTY = 0~%uint8 TRAJECTORY_STATUS_READY = 1~%uint8 TRAJECTORY_STATUS_COMPLETED = 3~%uint8 TRAJECTROY_STATUS_ABORT = 4~%uint8 TRAJECTORY_STATUS_ILLEGAL_START = 5~%uint8 TRAJECTORY_STATUS_ILLEGAL_FINAL = 6~%uint8 TRAJECTORY_STATUS_IMPOSSIBLE = 7~%~%# Its ID number will start from 1, allowing you comparing it with 0.~%uint8 trajectory_flag~%uint8 flag~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionCommandNew)))
  "Returns full string definition for message of type 'PositionCommandNew"
  (cl:format cl:nil "Header header~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 jerk~%geometry_msgs/Vector3 snap~%geometry_msgs/Vector3 angT~%geometry_msgs/Vector3 dAngT~%geometry_msgs/Vector3 d2AngT~%geometry_msgs/Vector3 d3AngT~%geometry_msgs/Vector3 d4AngT~%float64 yaw~%float64 yaw_dot~%float64 yaw_acc~%~%uint32 trajectory_id~%~%uint8 TRAJECTORY_STATUS_EMPTY = 0~%uint8 TRAJECTORY_STATUS_READY = 1~%uint8 TRAJECTORY_STATUS_COMPLETED = 3~%uint8 TRAJECTROY_STATUS_ABORT = 4~%uint8 TRAJECTORY_STATUS_ILLEGAL_START = 5~%uint8 TRAJECTORY_STATUS_ILLEGAL_FINAL = 6~%uint8 TRAJECTORY_STATUS_IMPOSSIBLE = 7~%~%# Its ID number will start from 1, allowing you comparing it with 0.~%uint8 trajectory_flag~%uint8 flag~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionCommandNew>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'jerk))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'snap))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angT))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dAngT))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'd2AngT))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'd3AngT))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'd4AngT))
     8
     8
     8
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionCommandNew>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionCommandNew
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':jerk (jerk msg))
    (cl:cons ':snap (snap msg))
    (cl:cons ':angT (angT msg))
    (cl:cons ':dAngT (dAngT msg))
    (cl:cons ':d2AngT (d2AngT msg))
    (cl:cons ':d3AngT (d3AngT msg))
    (cl:cons ':d4AngT (d4AngT msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':yaw_dot (yaw_dot msg))
    (cl:cons ':yaw_acc (yaw_acc msg))
    (cl:cons ':trajectory_id (trajectory_id msg))
    (cl:cons ':trajectory_flag (trajectory_flag msg))
    (cl:cons ':flag (flag msg))
))
