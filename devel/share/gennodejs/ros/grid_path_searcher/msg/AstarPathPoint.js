// Auto-generated. Do not edit!

// (in-package grid_path_searcher.msg)


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
      this.angle_deg = null;
      this.clearance_m = null;
      this.arc_length_m = null;
      this.curvature = null;
      this.complexity = null;
      this.desired_spacing_m = null;
      this.selected_as_waypoint = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('angle_deg')) {
        this.angle_deg = initObj.angle_deg
      }
      else {
        this.angle_deg = 0.0;
      }
      if (initObj.hasOwnProperty('clearance_m')) {
        this.clearance_m = initObj.clearance_m
      }
      else {
        this.clearance_m = 0.0;
      }
      if (initObj.hasOwnProperty('arc_length_m')) {
        this.arc_length_m = initObj.arc_length_m
      }
      else {
        this.arc_length_m = 0.0;
      }
      if (initObj.hasOwnProperty('curvature')) {
        this.curvature = initObj.curvature
      }
      else {
        this.curvature = 0.0;
      }
      if (initObj.hasOwnProperty('complexity')) {
        this.complexity = initObj.complexity
      }
      else {
        this.complexity = 0.0;
      }
      if (initObj.hasOwnProperty('desired_spacing_m')) {
        this.desired_spacing_m = initObj.desired_spacing_m
      }
      else {
        this.desired_spacing_m = 0.0;
      }
      if (initObj.hasOwnProperty('selected_as_waypoint')) {
        this.selected_as_waypoint = initObj.selected_as_waypoint
      }
      else {
        this.selected_as_waypoint = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AstarPathPoint
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [angle_deg]
    bufferOffset = _serializer.float64(obj.angle_deg, buffer, bufferOffset);
    // Serialize message field [clearance_m]
    bufferOffset = _serializer.float64(obj.clearance_m, buffer, bufferOffset);
    // Serialize message field [arc_length_m]
    bufferOffset = _serializer.float64(obj.arc_length_m, buffer, bufferOffset);
    // Serialize message field [curvature]
    bufferOffset = _serializer.float64(obj.curvature, buffer, bufferOffset);
    // Serialize message field [complexity]
    bufferOffset = _serializer.float64(obj.complexity, buffer, bufferOffset);
    // Serialize message field [desired_spacing_m]
    bufferOffset = _serializer.float64(obj.desired_spacing_m, buffer, bufferOffset);
    // Serialize message field [selected_as_waypoint]
    bufferOffset = _serializer.bool(obj.selected_as_waypoint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AstarPathPoint
    let len;
    let data = new AstarPathPoint(null);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle_deg]
    data.angle_deg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [clearance_m]
    data.clearance_m = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [arc_length_m]
    data.arc_length_m = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [curvature]
    data.curvature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [complexity]
    data.complexity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [desired_spacing_m]
    data.desired_spacing_m = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [selected_as_waypoint]
    data.selected_as_waypoint = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 73;
  }

  static datatype() {
    // Returns string type for a message object
    return 'grid_path_searcher/AstarPathPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8313e5fbfae9cb5949798e6a59c10b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point position
    float64 angle_deg
    float64 clearance_m
    float64 arc_length_m
    float64 curvature
    float64 complexity
    float64 desired_spacing_m
    bool selected_as_waypoint
    
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

    if (msg.angle_deg !== undefined) {
      resolved.angle_deg = msg.angle_deg;
    }
    else {
      resolved.angle_deg = 0.0
    }

    if (msg.clearance_m !== undefined) {
      resolved.clearance_m = msg.clearance_m;
    }
    else {
      resolved.clearance_m = 0.0
    }

    if (msg.arc_length_m !== undefined) {
      resolved.arc_length_m = msg.arc_length_m;
    }
    else {
      resolved.arc_length_m = 0.0
    }

    if (msg.curvature !== undefined) {
      resolved.curvature = msg.curvature;
    }
    else {
      resolved.curvature = 0.0
    }

    if (msg.complexity !== undefined) {
      resolved.complexity = msg.complexity;
    }
    else {
      resolved.complexity = 0.0
    }

    if (msg.desired_spacing_m !== undefined) {
      resolved.desired_spacing_m = msg.desired_spacing_m;
    }
    else {
      resolved.desired_spacing_m = 0.0
    }

    if (msg.selected_as_waypoint !== undefined) {
      resolved.selected_as_waypoint = msg.selected_as_waypoint;
    }
    else {
      resolved.selected_as_waypoint = false
    }

    return resolved;
    }
};

module.exports = AstarPathPoint;
