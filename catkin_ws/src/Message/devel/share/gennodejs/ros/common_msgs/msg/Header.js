// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FaultVec = require('./FaultVec.js');
let TimeStatistics = require('./TimeStatistics.js');

//-----------------------------------------------------------

class Header {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sequence_num = null;
      this.time_stamp = null;
      this.module_name = null;
      this.version = null;
      this.fault_vec = null;
      this.time_statistics = null;
    }
    else {
      if (initObj.hasOwnProperty('sequence_num')) {
        this.sequence_num = initObj.sequence_num
      }
      else {
        this.sequence_num = 0;
      }
      if (initObj.hasOwnProperty('time_stamp')) {
        this.time_stamp = initObj.time_stamp
      }
      else {
        this.time_stamp = 0.0;
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
      if (initObj.hasOwnProperty('fault_vec')) {
        this.fault_vec = initObj.fault_vec
      }
      else {
        this.fault_vec = new FaultVec();
      }
      if (initObj.hasOwnProperty('time_statistics')) {
        this.time_statistics = initObj.time_statistics
      }
      else {
        this.time_statistics = new TimeStatistics();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Header
    // Serialize message field [sequence_num]
    bufferOffset = _serializer.int32(obj.sequence_num, buffer, bufferOffset);
    // Serialize message field [time_stamp]
    bufferOffset = _serializer.float64(obj.time_stamp, buffer, bufferOffset);
    // Serialize message field [module_name]
    bufferOffset = _serializer.string(obj.module_name, buffer, bufferOffset);
    // Serialize message field [version]
    bufferOffset = _serializer.string(obj.version, buffer, bufferOffset);
    // Serialize message field [fault_vec]
    bufferOffset = FaultVec.serialize(obj.fault_vec, buffer, bufferOffset);
    // Serialize message field [time_statistics]
    bufferOffset = TimeStatistics.serialize(obj.time_statistics, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Header
    let len;
    let data = new Header(null);
    // Deserialize message field [sequence_num]
    data.sequence_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [time_stamp]
    data.time_stamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [module_name]
    data.module_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [version]
    data.version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [fault_vec]
    data.fault_vec = FaultVec.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_statistics]
    data.time_statistics = TimeStatistics.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.module_name);
    length += _getByteLength(object.version);
    length += FaultVec.getMessageSize(object.fault_vec);
    length += TimeStatistics.getMessageSize(object.time_statistics);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/Header';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e31935db661363d21d899876e48cac39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 sequence_num
    float64 time_stamp
    string 	module_name
    string 	version
    FaultVec 	fault_vec
    TimeStatistics 	time_statistics
    ================================================================================
    MSG: common_msgs/FaultVec
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
    ================================================================================
    MSG: common_msgs/TimeStatistics
    TimeStatus[] 	dev_time_status_msg
    float64 	sending_timestamp
    ================================================================================
    MSG: common_msgs/TimeStatus
    float64 	dtime
    string 	source_node_name
    string 	destination_node_name
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Header(null);
    if (msg.sequence_num !== undefined) {
      resolved.sequence_num = msg.sequence_num;
    }
    else {
      resolved.sequence_num = 0
    }

    if (msg.time_stamp !== undefined) {
      resolved.time_stamp = msg.time_stamp;
    }
    else {
      resolved.time_stamp = 0.0
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

    if (msg.fault_vec !== undefined) {
      resolved.fault_vec = FaultVec.Resolve(msg.fault_vec)
    }
    else {
      resolved.fault_vec = new FaultVec()
    }

    if (msg.time_statistics !== undefined) {
      resolved.time_statistics = TimeStatistics.Resolve(msg.time_statistics)
    }
    else {
      resolved.time_statistics = new TimeStatistics()
    }

    return resolved;
    }
};

module.exports = Header;
