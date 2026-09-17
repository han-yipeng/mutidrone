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

class IndiState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.indiF = null;
      this.indiqt = null;
      this.indiqy = null;
      this.indiq = null;
      this.drpy = null;
      this.cp = null;
      this.cv = null;
      this.ca = null;
      this.cq = null;
      this.cF = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('indiF')) {
        this.indiF = initObj.indiF
      }
      else {
        this.indiF = 0.0;
      }
      if (initObj.hasOwnProperty('indiqt')) {
        this.indiqt = initObj.indiqt
      }
      else {
        this.indiqt = 0.0;
      }
      if (initObj.hasOwnProperty('indiqy')) {
        this.indiqy = initObj.indiqy
      }
      else {
        this.indiqy = 0.0;
      }
      if (initObj.hasOwnProperty('indiq')) {
        this.indiq = initObj.indiq
      }
      else {
        this.indiq = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('drpy')) {
        this.drpy = initObj.drpy
      }
      else {
        this.drpy = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('cp')) {
        this.cp = initObj.cp
      }
      else {
        this.cp = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('cv')) {
        this.cv = initObj.cv
      }
      else {
        this.cv = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('ca')) {
        this.ca = initObj.ca
      }
      else {
        this.ca = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('cq')) {
        this.cq = initObj.cq
      }
      else {
        this.cq = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('cF')) {
        this.cF = initObj.cF
      }
      else {
        this.cF = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IndiState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [indiF]
    bufferOffset = _serializer.float64(obj.indiF, buffer, bufferOffset);
    // Serialize message field [indiqt]
    bufferOffset = _serializer.float64(obj.indiqt, buffer, bufferOffset);
    // Serialize message field [indiqy]
    bufferOffset = _serializer.float64(obj.indiqy, buffer, bufferOffset);
    // Serialize message field [indiq]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.indiq, buffer, bufferOffset);
    // Serialize message field [drpy]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.drpy, buffer, bufferOffset);
    // Serialize message field [cp]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.cp, buffer, bufferOffset);
    // Serialize message field [cv]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.cv, buffer, bufferOffset);
    // Serialize message field [ca]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.ca, buffer, bufferOffset);
    // Serialize message field [cq]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.cq, buffer, bufferOffset);
    // Serialize message field [cF]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.cF, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IndiState
    let len;
    let data = new IndiState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [indiF]
    data.indiF = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [indiqt]
    data.indiqt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [indiqy]
    data.indiqy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [indiq]
    data.indiq = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [drpy]
    data.drpy = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [cp]
    data.cp = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [cv]
    data.cv = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [ca]
    data.ca = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [cq]
    data.cq = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [cF]
    data.cF = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 192;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadrotor_msgs/IndiState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3911a5b39960e03dbb9636a0eb9cd311';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 indiF
    float64 indiqt
    float64 indiqy
    geometry_msgs/Vector3 indiq
    geometry_msgs/Vector3 drpy
    geometry_msgs/Vector3 cp
    geometry_msgs/Vector3 cv
    geometry_msgs/Vector3 ca
    geometry_msgs/Vector3 cq
    geometry_msgs/Vector3 cF 
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IndiState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.indiF !== undefined) {
      resolved.indiF = msg.indiF;
    }
    else {
      resolved.indiF = 0.0
    }

    if (msg.indiqt !== undefined) {
      resolved.indiqt = msg.indiqt;
    }
    else {
      resolved.indiqt = 0.0
    }

    if (msg.indiqy !== undefined) {
      resolved.indiqy = msg.indiqy;
    }
    else {
      resolved.indiqy = 0.0
    }

    if (msg.indiq !== undefined) {
      resolved.indiq = geometry_msgs.msg.Vector3.Resolve(msg.indiq)
    }
    else {
      resolved.indiq = new geometry_msgs.msg.Vector3()
    }

    if (msg.drpy !== undefined) {
      resolved.drpy = geometry_msgs.msg.Vector3.Resolve(msg.drpy)
    }
    else {
      resolved.drpy = new geometry_msgs.msg.Vector3()
    }

    if (msg.cp !== undefined) {
      resolved.cp = geometry_msgs.msg.Vector3.Resolve(msg.cp)
    }
    else {
      resolved.cp = new geometry_msgs.msg.Vector3()
    }

    if (msg.cv !== undefined) {
      resolved.cv = geometry_msgs.msg.Vector3.Resolve(msg.cv)
    }
    else {
      resolved.cv = new geometry_msgs.msg.Vector3()
    }

    if (msg.ca !== undefined) {
      resolved.ca = geometry_msgs.msg.Vector3.Resolve(msg.ca)
    }
    else {
      resolved.ca = new geometry_msgs.msg.Vector3()
    }

    if (msg.cq !== undefined) {
      resolved.cq = geometry_msgs.msg.Vector3.Resolve(msg.cq)
    }
    else {
      resolved.cq = new geometry_msgs.msg.Vector3()
    }

    if (msg.cF !== undefined) {
      resolved.cF = geometry_msgs.msg.Vector3.Resolve(msg.cF)
    }
    else {
      resolved.cF = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = IndiState;
