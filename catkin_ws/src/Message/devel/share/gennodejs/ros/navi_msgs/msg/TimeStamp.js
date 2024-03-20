// Auto-generated. Do not edit!

// (in-package navi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TimeStamp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.s = null;
      this.ns = null;
    }
    else {
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = 0;
      }
      if (initObj.hasOwnProperty('ns')) {
        this.ns = initObj.ns
      }
      else {
        this.ns = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimeStamp
    // Serialize message field [s]
    bufferOffset = _serializer.uint64(obj.s, buffer, bufferOffset);
    // Serialize message field [ns]
    bufferOffset = _serializer.uint64(obj.ns, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimeStamp
    let len;
    let data = new TimeStamp(null);
    // Deserialize message field [s]
    data.s = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [ns]
    data.ns = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navi_msgs/TimeStamp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '239b6a0a87ff2c711f5fde0f2b68a67d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 s
    uint64 ns
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimeStamp(null);
    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = 0
    }

    if (msg.ns !== undefined) {
      resolved.ns = msg.ns;
    }
    else {
      resolved.ns = 0
    }

    return resolved;
    }
};

module.exports = TimeStamp;
