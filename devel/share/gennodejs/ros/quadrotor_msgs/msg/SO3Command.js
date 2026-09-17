// Auto-generated. Do not edit!

// (in-package quadrotor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AuxCommand = require('./AuxCommand.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SO3Command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.force = null;
      this.orientation = null;
      this.omg = null;
      this.domg = null;
      this.aux = null;
      this.ref_p = null;
      this.ref_v = null;
      this.ref_a = null;
      this.ref_q = null;
      this.ref_rpy = null;
      this.ref_F = null;
      this.ref_qt = null;
      this.ref_qy = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('omg')) {
        this.omg = initObj.omg
      }
      else {
        this.omg = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('domg')) {
        this.domg = initObj.domg
      }
      else {
        this.domg = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('aux')) {
        this.aux = initObj.aux
      }
      else {
        this.aux = new AuxCommand();
      }
      if (initObj.hasOwnProperty('ref_p')) {
        this.ref_p = initObj.ref_p
      }
      else {
        this.ref_p = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('ref_v')) {
        this.ref_v = initObj.ref_v
      }
      else {
        this.ref_v = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('ref_a')) {
        this.ref_a = initObj.ref_a
      }
      else {
        this.ref_a = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('ref_q')) {
        this.ref_q = initObj.ref_q
      }
      else {
        this.ref_q = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('ref_rpy')) {
        this.ref_rpy = initObj.ref_rpy
      }
      else {
        this.ref_rpy = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('ref_F')) {
        this.ref_F = initObj.ref_F
      }
      else {
        this.ref_F = 0.0;
      }
      if (initObj.hasOwnProperty('ref_qt')) {
        this.ref_qt = initObj.ref_qt
      }
      else {
        this.ref_qt = 0.0;
      }
      if (initObj.hasOwnProperty('ref_qy')) {
        this.ref_qy = initObj.ref_qy
      }
      else {
        this.ref_qy = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SO3Command
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [force]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.force, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [omg]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.omg, buffer, bufferOffset);
    // Serialize message field [domg]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.domg, buffer, bufferOffset);
    // Serialize message field [aux]
    bufferOffset = AuxCommand.serialize(obj.aux, buffer, bufferOffset);
    // Serialize message field [ref_p]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.ref_p, buffer, bufferOffset);
    // Serialize message field [ref_v]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.ref_v, buffer, bufferOffset);
    // Serialize message field [ref_a]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.ref_a, buffer, bufferOffset);
    // Serialize message field [ref_q]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.ref_q, buffer, bufferOffset);
    // Serialize message field [ref_rpy]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.ref_rpy, buffer, bufferOffset);
    // Serialize message field [ref_F]
    bufferOffset = _serializer.float64(obj.ref_F, buffer, bufferOffset);
    // Serialize message field [ref_qt]
    bufferOffset = _serializer.float64(obj.ref_qt, buffer, bufferOffset);
    // Serialize message field [ref_qy]
    bufferOffset = _serializer.float64(obj.ref_qy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SO3Command
    let len;
    let data = new SO3Command(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [force]
    data.force = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [omg]
    data.omg = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [domg]
    data.domg = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [aux]
    data.aux = AuxCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [ref_p]
    data.ref_p = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [ref_v]
    data.ref_v = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [ref_a]
    data.ref_a = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [ref_q]
    data.ref_q = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [ref_rpy]
    data.ref_rpy = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [ref_F]
    data.ref_F = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_qt]
    data.ref_qt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_qy]
    data.ref_qy = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 283;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadrotor_msgs/SO3Command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cdd2dd735e73a1d9a730f9dbe0796283';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 id
    geometry_msgs/Vector3 force
    geometry_msgs/Quaternion orientation
    geometry_msgs/Vector3 omg
    geometry_msgs/Vector3 domg
    quadrotor_msgs/AuxCommand aux
    geometry_msgs/Vector3 ref_p
    geometry_msgs/Vector3 ref_v
    geometry_msgs/Vector3 ref_a
    geometry_msgs/Vector3 ref_q
    geometry_msgs/Vector3 ref_rpy
    float64 ref_F
    float64 ref_qt
    float64 ref_qy
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: quadrotor_msgs/AuxCommand
    float64 current_yaw
    float64 kf_correction
    float64[2] angle_corrections# Trims for roll, pitch
    bool enable_motors
    bool use_external_yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SO3Command(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.force !== undefined) {
      resolved.force = geometry_msgs.msg.Vector3.Resolve(msg.force)
    }
    else {
      resolved.force = new geometry_msgs.msg.Vector3()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = geometry_msgs.msg.Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new geometry_msgs.msg.Quaternion()
    }

    if (msg.omg !== undefined) {
      resolved.omg = geometry_msgs.msg.Vector3.Resolve(msg.omg)
    }
    else {
      resolved.omg = new geometry_msgs.msg.Vector3()
    }

    if (msg.domg !== undefined) {
      resolved.domg = geometry_msgs.msg.Vector3.Resolve(msg.domg)
    }
    else {
      resolved.domg = new geometry_msgs.msg.Vector3()
    }

    if (msg.aux !== undefined) {
      resolved.aux = AuxCommand.Resolve(msg.aux)
    }
    else {
      resolved.aux = new AuxCommand()
    }

    if (msg.ref_p !== undefined) {
      resolved.ref_p = geometry_msgs.msg.Vector3.Resolve(msg.ref_p)
    }
    else {
      resolved.ref_p = new geometry_msgs.msg.Vector3()
    }

    if (msg.ref_v !== undefined) {
      resolved.ref_v = geometry_msgs.msg.Vector3.Resolve(msg.ref_v)
    }
    else {
      resolved.ref_v = new geometry_msgs.msg.Vector3()
    }

    if (msg.ref_a !== undefined) {
      resolved.ref_a = geometry_msgs.msg.Vector3.Resolve(msg.ref_a)
    }
    else {
      resolved.ref_a = new geometry_msgs.msg.Vector3()
    }

    if (msg.ref_q !== undefined) {
      resolved.ref_q = geometry_msgs.msg.Vector3.Resolve(msg.ref_q)
    }
    else {
      resolved.ref_q = new geometry_msgs.msg.Vector3()
    }

    if (msg.ref_rpy !== undefined) {
      resolved.ref_rpy = geometry_msgs.msg.Vector3.Resolve(msg.ref_rpy)
    }
    else {
      resolved.ref_rpy = new geometry_msgs.msg.Vector3()
    }

    if (msg.ref_F !== undefined) {
      resolved.ref_F = msg.ref_F;
    }
    else {
      resolved.ref_F = 0.0
    }

    if (msg.ref_qt !== undefined) {
      resolved.ref_qt = msg.ref_qt;
    }
    else {
      resolved.ref_qt = 0.0
    }

    if (msg.ref_qy !== undefined) {
      resolved.ref_qy = msg.ref_qy;
    }
    else {
      resolved.ref_qy = 0.0
    }

    return resolved;
    }
};

module.exports = SO3Command;
