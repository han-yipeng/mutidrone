; Auto-generated. Do not edit!


(cl:in-package quadrotor_msgs-msg)


;//! \htmlinclude trigger.msg.html

(cl:defclass <trigger> (roslisp-msg-protocol:ros-message)
  ((trigger_cmd
    :reader trigger_cmd
    :initarg :trigger_cmd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass trigger (<trigger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <trigger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'trigger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quadrotor_msgs-msg:<trigger> is deprecated: use quadrotor_msgs-msg:trigger instead.")))

(cl:ensure-generic-function 'trigger_cmd-val :lambda-list '(m))
(cl:defmethod trigger_cmd-val ((m <trigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:trigger_cmd-val is deprecated.  Use quadrotor_msgs-msg:trigger_cmd instead.")
  (trigger_cmd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<trigger>)))
    "Constants for message type '<trigger>"
  '((:TRIGGERTAKEOFF . 1)
    (:TRIGGERSWITCHCONTROL . 2)
    (:TRIGGERFLIGHT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'trigger)))
    "Constants for message type 'trigger"
  '((:TRIGGERTAKEOFF . 1)
    (:TRIGGERSWITCHCONTROL . 2)
    (:TRIGGERFLIGHT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <trigger>) ostream)
  "Serializes a message object of type '<trigger>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trigger_cmd)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <trigger>) istream)
  "Deserializes a message object of type '<trigger>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trigger_cmd)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<trigger>)))
  "Returns string type for a message object of type '<trigger>"
  "quadrotor_msgs/trigger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'trigger)))
  "Returns string type for a message object of type 'trigger"
  "quadrotor_msgs/trigger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<trigger>)))
  "Returns md5sum for a message object of type '<trigger>"
  "8009a0fa43f357a00d4ef52b41eda254")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'trigger)))
  "Returns md5sum for a message object of type 'trigger"
  "8009a0fa43f357a00d4ef52b41eda254")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<trigger>)))
  "Returns full string definition for message of type '<trigger>"
  (cl:format cl:nil "uint8 triggerTakeOff = 1~%uint8 triggerSwitchControl = 2~%uint8 triggerFlight = 3~%uint8 trigger_cmd~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'trigger)))
  "Returns full string definition for message of type 'trigger"
  (cl:format cl:nil "uint8 triggerTakeOff = 1~%uint8 triggerSwitchControl = 2~%uint8 triggerFlight = 3~%uint8 trigger_cmd~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <trigger>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <trigger>))
  "Converts a ROS message object to a list"
  (cl:list 'trigger
    (cl:cons ':trigger_cmd (trigger_cmd msg))
))
