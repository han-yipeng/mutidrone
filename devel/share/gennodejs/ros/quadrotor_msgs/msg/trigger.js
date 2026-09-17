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

class trigger {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trigger_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('trigger_cmd')) {
        this.trigger_cmd = initObj.trigger_cmd
      }
      else {
        this.trigger_cmd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type trigger
    // Serialize message field [trigger_cmd]
    bufferOffset = _serializer.uint8(obj.trigger_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type trigger
    let len;
    let data = new trigger(null);
    // Deserialize message field [trigger_cmd]
    data.trigger_cmd = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quadrotor_msgs/trigger';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8009a0fa43f357a00d4ef52b41eda254';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 triggerTakeOff = 1
    uint8 triggerSwitchControl = 2
    uint8 triggerFlight = 3
    uint8 trigger_cmd
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new trigger(null);
    if (msg.trigger_cmd !== undefined) {
      resolved.trigger_cmd = msg.trigger_cmd;
    }
    else {
      resolved.trigger_cmd = 0
    }

    return resolved;
    }
};

// Constants for message
trigger.Constants = {
  TRIGGERTAKEOFF: 1,
  TRIGGERSWITCHCONTROL: 2,
  TRIGGERFLIGHT: 3,
}

module.exports = trigger;
