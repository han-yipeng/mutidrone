// Auto-generated. Do not edit!

// (in-package quadrotor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PositionCommandNew {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.position = null;
      this.velocity = null;
      this.acceleration = null;
      this.jerk = null;
      this.snap = null;
      this.angT = null;
      this.dAngT = null;
      this.d2AngT = null;
      this.d3AngT = null;
      this.d4AngT = null;
      this.yaw = null;
      this.yaw_dot = null;
      this.yaw_acc = null;
      this.trajectory_id = null;
      this.trajectory_flag = null;
      this.flag = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('jerk')) {
        this.jerk = initObj.jerk
      }
      else {
        this.jerk = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('snap')) {
        this.snap = initObj.snap
      }
      else {
        this.snap = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angT')) {
        this.angT = initObj.angT
      }
      else {
        this.angT = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('dAngT')) {
        this.dAngT = initObj.dAngT
      }
      else {
        this.dAngT = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('d2AngT')) {
        this.d2AngT = initObj.d2AngT
      }
      else {
        this.d2AngT = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('d3AngT')) {
        this.d3AngT = initObj.d3AngT
      }
      else {
        this.d3AngT = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('d4AngT')) {
        this.d4AngT = initObj.d4AngT
      }
      else {
        this.d4AngT = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_dot')) {
        this.yaw_dot = initObj.yaw_dot
      }
      else {
        this.yaw_dot = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_acc')) {
        this.yaw_acc = initObj.yaw_acc
      }
      else {
        this.yaw_acc = 0.0;
      }
      if (initObj.hasOwnProperty('trajectory_id')) {
        this.trajectory_id = initObj.trajectory_id
      }
      else {
        this.trajectory_id = 0;
      }
      if (initObj.hasOwnProperty('trajectory_flag')) {
        this.trajectory_flag = initObj.trajectory_flag
      }
      else {
        this.trajectory_flag = 0;
      }
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionCommandNew
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [jerk]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.jerk, buffer, bufferOffset);
    // Serialize message field [snap]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.snap, buffer, bufferOffset);
    // Serialize message field [angT]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angT, buffer, bufferOffset);
    // Serialize message field [dAngT]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.dAngT, buffer, bufferOffset);
    // Serialize message field [d2AngT]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.d2AngT, buffer, bufferOffset);
    // Serialize message field [d3AngT]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.d3AngT, buffer, bufferOffset);
    // Serialize message field [d4AngT]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.d4AngT, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [yaw_dot]
    bufferOffset = _serializer.float64(obj.yaw_dot, buffer, bufferOffset);
    // Serialize message field [yaw_acc]
    bufferOffset = _serializer.float64(obj.yaw_acc, buffer, bufferOffset);
    // Serialize message field [trajectory_id]
    bufferOffset = _serializer.uint32(obj.trajectory_id, buffer, bufferOffset);
    // Serialize message field [trajectory_flag]
    bufferOffset = _serializer.uint8(obj.trajectory_flag, buffer, bufferOffset);
    // Serialize message field [flag]
    bufferOffset = _serializer.uint8(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionCommandNew
    let len;
    let data = new PositionCommandNew(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [jerk]
    data.jerk = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [snap]
    data.snap = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angT]
    data.angT = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [dAngT]
    data.dAngT = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [d2AngT]
    data.d2AngT = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [d3AngT]
    data.d3AngT = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [d4AngT]
    data.d4AngT = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_dot]
    data.yaw_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_acc]
    data.yaw_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trajectory_id]
    data.trajectory_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [trajectory_flag]
    data.trajectory_flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flag]
    data.flag = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 270;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadrotor_msgs/PositionCommandNew';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a692de32b73afd5934726e7cbc8f9797';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    geometry_msgs/Point position
    geometry_msgs/Vector3 velocity
    geometry_msgs/Vector3 acceleration
    geometry_msgs/Vector3 jerk
    geometry_msgs/Vector3 snap
    geometry_msgs/Vector3 angT
    geometry_msgs/Vector3 dAngT
    geometry_msgs/Vector3 d2AngT
    geometry_msgs/Vector3 d3AngT
    geometry_msgs/Vector3 d4AngT
    float64 yaw
    float64 yaw_dot
    float64 yaw_acc
    
    uint32 trajectory_id
    
    uint8 TRAJECTORY_STATUS_EMPTY = 0
    uint8 TRAJECTORY_STATUS_READY = 1
    uint8 TRAJECTORY_STATUS_COMPLETED = 3
    uint8 TRAJECTROY_STATUS_ABORT = 4
    uint8 TRAJECTORY_STATUS_ILLEGAL_START = 5
    uint8 TRAJECTORY_STATUS_ILLEGAL_FINAL = 6
    uint8 TRAJECTORY_STATUS_IMPOSSIBLE = 7
    
    # Its ID number will start from 1, allowing you comparing it with 0.
    uint8 trajectory_flag
    uint8 flag
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionCommandNew(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = geometry_msgs.msg.Vector3.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.jerk !== undefined) {
      resolved.jerk = geometry_msgs.msg.Vector3.Resolve(msg.jerk)
    }
    else {
      resolved.jerk = new geometry_msgs.msg.Vector3()
    }

    if (msg.snap !== undefined) {
      resolved.snap = geometry_msgs.msg.Vector3.Resolve(msg.snap)
    }
    else {
      resolved.snap = new geometry_msgs.msg.Vector3()
    }

    if (msg.angT !== undefined) {
      resolved.angT = geometry_msgs.msg.Vector3.Resolve(msg.angT)
    }
    else {
      resolved.angT = new geometry_msgs.msg.Vector3()
    }

    if (msg.dAngT !== undefined) {
      resolved.dAngT = geometry_msgs.msg.Vector3.Resolve(msg.dAngT)
    }
    else {
      resolved.dAngT = new geometry_msgs.msg.Vector3()
    }

    if (msg.d2AngT !== undefined) {
      resolved.d2AngT = geometry_msgs.msg.Vector3.Resolve(msg.d2AngT)
    }
    else {
      resolved.d2AngT = new geometry_msgs.msg.Vector3()
    }

    if (msg.d3AngT !== undefined) {
      resolved.d3AngT = geometry_msgs.msg.Vector3.Resolve(msg.d3AngT)
    }
    else {
      resolved.d3AngT = new geometry_msgs.msg.Vector3()
    }

    if (msg.d4AngT !== undefined) {
      resolved.d4AngT = geometry_msgs.msg.Vector3.Resolve(msg.d4AngT)
    }
    else {
      resolved.d4AngT = new geometry_msgs.msg.Vector3()
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.yaw_dot !== undefined) {
      resolved.yaw_dot = msg.yaw_dot;
    }
    else {
      resolved.yaw_dot = 0.0
    }

    if (msg.yaw_acc !== undefined) {
      resolved.yaw_acc = msg.yaw_acc;
    }
    else {
      resolved.yaw_acc = 0.0
    }

    if (msg.trajectory_id !== undefined) {
      resolved.trajectory_id = msg.trajectory_id;
    }
    else {
      resolved.trajectory_id = 0
    }

    if (msg.trajectory_flag !== undefined) {
      resolved.trajectory_flag = msg.trajectory_flag;
    }
    else {
      resolved.trajectory_flag = 0
    }

    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    return resolved;
    }
};

// Constants for message
PositionCommandNew.Constants = {
  TRAJECTORY_STATUS_EMPTY: 0,
  TRAJECTORY_STATUS_READY: 1,
  TRAJECTORY_STATUS_COMPLETED: 3,
  TRAJECTROY_STATUS_ABORT: 4,
  TRAJECTORY_STATUS_ILLEGAL_START: 5,
  TRAJECTORY_STATUS_ILLEGAL_FINAL: 6,
  TRAJECTORY_STATUS_IMPOSSIBLE: 7,
}

module.exports = PositionCommandNew;
