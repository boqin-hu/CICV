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

class FaultInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_sec = null;
      this.module_name = null;
      this.version = null;
      this.error_code = null;
      this.msg = null;
      this.fault_level = null;
      this.fault_type = null;
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
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
      if (initObj.hasOwnProperty('fault_level')) {
        this.fault_level = initObj.fault_level
      }
      else {
        this.fault_level = 0;
      }
      if (initObj.hasOwnProperty('fault_type')) {
        this.fault_type = initObj.fault_type
      }
      else {
        this.fault_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FaultInfo
    // Serialize message field [timestamp_sec]
    bufferOffset = _serializer.float64(obj.timestamp_sec, buffer, bufferOffset);
    // Serialize message field [module_name]
    bufferOffset = _serializer.string(obj.module_name, buffer, bufferOffset);
    // Serialize message field [version]
    bufferOffset = _serializer.string(obj.version, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    // Serialize message field [fault_level]
    bufferOffset = _serializer.int8(obj.fault_level, buffer, bufferOffset);
    // Serialize message field [fault_type]
    bufferOffset = _serializer.int8(obj.fault_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FaultInfo
    let len;
    let data = new FaultInfo(null);
    // Deserialize message field [timestamp_sec]
    data.timestamp_sec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [module_name]
    data.module_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [version]
    data.version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [fault_level]
    data.fault_level = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [fault_type]
    data.fault_type = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.module_name);
    length += _getByteLength(object.version);
    length += _getByteLength(object.msg);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/FaultInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b5939be01d58923002cbc6c918b82ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 	timestamp_sec
    string 	module_name
    string 	version
    int32 	error_code
    string 	msg
    int8 	fault_level
    int8 	fault_type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FaultInfo(null);
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

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    if (msg.fault_level !== undefined) {
      resolved.fault_level = msg.fault_level;
    }
    else {
      resolved.fault_level = 0
    }

    if (msg.fault_type !== undefined) {
      resolved.fault_type = msg.fault_type;
    }
    else {
      resolved.fault_type = 0
    }

    return resolved;
    }
};

module.exports = FaultInfo;
