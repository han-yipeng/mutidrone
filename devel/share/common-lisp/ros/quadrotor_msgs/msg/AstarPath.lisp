; Auto-generated. Do not edit!


(cl:in-package quadrotor_msgs-msg)


;//! \htmlinclude AstarPath.msg.html

(cl:defclass <AstarPath> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (points
    :reader points
    :initarg :points
    :type (cl:vector quadrotor_msgs-msg:AstarPathPoint)
   :initform (cl:make-array 0 :element-type 'quadrotor_msgs-msg:AstarPathPoint :initial-element (cl:make-instance 'quadrotor_msgs-msg:AstarPathPoint))))
)

(cl:defclass AstarPath (<AstarPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AstarPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AstarPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quadrotor_msgs-msg:<AstarPath> is deprecated: use quadrotor_msgs-msg:AstarPath instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AstarPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:header-val is deprecated.  Use quadrotor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <AstarPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:start-val is deprecated.  Use quadrotor_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <AstarPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:goal-val is deprecated.  Use quadrotor_msgs-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <AstarPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:points-val is deprecated.  Use quadrotor_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AstarPath>) ostream)
  "Serializes a message object of type '<AstarPath>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AstarPath>) istream)
  "Deserializes a message object of type '<AstarPath>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'quadrotor_msgs-msg:AstarPathPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AstarPath>)))
  "Returns string type for a message object of type '<AstarPath>"
  "quadrotor_msgs/AstarPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AstarPath)))
  "Returns string type for a message object of type 'AstarPath"
  "quadrotor_msgs/AstarPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AstarPath>)))
  "Returns md5sum for a message object of type '<AstarPath>"
  "c042622e5284a67df730df6129bec0d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AstarPath)))
  "Returns md5sum for a message object of type 'AstarPath"
  "c042622e5284a67df730df6129bec0d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AstarPath>)))
  "Returns full string definition for message of type '<AstarPath>"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Point start~%geometry_msgs/Point goal~%quadrotor_msgs/AstarPathPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: quadrotor_msgs/AstarPathPoint~%geometry_msgs/Point position~%float64 angle~%float64 clearance~%bool waypoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AstarPath)))
  "Returns full string definition for message of type 'AstarPath"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Point start~%geometry_msgs/Point goal~%quadrotor_msgs/AstarPathPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: quadrotor_msgs/AstarPathPoint~%geometry_msgs/Point position~%float64 angle~%float64 clearance~%bool waypoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AstarPath>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AstarPath>))
  "Converts a ROS message object to a list"
  (cl:list 'AstarPath
    (cl:cons ':header (header msg))
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':points (points msg))
))
