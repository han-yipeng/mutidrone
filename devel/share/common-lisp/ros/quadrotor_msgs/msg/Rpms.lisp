; Auto-generated. Do not edit!


(cl:in-package quadrotor_msgs-msg)


;//! \htmlinclude Rpms.msg.html

(cl:defclass <Rpms> (roslisp-msg-protocol:ros-message)
  ((rpm0
    :reader rpm0
    :initarg :rpm0
    :type cl:float
    :initform 0.0)
   (rpm1
    :reader rpm1
    :initarg :rpm1
    :type cl:float
    :initform 0.0)
   (rpm2
    :reader rpm2
    :initarg :rpm2
    :type cl:float
    :initform 0.0)
   (rpm3
    :reader rpm3
    :initarg :rpm3
    :type cl:float
    :initform 0.0))
)

(cl:defclass Rpms (<Rpms>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rpms>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rpms)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quadrotor_msgs-msg:<Rpms> is deprecated: use quadrotor_msgs-msg:Rpms instead.")))

(cl:ensure-generic-function 'rpm0-val :lambda-list '(m))
(cl:defmethod rpm0-val ((m <Rpms>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:rpm0-val is deprecated.  Use quadrotor_msgs-msg:rpm0 instead.")
  (rpm0 m))

(cl:ensure-generic-function 'rpm1-val :lambda-list '(m))
(cl:defmethod rpm1-val ((m <Rpms>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:rpm1-val is deprecated.  Use quadrotor_msgs-msg:rpm1 instead.")
  (rpm1 m))

(cl:ensure-generic-function 'rpm2-val :lambda-list '(m))
(cl:defmethod rpm2-val ((m <Rpms>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:rpm2-val is deprecated.  Use quadrotor_msgs-msg:rpm2 instead.")
  (rpm2 m))

(cl:ensure-generic-function 'rpm3-val :lambda-list '(m))
(cl:defmethod rpm3-val ((m <Rpms>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:rpm3-val is deprecated.  Use quadrotor_msgs-msg:rpm3 instead.")
  (rpm3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rpms>) ostream)
  "Serializes a message object of type '<Rpms>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rpm0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rpm1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rpm2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rpm3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rpms>) istream)
  "Deserializes a message object of type '<Rpms>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rpm0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rpm1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rpm2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rpm3) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rpms>)))
  "Returns string type for a message object of type '<Rpms>"
  "quadrotor_msgs/Rpms")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rpms)))
  "Returns string type for a message object of type 'Rpms"
  "quadrotor_msgs/Rpms")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rpms>)))
  "Returns md5sum for a message object of type '<Rpms>"
  "8f34c377dbbd6cd5c05fde291e41b791")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rpms)))
  "Returns md5sum for a message object of type 'Rpms"
  "8f34c377dbbd6cd5c05fde291e41b791")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rpms>)))
  "Returns full string definition for message of type '<Rpms>"
  (cl:format cl:nil "float64 rpm0~%float64 rpm1~%float64 rpm2~%float64 rpm3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rpms)))
  "Returns full string definition for message of type 'Rpms"
  (cl:format cl:nil "float64 rpm0~%float64 rpm1~%float64 rpm2~%float64 rpm3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rpms>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rpms>))
  "Converts a ROS message object to a list"
  (cl:list 'Rpms
    (cl:cons ':rpm0 (rpm0 msg))
    (cl:cons ':rpm1 (rpm1 msg))
    (cl:cons ':rpm2 (rpm2 msg))
    (cl:cons ':rpm3 (rpm3 msg))
))
