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

class request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.diag_ID = null;
      this.sub_ID = null;
      this.diag_data = null;
      this.info_vec = null;
    }
    else {
      if (initObj.hasOwnProperty('diag_ID')) {
        this.diag_ID = initObj.diag_ID
      }
      else {
        this.diag_ID = 0;
      }
      if (initObj.hasOwnProperty('sub_ID')) {
        this.sub_ID = initObj.sub_ID
      }
      else {
        this.sub_ID = 0;
      }
      if (initObj.hasOwnProperty('diag_data')) {
        this.diag_data = initObj.diag_data
      }
      else {
        this.diag_data = 0;
      }
      if (initObj.hasOwnProperty('info_vec')) {
        this.info_vec = initObj.info_vec
      }
      else {
        this.info_vec = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type request
    // Serialize message field [diag_ID]
    bufferOffset = _serializer.int8(obj.diag_ID, buffer, bufferOffset);
    // Serialize message field [sub_ID]
    bufferOffset = _serializer.int32(obj.sub_ID, buffer, bufferOffset);
    // Serialize message field [diag_data]
    bufferOffset = _serializer.int32(obj.diag_data, buffer, bufferOffset);
    // Serialize message field [info_vec]
    // Serialize the length for message field [info_vec]
    bufferOffset = _serializer.uint32(obj.info_vec.length, buffer, bufferOffset);
    obj.info_vec.forEach((val) => {
      bufferOffset = FaultInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type request
    let len;
    let data = new request(null);
    // Deserialize message field [diag_ID]
    data.diag_ID = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [sub_ID]
    data.sub_ID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [diag_data]
    data.diag_data = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [info_vec]
    // Deserialize array length for message field [info_vec]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.info_vec = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.info_vec[i] = FaultInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.info_vec.forEach((val) => {
      length += FaultInfo.getMessageSize(val);
    });
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8474d648f7f606e5d733ab5d6a81594f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8    diag_ID
    int32    sub_ID 
    int32   diag_data
    FaultInfo[]    info_vec
    
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
    const resolved = new request(null);
    if (msg.diag_ID !== undefined) {
      resolved.diag_ID = msg.diag_ID;
    }
    else {
      resolved.diag_ID = 0
    }

    if (msg.sub_ID !== undefined) {
      resolved.sub_ID = msg.sub_ID;
    }
    else {
      resolved.sub_ID = 0
    }

    if (msg.diag_data !== undefined) {
      resolved.diag_data = msg.diag_data;
    }
    else {
      resolved.diag_data = 0
    }

    if (msg.info_vec !== undefined) {
      resolved.info_vec = new Array(msg.info_vec.length);
      for (let i = 0; i < resolved.info_vec.length; ++i) {
        resolved.info_vec[i] = FaultInfo.Resolve(msg.info_vec[i]);
      }
    }
    else {
      resolved.info_vec = []
    }

    return resolved;
    }
};

module.exports = request;
