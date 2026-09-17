// Auto-generated. Do not edit!

// (in-package quadrotor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CorridorPolytope = require('./CorridorPolytope.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LoadCorridor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.polytopes = null;
      this.transition_centers = null;
      this.transition_radii = null;
      this.transition_tangents = null;
      this.transition_longitudinal_radii = null;
      this.transition_transverse_radii = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('polytopes')) {
        this.polytopes = initObj.polytopes
      }
      else {
        this.polytopes = [];
      }
      if (initObj.hasOwnProperty('transition_centers')) {
        this.transition_centers = initObj.transition_centers
      }
      else {
        this.transition_centers = [];
      }
      if (initObj.hasOwnProperty('transition_radii')) {
        this.transition_radii = initObj.transition_radii
      }
      else {
        this.transition_radii = [];
      }
      if (initObj.hasOwnProperty('transition_tangents')) {
        this.transition_tangents = initObj.transition_tangents
      }
      else {
        this.transition_tangents = [];
      }
      if (initObj.hasOwnProperty('transition_longitudinal_radii')) {
        this.transition_longitudinal_radii = initObj.transition_longitudinal_radii
      }
      else {
        this.transition_longitudinal_radii = [];
      }
      if (initObj.hasOwnProperty('transition_transverse_radii')) {
        this.transition_transverse_radii = initObj.transition_transverse_radii
      }
      else {
        this.transition_transverse_radii = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadCorridor
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [polytopes]
    // Serialize the length for message field [polytopes]
    bufferOffset = _serializer.uint32(obj.polytopes.length, buffer, bufferOffset);
    obj.polytopes.forEach((val) => {
      bufferOffset = CorridorPolytope.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [transition_centers]
    // Serialize the length for message field [transition_centers]
    bufferOffset = _serializer.uint32(obj.transition_centers.length, buffer, bufferOffset);
    obj.transition_centers.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [transition_radii]
    bufferOffset = _arraySerializer.float64(obj.transition_radii, buffer, bufferOffset, null);
    // Serialize message field [transition_tangents]
    // Serialize the length for message field [transition_tangents]
    bufferOffset = _serializer.uint32(obj.transition_tangents.length, buffer, bufferOffset);
    obj.transition_tangents.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [transition_longitudinal_radii]
    bufferOffset = _arraySerializer.float64(obj.transition_longitudinal_radii, buffer, bufferOffset, null);
    // Serialize message field [transition_transverse_radii]
    bufferOffset = _arraySerializer.float64(obj.transition_transverse_radii, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadCorridor
    let len;
    let data = new LoadCorridor(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [polytopes]
    // Deserialize array length for message field [polytopes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polytopes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polytopes[i] = CorridorPolytope.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [transition_centers]
    // Deserialize array length for message field [transition_centers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.transition_centers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.transition_centers[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [transition_radii]
    data.transition_radii = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [transition_tangents]
    // Deserialize array length for message field [transition_tangents]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.transition_tangents = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.transition_tangents[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [transition_longitudinal_radii]
    data.transition_longitudinal_radii = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [transition_transverse_radii]
    data.transition_transverse_radii = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.polytopes.forEach((val) => {
      length += CorridorPolytope.getMessageSize(val);
    });
    length += 24 * object.transition_centers.length;
    length += 8 * object.transition_radii.length;
    length += 24 * object.transition_tangents.length;
    length += 8 * object.transition_longitudinal_radii.length;
    length += 8 * object.transition_transverse_radii.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadrotor_msgs/LoadCorridor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36351e1e34a11193f6c66fa2067de8d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    quadrotor_msgs/CorridorPolytope[] polytopes
    geometry_msgs/Point[] transition_centers
    float64[] transition_radii
    geometry_msgs/Vector3[] transition_tangents
    float64[] transition_longitudinal_radii
    float64[] transition_transverse_radii
    
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
    MSG: quadrotor_msgs/CorridorPolytope
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
    const resolved = new LoadCorridor(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.polytopes !== undefined) {
      resolved.polytopes = new Array(msg.polytopes.length);
      for (let i = 0; i < resolved.polytopes.length; ++i) {
        resolved.polytopes[i] = CorridorPolytope.Resolve(msg.polytopes[i]);
      }
    }
    else {
      resolved.polytopes = []
    }

    if (msg.transition_centers !== undefined) {
      resolved.transition_centers = new Array(msg.transition_centers.length);
      for (let i = 0; i < resolved.transition_centers.length; ++i) {
        resolved.transition_centers[i] = geometry_msgs.msg.Point.Resolve(msg.transition_centers[i]);
      }
    }
    else {
      resolved.transition_centers = []
    }

    if (msg.transition_radii !== undefined) {
      resolved.transition_radii = msg.transition_radii;
    }
    else {
      resolved.transition_radii = []
    }

    if (msg.transition_tangents !== undefined) {
      resolved.transition_tangents = new Array(msg.transition_tangents.length);
      for (let i = 0; i < resolved.transition_tangents.length; ++i) {
        resolved.transition_tangents[i] = geometry_msgs.msg.Vector3.Resolve(msg.transition_tangents[i]);
      }
    }
    else {
      resolved.transition_tangents = []
    }

    if (msg.transition_longitudinal_radii !== undefined) {
      resolved.transition_longitudinal_radii = msg.transition_longitudinal_radii;
    }
    else {
      resolved.transition_longitudinal_radii = []
    }

    if (msg.transition_transverse_radii !== undefined) {
      resolved.transition_transverse_radii = msg.transition_transverse_radii;
    }
    else {
      resolved.transition_transverse_radii = []
    }

    return resolved;
    }
};

module.exports = LoadCorridor;
