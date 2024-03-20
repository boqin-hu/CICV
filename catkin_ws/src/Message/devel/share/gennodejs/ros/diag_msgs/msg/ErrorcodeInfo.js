// Auto-generated. Do not edit!

// (in-package diag_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ErrorcodeInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error_code = null;
      this.error_level = null;
      this.error_level_hmi = null;
    }
    else {
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('error_level')) {
        this.error_level = initObj.error_level
      }
      else {
        this.error_level = 0;
      }
      if (initObj.hasOwnProperty('error_level_hmi')) {
        this.error_level_hmi = initObj.error_level_hmi
      }
      else {
        this.error_level_hmi = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ErrorcodeInfo
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [error_level]
    bufferOffset = _serializer.int32(obj.error_level, buffer, bufferOffset);
    // Serialize message field [error_level_hmi]
    bufferOffset = _serializer.int32(obj.error_level_hmi, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ErrorcodeInfo
    let len;
    let data = new ErrorcodeInfo(null);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error_level]
    data.error_level = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error_level_hmi]
    data.error_level_hmi = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'diag_msgs/ErrorcodeInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4a20555fb21237671de7ca17abb84ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ErrorcodeInfo(null);
    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.error_level !== undefined) {
      resolved.error_level = msg.error_level;
    }
    else {
      resolved.error_level = 0
    }

    if (msg.error_level_hmi !== undefined) {
      resolved.error_level_hmi = msg.error_level_hmi;
    }
    else {
      resolved.error_level_hmi = 0
    }

    return resolved;
    }
};

module.exports = ErrorcodeInfo;
