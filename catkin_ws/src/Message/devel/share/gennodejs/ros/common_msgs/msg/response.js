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

class response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response_ID = null;
      this.sub_ID = null;
      this.response_data = null;
      this.slightfault = null;
      this.middlefault = null;
      this.severfault = null;
      this.deadlyfault = null;
      this.info_vec = null;
    }
    else {
      if (initObj.hasOwnProperty('response_ID')) {
        this.response_ID = initObj.response_ID
      }
      else {
        this.response_ID = 0;
      }
      if (initObj.hasOwnProperty('sub_ID')) {
        this.sub_ID = initObj.sub_ID
      }
      else {
        this.sub_ID = 0;
      }
      if (initObj.hasOwnProperty('response_data')) {
        this.response_data = initObj.response_data
      }
      else {
        this.response_data = 0;
      }
      if (initObj.hasOwnProperty('slightfault')) {
        this.slightfault = initObj.slightfault
      }
      else {
        this.slightfault = 0;
      }
      if (initObj.hasOwnProperty('middlefault')) {
        this.middlefault = initObj.middlefault
      }
      else {
        this.middlefault = 0;
      }
      if (initObj.hasOwnProperty('severfault')) {
        this.severfault = initObj.severfault
      }
      else {
        this.severfault = 0;
      }
      if (initObj.hasOwnProperty('deadlyfault')) {
        this.deadlyfault = initObj.deadlyfault
      }
      else {
        this.deadlyfault = 0;
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
    // Serializes a message object of type response
    // Serialize message field [response_ID]
    bufferOffset = _serializer.int8(obj.response_ID, buffer, bufferOffset);
    // Serialize message field [sub_ID]
    bufferOffset = _serializer.int8(obj.sub_ID, buffer, bufferOffset);
    // Serialize message field [response_data]
    bufferOffset = _serializer.int8(obj.response_data, buffer, bufferOffset);
    // Serialize message field [slightfault]
    bufferOffset = _serializer.int8(obj.slightfault, buffer, bufferOffset);
    // Serialize message field [middlefault]
    bufferOffset = _serializer.int8(obj.middlefault, buffer, bufferOffset);
    // Serialize message field [severfault]
    bufferOffset = _serializer.int8(obj.severfault, buffer, bufferOffset);
    // Serialize message field [deadlyfault]
    bufferOffset = _serializer.int8(obj.deadlyfault, buffer, bufferOffset);
    // Serialize message field [info_vec]
    // Serialize the length for message field [info_vec]
    bufferOffset = _serializer.uint32(obj.info_vec.length, buffer, bufferOffset);
    obj.info_vec.forEach((val) => {
      bufferOffset = FaultInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type response
    let len;
    let data = new response(null);
    // Deserialize message field [response_ID]
    data.response_ID = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [sub_ID]
    data.sub_ID = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [response_data]
    data.response_data = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [slightfault]
    data.slightfault = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [middlefault]
    data.middlefault = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [severfault]
    data.severfault = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [deadlyfault]
    data.deadlyfault = _deserializer.int8(buffer, bufferOffset);
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
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd370e960b936f004fa2ba4ee8e469d8d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8   response_ID
    int8   sub_ID
    int8  response_data
    int8  slightfault
    int8  middlefault
    int8  severfault 
    int8  deadlyfault 
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
    const resolved = new response(null);
    if (msg.response_ID !== undefined) {
      resolved.response_ID = msg.response_ID;
    }
    else {
      resolved.response_ID = 0
    }

    if (msg.sub_ID !== undefined) {
      resolved.sub_ID = msg.sub_ID;
    }
    else {
      resolved.sub_ID = 0
    }

    if (msg.response_data !== undefined) {
      resolved.response_data = msg.response_data;
    }
    else {
      resolved.response_data = 0
    }

    if (msg.slightfault !== undefined) {
      resolved.slightfault = msg.slightfault;
    }
    else {
      resolved.slightfault = 0
    }

    if (msg.middlefault !== undefined) {
      resolved.middlefault = msg.middlefault;
    }
    else {
      resolved.middlefault = 0
    }

    if (msg.severfault !== undefined) {
      resolved.severfault = msg.severfault;
    }
    else {
      resolved.severfault = 0
    }

    if (msg.deadlyfault !== undefined) {
      resolved.deadlyfault = msg.deadlyfault;
    }
    else {
      resolved.deadlyfault = 0
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

module.exports = response;
