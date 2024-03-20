// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FaultInfo = require('./FaultInfo.js');

//-----------------------------------------------------------

class FaultVec {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.info_vec = null;
      this.module_fault_level = null;
    }
    else {
      if (initObj.hasOwnProperty('info_vec')) {
        this.info_vec = initObj.info_vec
      }
      else {
        this.info_vec = [];
      }
      if (initObj.hasOwnProperty('module_fault_level')) {
        this.module_fault_level = initObj.module_fault_level
      }
      else {
        this.module_fault_level = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FaultVec
    // Serialize message field [info_vec]
    // Serialize the length for message field [info_vec]
    bufferOffset = _serializer.uint32(obj.info_vec.length, buffer, bufferOffset);
    obj.info_vec.forEach((val) => {
      bufferOffset = FaultInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [module_fault_level]
    bufferOffset = _serializer.int32(obj.module_fault_level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FaultVec
    let len;
    let data = new FaultVec(null);
    // Deserialize message field [info_vec]
    // Deserialize array length for message field [info_vec]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.info_vec = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.info_vec[i] = FaultInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [module_fault_level]
    data.module_fault_level = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.info_vec.forEach((val) => {
      length += FaultInfo.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/FaultVec';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32507500d69130d261243cee8a95edc3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    FaultInfo[] 	info_vec
    int32 	module_fault_level
    
    ================================================================================
    MSG: common_msgs/FaultInfo
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
    const resolved = new FaultVec(null);
    if (msg.info_vec !== undefined) {
      resolved.info_vec = new Array(msg.info_vec.length);
      for (let i = 0; i < resolved.info_vec.length; ++i) {
        resolved.info_vec[i] = FaultInfo.Resolve(msg.info_vec[i]);
      }
    }
    else {
      resolved.info_vec = []
    }

    if (msg.module_fault_level !== undefined) {
      resolved.module_fault_level = msg.module_fault_level;
    }
    else {
      resolved.module_fault_level = 0
    }

    return resolved;
    }
};

module.exports = FaultVec;
