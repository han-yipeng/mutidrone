// Auto-generated. Do not edit!

// (in-package quadrotor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AstarPathPoint = require('./AstarPathPoint.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class AstarPath {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.start = null;
      this.goal = null;
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AstarPath
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [start]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.goal, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = AstarPathPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AstarPath
    let len;
    let data = new AstarPath(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = AstarPathPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 41 * object.points.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadrotor_msgs/AstarPath';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c042622e5284a67df730df6129bec0d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    geometry_msgs/Point start
    geometry_msgs/Point goal
    quadrotor_msgs/AstarPathPoint[] points
    
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
    MSG: quadrotor_msgs/AstarPathPoint
    geometry_msgs/Point position
    float64 angle
    float64 clearance
    bool waypoint
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AstarPath(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.start !== undefined) {
      resolved.start = geometry_msgs.msg.Point.Resolve(msg.start)
    }
    else {
      resolved.start = new geometry_msgs.msg.Point()
    }

    if (msg.goal !== undefined) {
      resolved.goal = geometry_msgs.msg.Point.Resolve(msg.goal)
    }
    else {
      resolved.goal = new geometry_msgs.msg.Point()
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = AstarPathPoint.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

module.exports = AstarPath;
