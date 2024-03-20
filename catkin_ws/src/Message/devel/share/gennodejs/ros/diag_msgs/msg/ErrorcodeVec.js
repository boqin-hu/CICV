// Auto-generated. Do not edit!

// (in-package diag_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ErrorcodeInfo = require('./ErrorcodeInfo.js');

//-----------------------------------------------------------

class ErrorcodeVec {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error_vec = null;
      this.interactive = null;
    }
    else {
      if (initObj.hasOwnProperty('error_vec')) {
        this.error_vec = initObj.error_vec
      }
      else {
        this.error_vec = [];
      }
      if (initObj.hasOwnProperty('interactive')) {
        this.interactive = initObj.interactive
      }
      else {
        this.interactive = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ErrorcodeVec
    // Serialize message field [error_vec]
    // Serialize the length for message field [error_vec]
    bufferOffset = _serializer.uint32(obj.error_vec.length, buffer, bufferOffset);
    obj.error_vec.forEach((val) => {
      bufferOffset = ErrorcodeInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [interactive]
    bufferOffset = _serializer.int32(obj.interactive, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ErrorcodeVec
    let len;
    let data = new ErrorcodeVec(null);
    // Deserialize message field [error_vec]
    // Deserialize array length for message field [error_vec]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.error_vec = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.error_vec[i] = ErrorcodeInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [interactive]
    data.interactive = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.error_vec.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'diag_msgs/ErrorcodeVec';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d652d5f9dc7c3fdadce9102b2c47862';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ErrorcodeInfo[] 	error_vec
    int32     interactive
    
    ================================================================================
    MSG: diag_msgs/ErrorcodeInfo
    int32     error_code
    int32     error_level
    int32     error_level_hmi
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ErrorcodeVec(null);
    if (msg.error_vec !== undefined) {
      resolved.error_vec = new Array(msg.error_vec.length);
      for (let i = 0; i < resolved.error_vec.length; ++i) {
        resolved.error_vec[i] = ErrorcodeInfo.Resolve(msg.error_vec[i]);
      }
    }
    else {
      resolved.error_vec = []
    }

    if (msg.interactive !== undefined) {
      resolved.interactive = msg.interactive;
    }
    else {
      resolved.interactive = 0
    }

    return resolved;
    }
};

module.exports = ErrorcodeVec;
