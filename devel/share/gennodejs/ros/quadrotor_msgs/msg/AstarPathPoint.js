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

//-----------------------------------------------------------

class AstarPathPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.angle = null;
      this.clearance = null;
      this.waypoint = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('clearance')) {
        this.clearance = initObj.clearance
      }
      else {
        this.clearance = 0.0;
      }
      if (initObj.hasOwnProperty('waypoint')) {
        this.waypoint = initObj.waypoint
      }
      else {
        this.waypoint = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AstarPathPoint
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float64(obj.angle, buffer, bufferOffset);
    // Serialize message field [clearance]
    bufferOffset = _serializer.float64(obj.clearance, buffer, bufferOffset);
    // Serialize message field [waypoint]
    bufferOffset = _serializer.bool(obj.waypoint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AstarPathPoint
    let len;
    let data = new AstarPathPoint(null);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [clearance]
    data.clearance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [waypoint]
    data.waypoint = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadrotor_msgs/AstarPathPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f3f50b66c9f55c6a0c57168ac23576a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point position
    float64 angle
    float64 clearance
    bool waypoint
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new AstarPathPoint(null);
    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.clearance !== undefined) {
      resolved.clearance = msg.clearance;
    }
    else {
      resolved.clearance = 0.0
    }

    if (msg.waypoint !== undefined) {
      resolved.waypoint = msg.waypoint;
    }
    else {
      resolved.waypoint = false
    }

    return resolved;
    }
};

module.exports = AstarPathPoint;
