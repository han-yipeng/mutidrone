// Auto-generated. Do not edit!

// (in-package quadrotor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Rpms {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rpm0 = null;
      this.rpm1 = null;
      this.rpm2 = null;
      this.rpm3 = null;
    }
    else {
      if (initObj.hasOwnProperty('rpm0')) {
        this.rpm0 = initObj.rpm0
      }
      else {
        this.rpm0 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm1')) {
        this.rpm1 = initObj.rpm1
      }
      else {
        this.rpm1 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm2')) {
        this.rpm2 = initObj.rpm2
      }
      else {
        this.rpm2 = 0.0;
      }
      if (initObj.hasOwnProperty('rpm3')) {
        this.rpm3 = initObj.rpm3
      }
      else {
        this.rpm3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Rpms
    // Serialize message field [rpm0]
    bufferOffset = _serializer.float64(obj.rpm0, buffer, bufferOffset);
    // Serialize message field [rpm1]
    bufferOffset = _serializer.float64(obj.rpm1, buffer, bufferOffset);
    // Serialize message field [rpm2]
    bufferOffset = _serializer.float64(obj.rpm2, buffer, bufferOffset);
    // Serialize message field [rpm3]
    bufferOffset = _serializer.float64(obj.rpm3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Rpms
    let len;
    let data = new Rpms(null);
    // Deserialize message field [rpm0]
    data.rpm0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm1]
    data.rpm1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm2]
    data.rpm2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rpm3]
    data.rpm3 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadrotor_msgs/Rpms';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f34c377dbbd6cd5c05fde291e41b791';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 rpm0
    float64 rpm1
    float64 rpm2
    float64 rpm3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Rpms(null);
    if (msg.rpm0 !== undefined) {
      resolved.rpm0 = msg.rpm0;
    }
    else {
      resolved.rpm0 = 0.0
    }

    if (msg.rpm1 !== undefined) {
      resolved.rpm1 = msg.rpm1;
    }
    else {
      resolved.rpm1 = 0.0
    }

    if (msg.rpm2 !== undefined) {
      resolved.rpm2 = msg.rpm2;
    }
    else {
      resolved.rpm2 = 0.0
    }

    if (msg.rpm3 !== undefined) {
      resolved.rpm3 = msg.rpm3;
    }
    else {
      resolved.rpm3 = 0.0
    }

    return resolved;
    }
};

module.exports = Rpms;
