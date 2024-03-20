// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UnsureVar = require('./UnsureVar.js');

//-----------------------------------------------------------

class LLH {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lat = null;
      this.lon = null;
      this.height = null;
    }
    else {
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = new UnsureVar();
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = new UnsureVar();
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = new UnsureVar();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LLH
    // Serialize message field [lat]
    bufferOffset = UnsureVar.serialize(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = UnsureVar.serialize(obj.lon, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = UnsureVar.serialize(obj.height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LLH
    let len;
    let data = new LLH(null);
    // Deserialize message field [lat]
    data.lat = UnsureVar.deserialize(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = UnsureVar.deserialize(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = UnsureVar.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/LLH';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '903e0c8677e34a871ad57acebdb42ffd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    UnsureVar 	lat
    UnsureVar 	lon
    UnsureVar 	height
    ================================================================================
    MSG: common_msgs/UnsureVar
    float64 	variable
    float64 	var_std
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LLH(null);
    if (msg.lat !== undefined) {
      resolved.lat = UnsureVar.Resolve(msg.lat)
    }
    else {
      resolved.lat = new UnsureVar()
    }

    if (msg.lon !== undefined) {
      resolved.lon = UnsureVar.Resolve(msg.lon)
    }
    else {
      resolved.lon = new UnsureVar()
    }

    if (msg.height !== undefined) {
      resolved.height = UnsureVar.Resolve(msg.height)
    }
    else {
      resolved.height = new UnsureVar()
    }

    return resolved;
    }
};

module.exports = LLH;
