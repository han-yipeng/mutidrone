; Auto-generated. Do not edit!


(cl:in-package quadrotor_msgs-msg)


;//! \htmlinclude IndiState.msg.html

(cl:defclass <IndiState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (indiF
    :reader indiF
    :initarg :indiF
    :type cl:float
    :initform 0.0)
   (indiqt
    :reader indiqt
    :initarg :indiqt
    :type cl:float
    :initform 0.0)
   (indiqy
    :reader indiqy
    :initarg :indiqy
    :type cl:float
    :initform 0.0)
   (indiq
    :reader indiq
    :initarg :indiq
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (drpy
    :reader drpy
    :initarg :drpy
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (cp
    :reader cp
    :initarg :cp
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (cv
    :reader cv
    :initarg :cv
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (ca
    :reader ca
    :initarg :ca
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (cq
    :reader cq
    :initarg :cq
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (cF
    :reader cF
    :initarg :cF
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass IndiState (<IndiState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IndiState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IndiState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quadrotor_msgs-msg:<IndiState> is deprecated: use quadrotor_msgs-msg:IndiState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <IndiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:header-val is deprecated.  Use quadrotor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'indiF-val :lambda-list '(m))
(cl:defmethod indiF-val ((m <IndiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:indiF-val is deprecated.  Use quadrotor_msgs-msg:indiF instead.")
  (indiF m))

(cl:ensure-generic-function 'indiqt-val :lambda-list '(m))
(cl:defmethod indiqt-val ((m <IndiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:indiqt-val is deprecated.  Use quadrotor_msgs-msg:indiqt instead.")
  (indiqt m))

(cl:ensure-generic-function 'indiqy-val :lambda-list '(m))
(cl:defmethod indiqy-val ((m <IndiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:indiqy-val is deprecated.  Use quadrotor_msgs-msg:indiqy instead.")
  (indiqy m))

(cl:ensure-generic-function 'indiq-val :lambda-list '(m))
(cl:defmethod indiq-val ((m <IndiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:indiq-val is deprecated.  Use quadrotor_msgs-msg:indiq instead.")
  (indiq m))

(cl:ensure-generic-function 'drpy-val :lambda-list '(m))
(cl:defmethod drpy-val ((m <IndiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:drpy-val is deprecated.  Use quadrotor_msgs-msg:drpy instead.")
  (drpy m))

(cl:ensure-generic-function 'cp-val :lambda-list '(m))
(cl:defmethod cp-val ((m <IndiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:cp-val is deprecated.  Use quadrotor_msgs-msg:cp instead.")
  (cp m))

(cl:ensure-generic-function 'cv-val :lambda-list '(m))
(cl:defmethod cv-val ((m <IndiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:cv-val is deprecated.  Use quadrotor_msgs-msg:cv instead.")
  (cv m))

(cl:ensure-generic-function 'ca-val :lambda-list '(m))
(cl:defmethod ca-val ((m <IndiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:ca-val is deprecated.  Use quadrotor_msgs-msg:ca instead.")
  (ca m))

(cl:ensure-generic-function 'cq-val :lambda-list '(m))
(cl:defmethod cq-val ((m <IndiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:cq-val is deprecated.  Use quadrotor_msgs-msg:cq instead.")
  (cq m))

(cl:ensure-generic-function 'cF-val :lambda-list '(m))
(cl:defmethod cF-val ((m <IndiState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:cF-val is deprecated.  Use quadrotor_msgs-msg:cF instead.")
  (cF m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IndiState>) ostream)
  "Serializes a message object of type '<IndiState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'indiF))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'indiqt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'indiqy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'indiq) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'drpy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cv) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ca) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cq) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cF) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IndiState>) istream)
  "Deserializes a message object of type '<IndiState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'indiF) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'indiqt) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'indiqy) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'indiq) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'drpy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cv) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ca) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cq) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cF) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IndiState>)))
  "Returns string type for a message object of type '<IndiState>"
  "quadrotor_msgs/IndiState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IndiState)))
  "Returns string type for a message object of type 'IndiState"
  "quadrotor_msgs/IndiState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IndiState>)))
  "Returns md5sum for a message object of type '<IndiState>"
  "3911a5b39960e03dbb9636a0eb9cd311")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IndiState)))
  "Returns md5sum for a message object of type 'IndiState"
  "3911a5b39960e03dbb9636a0eb9cd311")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IndiState>)))
  "Returns full string definition for message of type '<IndiState>"
  (cl:format cl:nil "Header header~%float64 indiF~%float64 indiqt~%float64 indiqy~%geometry_msgs/Vector3 indiq~%geometry_msgs/Vector3 drpy~%geometry_msgs/Vector3 cp~%geometry_msgs/Vector3 cv~%geometry_msgs/Vector3 ca~%geometry_msgs/Vector3 cq~%geometry_msgs/Vector3 cF ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IndiState)))
  "Returns full string definition for message of type 'IndiState"
  (cl:format cl:nil "Header header~%float64 indiF~%float64 indiqt~%float64 indiqy~%geometry_msgs/Vector3 indiq~%geometry_msgs/Vector3 drpy~%geometry_msgs/Vector3 cp~%geometry_msgs/Vector3 cv~%geometry_msgs/Vector3 ca~%geometry_msgs/Vector3 cq~%geometry_msgs/Vector3 cF ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IndiState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'indiq))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'drpy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cv))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ca))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cq))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cF))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IndiState>))
  "Converts a ROS message object to a list"
  (cl:list 'IndiState
    (cl:cons ':header (header msg))
    (cl:cons ':indiF (indiF msg))
    (cl:cons ':indiqt (indiqt msg))
    (cl:cons ':indiqy (indiqy msg))
    (cl:cons ':indiq (indiq msg))
    (cl:cons ':drpy (drpy msg))
    (cl:cons ':cp (cp msg))
    (cl:cons ':cv (cv msg))
    (cl:cons ':ca (ca msg))
    (cl:cons ':cq (cq msg))
    (cl:cons ':cF (cF msg))
))
