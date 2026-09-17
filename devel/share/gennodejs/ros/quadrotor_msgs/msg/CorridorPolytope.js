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

class CorridorPolytope {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path_begin = null;
      this.path_end = null;
      this.normals = null;
      this.offsets = null;
      this.vertices = null;
      this.clearance_bridge = null;
      this.complexity = null;
      this.local_extent = null;
      this.minimum_system_margin = null;
      this.maximum_system_margin = null;
    }
    else {
      if (initObj.hasOwnProperty('path_begin')) {
        this.path_begin = initObj.path_begin
      }
      else {
        this.path_begin = 0;
      }
      if (initObj.hasOwnProperty('path_end')) {
        this.path_end = initObj.path_end
      }
      else {
        this.path_end = 0;
      }
      if (initObj.hasOwnProperty('normals')) {
        this.normals = initObj.normals
      }
      else {
        this.normals = [];
      }
      if (initObj.hasOwnProperty('offsets')) {
        this.offsets = initObj.offsets
      }
      else {
        this.offsets = [];
      }
      if (initObj.hasOwnProperty('vertices')) {
        this.vertices = initObj.vertices
      }
      else {
        this.vertices = [];
      }
      if (initObj.hasOwnProperty('clearance_bridge')) {
        this.clearance_bridge = initObj.clearance_bridge
      }
      else {
        this.clearance_bridge = false;
      }
      if (initObj.hasOwnProperty('complexity')) {
        this.complexity = initObj.complexity
      }
      else {
        this.complexity = 0.0;
      }
      if (initObj.hasOwnProperty('local_extent')) {
        this.local_extent = initObj.local_extent
      }
      else {
        this.local_extent = 0.0;
      }
      if (initObj.hasOwnProperty('minimum_system_margin')) {
        this.minimum_system_margin = initObj.minimum_system_margin
      }
      else {
        this.minimum_system_margin = 0.0;
      }
      if (initObj.hasOwnProperty('maximum_system_margin')) {
        this.maximum_system_margin = initObj.maximum_system_margin
      }
      else {
        this.maximum_system_margin = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CorridorPolytope
    // Serialize message field [path_begin]
    bufferOffset = _serializer.uint32(obj.path_begin, buffer, bufferOffset);
    // Serialize message field [path_end]
    bufferOffset = _serializer.uint32(obj.path_end, buffer, bufferOffset);
    // Serialize message field [normals]
    // Serialize the length for message field [normals]
    bufferOffset = _serializer.uint32(obj.normals.length, buffer, bufferOffset);
    obj.normals.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [offsets]
    bufferOffset = _arraySerializer.float64(obj.offsets, buffer, bufferOffset, null);
    // Serialize message field [vertices]
    // Serialize the length for message field [vertices]
    bufferOffset = _serializer.uint32(obj.vertices.length, buffer, bufferOffset);
    obj.vertices.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [clearance_bridge]
    bufferOffset = _serializer.bool(obj.clearance_bridge, buffer, bufferOffset);
    // Serialize message field [complexity]
    bufferOffset = _serializer.float64(obj.complexity, buffer, bufferOffset);
    // Serialize message field [local_extent]
    bufferOffset = _serializer.float64(obj.local_extent, buffer, bufferOffset);
    // Serialize message field [minimum_system_margin]
    bufferOffset = _serializer.float64(obj.minimum_system_margin, buffer, bufferOffset);
    // Serialize message field [maximum_system_margin]
    bufferOffset = _serializer.float64(obj.maximum_system_margin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CorridorPolytope
    let len;
    let data = new CorridorPolytope(null);
    // Deserialize message field [path_begin]
    data.path_begin = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [path_end]
    data.path_end = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [normals]
    // Deserialize array length for message field [normals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.normals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.normals[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [offsets]
    data.offsets = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [vertices]
    // Deserialize array length for message field [vertices]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vertices = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vertices[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [clearance_bridge]
    data.clearance_bridge = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [complexity]
    data.complexity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [local_extent]
    data.local_extent = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [minimum_system_margin]
    data.minimum_system_margin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [maximum_system_margin]
    data.maximum_system_margin = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.normals.length;
    length += 8 * object.offsets.length;
    length += 24 * object.vertices.length;
    return length + 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadrotor_msgs/CorridorPolytope';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1ee3021eb38c109bf2fef158ffb37a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 path_begin
    uint32 path_end
    geometry_msgs/Vector3[] normals
    float64[] offsets
    geometry_msgs/Point[] vertices
    bool clearance_bridge
    float64 complexity
    float64 local_extent
    float64 minimum_system_margin
    float64 maximum_system_margin
    
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
    const resolved = new CorridorPolytope(null);
    if (msg.path_begin !== undefined) {
      resolved.path_begin = msg.path_begin;
    }
    else {
      resolved.path_begin = 0
    }

    if (msg.path_end !== undefined) {
      resolved.path_end = msg.path_end;
    }
    else {
      resolved.path_end = 0
    }

    if (msg.normals !== undefined) {
      resolved.normals = new Array(msg.normals.length);
      for (let i = 0; i < resolved.normals.length; ++i) {
        resolved.normals[i] = geometry_msgs.msg.Vector3.Resolve(msg.normals[i]);
      }
    }
    else {
      resolved.normals = []
    }

    if (msg.offsets !== undefined) {
      resolved.offsets = msg.offsets;
    }
    else {
      resolved.offsets = []
    }

    if (msg.vertices !== undefined) {
      resolved.vertices = new Array(msg.vertices.length);
      for (let i = 0; i < resolved.vertices.length; ++i) {
        resolved.vertices[i] = geometry_msgs.msg.Point.Resolve(msg.vertices[i]);
      }
    }
    else {
      resolved.vertices = []
    }

    if (msg.clearance_bridge !== undefined) {
      resolved.clearance_bridge = msg.clearance_bridge;
    }
    else {
      resolved.clearance_bridge = false
    }

    if (msg.complexity !== undefined) {
      resolved.complexity = msg.complexity;
    }
    else {
      resolved.complexity = 0.0
    }

    if (msg.local_extent !== undefined) {
      resolved.local_extent = msg.local_extent;
    }
    else {
      resolved.local_extent = 0.0
    }

    if (msg.minimum_system_margin !== undefined) {
      resolved.minimum_system_margin = msg.minimum_system_margin;
    }
    else {
      resolved.minimum_system_margin = 0.0
    }

    if (msg.maximum_system_margin !== undefined) {
      resolved.maximum_system_margin = msg.maximum_system_margin;
    }
    else {
      resolved.maximum_system_margin = 0.0
    }

    return resolved;
    }
};

module.exports = CorridorPolytope;
