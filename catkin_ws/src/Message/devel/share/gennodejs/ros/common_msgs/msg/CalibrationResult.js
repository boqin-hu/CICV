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

class CalibrationResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_sec = null;
      this.module_name = null;
      this.version = null;
      this.info = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_sec')) {
        this.timestamp_sec = initObj.timestamp_sec
      }
      else {
        this.timestamp_sec = 0.0;
      }
      if (initObj.hasOwnProperty('module_name')) {
        this.module_name = initObj.module_name
      }
      else {
        this.module_name = '';
      }
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = '';
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CalibrationResult
    // Serialize message field [timestamp_sec]
    bufferOffset = _serializer.float64(obj.timestamp_sec, buffer, bufferOffset);
    // Serialize message field [module_name]
    bufferOffset = _serializer.string(obj.module_name, buffer, bufferOffset);
    // Serialize message field [version]
    bufferOffset = _serializer.string(obj.version, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = _serializer.string(obj.info, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CalibrationResult
    let len;
    let data = new CalibrationResult(null);
    // Deserialize message field [timestamp_sec]
    data.timestamp_sec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [module_name]
    data.module_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [version]
    data.version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.module_name);
    length += _getByteLength(object.version);
    length += _getByteLength(object.info);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/CalibrationResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7389e3af2197513b2128e672d4f25be4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64  timestamp_sec
    string 	module_name
    string 	version
    string 	info
    int8 	status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CalibrationResult(null);
    if (msg.timestamp_sec !== undefined) {
      resolved.timestamp_sec = msg.timestamp_sec;
    }
    else {
      resolved.timestamp_sec = 0.0
    }

    if (msg.module_name !== undefined) {
      resolved.module_name = msg.module_name;
    }
    else {
      resolved.module_name = ''
    }

    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = ''
    }

    if (msg.info !== undefined) {
      resolved.info = msg.info;
    }
    else {
      resolved.info = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = CalibrationResult;
