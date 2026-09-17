; Auto-generated. Do not edit!


(cl:in-package quadrotor_msgs-msg)


;//! \htmlinclude SO3Command.msg.html

(cl:defclass <SO3Command> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (force
    :reader force
    :initarg :force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (omg
    :reader omg
    :initarg :omg
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (domg
    :reader domg
    :initarg :domg
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (aux
    :reader aux
    :initarg :aux
    :type quadrotor_msgs-msg:AuxCommand
    :initform (cl:make-instance 'quadrotor_msgs-msg:AuxCommand))
   (ref_p
    :reader ref_p
    :initarg :ref_p
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (ref_v
    :reader ref_v
    :initarg :ref_v
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (ref_a
    :reader ref_a
    :initarg :ref_a
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (ref_q
    :reader ref_q
    :initarg :ref_q
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (ref_rpy
    :reader ref_rpy
    :initarg :ref_rpy
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (ref_F
    :reader ref_F
    :initarg :ref_F
    :type cl:float
    :initform 0.0)
   (ref_qt
    :reader ref_qt
    :initarg :ref_qt
    :type cl:float
    :initform 0.0)
   (ref_qy
    :reader ref_qy
    :initarg :ref_qy
    :type cl:float
    :initform 0.0))
)

(cl:defclass SO3Command (<SO3Command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SO3Command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SO3Command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quadrotor_msgs-msg:<SO3Command> is deprecated: use quadrotor_msgs-msg:SO3Command instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SO3Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:header-val is deprecated.  Use quadrotor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SO3Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:id-val is deprecated.  Use quadrotor_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <SO3Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:force-val is deprecated.  Use quadrotor_msgs-msg:force instead.")
  (force m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <SO3Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:orientation-val is deprecated.  Use quadrotor_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'omg-val :lambda-list '(m))
(cl:defmethod omg-val ((m <SO3Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:omg-val is deprecated.  Use quadrotor_msgs-msg:omg instead.")
  (omg m))

(cl:ensure-generic-function 'domg-val :lambda-list '(m))
(cl:defmethod domg-val ((m <SO3Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:domg-val is deprecated.  Use quadrotor_msgs-msg:domg instead.")
  (domg m))

(cl:ensure-generic-function 'aux-val :lambda-list '(m))
(cl:defmethod aux-val ((m <SO3Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:aux-val is deprecated.  Use quadrotor_msgs-msg:aux instead.")
  (aux m))

(cl:ensure-generic-function 'ref_p-val :lambda-list '(m))
(cl:defmethod ref_p-val ((m <SO3Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:ref_p-val is deprecated.  Use quadrotor_msgs-msg:ref_p instead.")
  (ref_p m))

(cl:ensure-generic-function 'ref_v-val :lambda-list '(m))
(cl:defmethod ref_v-val ((m <SO3Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:ref_v-val is deprecated.  Use quadrotor_msgs-msg:ref_v instead.")
  (ref_v m))

(cl:ensure-generic-function 'ref_a-val :lambda-list '(m))
(cl:defmethod ref_a-val ((m <SO3Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:ref_a-val is deprecated.  Use quadrotor_msgs-msg:ref_a instead.")
  (ref_a m))

(cl:ensure-generic-function 'ref_q-val :lambda-list '(m))
(cl:defmethod ref_q-val ((m <SO3Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:ref_q-val is deprecated.  Use quadrotor_msgs-msg:ref_q instead.")
  (ref_q m))

(cl:ensure-generic-function 'ref_rpy-val :lambda-list '(m))
(cl:defmethod ref_rpy-val ((m <SO3Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:ref_rpy-val is deprecated.  Use quadrotor_msgs-msg:ref_rpy instead.")
  (ref_rpy m))

(cl:ensure-generic-function 'ref_F-val :lambda-list '(m))
(cl:defmethod ref_F-val ((m <SO3Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:ref_F-val is deprecated.  Use quadrotor_msgs-msg:ref_F instead.")
  (ref_F m))

(cl:ensure-generic-function 'ref_qt-val :lambda-list '(m))
(cl:defmethod ref_qt-val ((m <SO3Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:ref_qt-val is deprecated.  Use quadrotor_msgs-msg:ref_qt instead.")
  (ref_qt m))

(cl:ensure-generic-function 'ref_qy-val :lambda-list '(m))
(cl:defmethod ref_qy-val ((m <SO3Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:ref_qy-val is deprecated.  Use quadrotor_msgs-msg:ref_qy instead.")
  (ref_qy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SO3Command>) ostream)
  "Serializes a message object of type '<SO3Command>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'omg) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'domg) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'aux) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ref_p) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ref_v) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ref_a) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ref_q) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ref_rpy) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ref_F))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ref_qt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ref_qy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SO3Command>) istream)
  "Deserializes a message object of type '<SO3Command>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'omg) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'domg) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'aux) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ref_p) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ref_v) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ref_a) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ref_q) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ref_rpy) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ref_F) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ref_qt) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ref_qy) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SO3Command>)))
  "Returns string type for a message object of type '<SO3Command>"
  "quadrotor_msgs/SO3Command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SO3Command)))
  "Returns string type for a message object of type 'SO3Command"
  "quadrotor_msgs/SO3Command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SO3Command>)))
  "Returns md5sum for a message object of type '<SO3Command>"
  "cdd2dd735e73a1d9a730f9dbe0796283")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SO3Command)))
  "Returns md5sum for a message object of type 'SO3Command"
  "cdd2dd735e73a1d9a730f9dbe0796283")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SO3Command>)))
  "Returns full string definition for message of type '<SO3Command>"
  (cl:format cl:nil "Header header~%uint8 id~%geometry_msgs/Vector3 force~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 omg~%geometry_msgs/Vector3 domg~%quadrotor_msgs/AuxCommand aux~%geometry_msgs/Vector3 ref_p~%geometry_msgs/Vector3 ref_v~%geometry_msgs/Vector3 ref_a~%geometry_msgs/Vector3 ref_q~%geometry_msgs/Vector3 ref_rpy~%float64 ref_F~%float64 ref_qt~%float64 ref_qy~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: quadrotor_msgs/AuxCommand~%float64 current_yaw~%float64 kf_correction~%float64[2] angle_corrections# Trims for roll, pitch~%bool enable_motors~%bool use_external_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SO3Command)))
  "Returns full string definition for message of type 'SO3Command"
  (cl:format cl:nil "Header header~%uint8 id~%geometry_msgs/Vector3 force~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 omg~%geometry_msgs/Vector3 domg~%quadrotor_msgs/AuxCommand aux~%geometry_msgs/Vector3 ref_p~%geometry_msgs/Vector3 ref_v~%geometry_msgs/Vector3 ref_a~%geometry_msgs/Vector3 ref_q~%geometry_msgs/Vector3 ref_rpy~%float64 ref_F~%float64 ref_qt~%float64 ref_qy~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: quadrotor_msgs/AuxCommand~%float64 current_yaw~%float64 kf_correction~%float64[2] angle_corrections# Trims for roll, pitch~%bool enable_motors~%bool use_external_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SO3Command>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'omg))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'domg))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'aux))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ref_p))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ref_v))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ref_a))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ref_q))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ref_rpy))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SO3Command>))
  "Converts a ROS message object to a list"
  (cl:list 'SO3Command
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':force (force msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':omg (omg msg))
    (cl:cons ':domg (domg msg))
    (cl:cons ':aux (aux msg))
    (cl:cons ':ref_p (ref_p msg))
    (cl:cons ':ref_v (ref_v msg))
    (cl:cons ':ref_a (ref_a msg))
    (cl:cons ':ref_q (ref_q msg))
    (cl:cons ':ref_rpy (ref_rpy msg))
    (cl:cons ':ref_F (ref_F msg))
    (cl:cons ':ref_qt (ref_qt msg))
    (cl:cons ':ref_qy (ref_qy msg))
))
