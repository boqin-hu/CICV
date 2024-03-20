// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class UnsureVar {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.variable = null;
      this.var_std = null;
    }
    else {
      if (initObj.hasOwnProperty('variable')) {
        this.variable = initObj.variable
      }
      else {
        this.variable = 0.0;
      }
      if (initObj.hasOwnProperty('var_std')) {
        this.var_std = initObj.var_std
      }
      else {
        this.var_std = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UnsureVar
    // Serialize message field [variable]
    bufferOffset = _serializer.float64(obj.variable, buffer, bufferOffset);
    // Serialize message field [var_std]
    bufferOffset = _serializer.float64(obj.var_std, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UnsureVar
    let len;
    let data = new UnsureVar(null);
    // Deserialize message field [variable]
    data.variable = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [var_std]
    data.var_std = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/UnsureVar';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb873e7f683e84becffacbe8b9daf29a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 	variable
    float64 	var_std
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UnsureVar(null);
    if (msg.variable !== undefined) {
      resolved.variable = msg.variable;
    }
    else {
      resolved.variable = 0.0
    }

    if (msg.var_std !== undefined) {
      resolved.var_std = msg.var_std;
    }
    else {
      resolved.var_std = 0.0
    }

    return resolved;
    }
};

module.exports = UnsureVar;
