; Auto-generated. Do not edit!


(cl:in-package quadrotor_msgs-msg)


;//! \htmlinclude CorridorPolytope.msg.html

(cl:defclass <CorridorPolytope> (roslisp-msg-protocol:ros-message)
  ((path_begin
    :reader path_begin
    :initarg :path_begin
    :type cl:integer
    :initform 0)
   (path_end
    :reader path_end
    :initarg :path_end
    :type cl:integer
    :initform 0)
   (normals
    :reader normals
    :initarg :normals
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (offsets
    :reader offsets
    :initarg :offsets
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (vertices
    :reader vertices
    :initarg :vertices
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (clearance_bridge
    :reader clearance_bridge
    :initarg :clearance_bridge
    :type cl:boolean
    :initform cl:nil)
   (complexity
    :reader complexity
    :initarg :complexity
    :type cl:float
    :initform 0.0)
   (local_extent
    :reader local_extent
    :initarg :local_extent
    :type cl:float
    :initform 0.0)
   (minimum_system_margin
    :reader minimum_system_margin
    :initarg :minimum_system_margin
    :type cl:float
    :initform 0.0)
   (maximum_system_margin
    :reader maximum_system_margin
    :initarg :maximum_system_margin
    :type cl:float
    :initform 0.0))
)

(cl:defclass CorridorPolytope (<CorridorPolytope>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CorridorPolytope>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CorridorPolytope)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quadrotor_msgs-msg:<CorridorPolytope> is deprecated: use quadrotor_msgs-msg:CorridorPolytope instead.")))

(cl:ensure-generic-function 'path_begin-val :lambda-list '(m))
(cl:defmethod path_begin-val ((m <CorridorPolytope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:path_begin-val is deprecated.  Use quadrotor_msgs-msg:path_begin instead.")
  (path_begin m))

(cl:ensure-generic-function 'path_end-val :lambda-list '(m))
(cl:defmethod path_end-val ((m <CorridorPolytope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:path_end-val is deprecated.  Use quadrotor_msgs-msg:path_end instead.")
  (path_end m))

(cl:ensure-generic-function 'normals-val :lambda-list '(m))
(cl:defmethod normals-val ((m <CorridorPolytope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:normals-val is deprecated.  Use quadrotor_msgs-msg:normals instead.")
  (normals m))

(cl:ensure-generic-function 'offsets-val :lambda-list '(m))
(cl:defmethod offsets-val ((m <CorridorPolytope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:offsets-val is deprecated.  Use quadrotor_msgs-msg:offsets instead.")
  (offsets m))

(cl:ensure-generic-function 'vertices-val :lambda-list '(m))
(cl:defmethod vertices-val ((m <CorridorPolytope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:vertices-val is deprecated.  Use quadrotor_msgs-msg:vertices instead.")
  (vertices m))

(cl:ensure-generic-function 'clearance_bridge-val :lambda-list '(m))
(cl:defmethod clearance_bridge-val ((m <CorridorPolytope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:clearance_bridge-val is deprecated.  Use quadrotor_msgs-msg:clearance_bridge instead.")
  (clearance_bridge m))

(cl:ensure-generic-function 'complexity-val :lambda-list '(m))
(cl:defmethod complexity-val ((m <CorridorPolytope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:complexity-val is deprecated.  Use quadrotor_msgs-msg:complexity instead.")
  (complexity m))

(cl:ensure-generic-function 'local_extent-val :lambda-list '(m))
(cl:defmethod local_extent-val ((m <CorridorPolytope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:local_extent-val is deprecated.  Use quadrotor_msgs-msg:local_extent instead.")
  (local_extent m))

(cl:ensure-generic-function 'minimum_system_margin-val :lambda-list '(m))
(cl:defmethod minimum_system_margin-val ((m <CorridorPolytope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:minimum_system_margin-val is deprecated.  Use quadrotor_msgs-msg:minimum_system_margin instead.")
  (minimum_system_margin m))

(cl:ensure-generic-function 'maximum_system_margin-val :lambda-list '(m))
(cl:defmethod maximum_system_margin-val ((m <CorridorPolytope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quadrotor_msgs-msg:maximum_system_margin-val is deprecated.  Use quadrotor_msgs-msg:maximum_system_margin instead.")
  (maximum_system_margin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CorridorPolytope>) ostream)
  "Serializes a message object of type '<CorridorPolytope>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_begin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'path_begin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'path_begin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'path_begin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'path_end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'path_end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'path_end)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'normals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'normals))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'offsets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'offsets))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vertices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vertices))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clearance_bridge) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'complexity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'local_extent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'minimum_system_margin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'maximum_system_margin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CorridorPolytope>) istream)
  "Deserializes a message object of type '<CorridorPolytope>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_begin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'path_begin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'path_begin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'path_begin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'path_end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'path_end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'path_end)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'normals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'normals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'offsets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'offsets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vertices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vertices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'clearance_bridge) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:setf (cl:slot-value msg 'local_extent) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minimum_system_margin) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maximum_system_margin) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CorridorPolytope>)))
  "Returns string type for a message object of type '<CorridorPolytope>"
  "quadrotor_msgs/CorridorPolytope")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CorridorPolytope)))
  "Returns string type for a message object of type 'CorridorPolytope"
  "quadrotor_msgs/CorridorPolytope")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CorridorPolytope>)))
  "Returns md5sum for a message object of type '<CorridorPolytope>"
  "f1ee3021eb38c109bf2fef158ffb37a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CorridorPolytope)))
  "Returns md5sum for a message object of type 'CorridorPolytope"
  "f1ee3021eb38c109bf2fef158ffb37a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CorridorPolytope>)))
  "Returns full string definition for message of type '<CorridorPolytope>"
  (cl:format cl:nil "uint32 path_begin~%uint32 path_end~%geometry_msgs/Vector3[] normals~%float64[] offsets~%geometry_msgs/Point[] vertices~%bool clearance_bridge~%float64 complexity~%float64 local_extent~%float64 minimum_system_margin~%float64 maximum_system_margin~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CorridorPolytope)))
  "Returns full string definition for message of type 'CorridorPolytope"
  (cl:format cl:nil "uint32 path_begin~%uint32 path_end~%geometry_msgs/Vector3[] normals~%float64[] offsets~%geometry_msgs/Point[] vertices~%bool clearance_bridge~%float64 complexity~%float64 local_extent~%float64 minimum_system_margin~%float64 maximum_system_margin~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CorridorPolytope>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'normals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'offsets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vertices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CorridorPolytope>))
  "Converts a ROS message object to a list"
  (cl:list 'CorridorPolytope
    (cl:cons ':path_begin (path_begin msg))
    (cl:cons ':path_end (path_end msg))
    (cl:cons ':normals (normals msg))
    (cl:cons ':offsets (offsets msg))
    (cl:cons ':vertices (vertices msg))
    (cl:cons ':clearance_bridge (clearance_bridge msg))
    (cl:cons ':complexity (complexity msg))
    (cl:cons ':local_extent (local_extent msg))
    (cl:cons ':minimum_system_margin (minimum_system_margin msg))
    (cl:cons ':maximum_system_margin (maximum_system_margin msg))
))
