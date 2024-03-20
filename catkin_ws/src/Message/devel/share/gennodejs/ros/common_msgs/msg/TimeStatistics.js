// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TimeStatus = require('./TimeStatus.js');

//-----------------------------------------------------------

class TimeStatistics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dev_time_status_msg = null;
      this.sending_timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('dev_time_status_msg')) {
        this.dev_time_status_msg = initObj.dev_time_status_msg
      }
      else {
        this.dev_time_status_msg = [];
      }
      if (initObj.hasOwnProperty('sending_timestamp')) {
        this.sending_timestamp = initObj.sending_timestamp
      }
      else {
        this.sending_timestamp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimeStatistics
    // Serialize message field [dev_time_status_msg]
    // Serialize the length for message field [dev_time_status_msg]
    bufferOffset = _serializer.uint32(obj.dev_time_status_msg.length, buffer, bufferOffset);
    obj.dev_time_status_msg.forEach((val) => {
      bufferOffset = TimeStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [sending_timestamp]
    bufferOffset = _serializer.float64(obj.sending_timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimeStatistics
    let len;
    let data = new TimeStatistics(null);
    // Deserialize message field [dev_time_status_msg]
    // Deserialize array length for message field [dev_time_status_msg]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.dev_time_status_msg = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.dev_time_status_msg[i] = TimeStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [sending_timestamp]
    data.sending_timestamp = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.dev_time_status_msg.forEach((val) => {
      length += TimeStatus.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/TimeStatistics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92d8e806eb39fab86dbb2d3c912096f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TimeStatistics(null);
    if (msg.dev_time_status_msg !== undefined) {
      resolved.dev_time_status_msg = new Array(msg.dev_time_status_msg.length);
      for (let i = 0; i < resolved.dev_time_status_msg.length; ++i) {
        resolved.dev_time_status_msg[i] = TimeStatus.Resolve(msg.dev_time_status_msg[i]);
      }
    }
    else {
      resolved.dev_time_status_msg = []
    }

    if (msg.sending_timestamp !== undefined) {
      resolved.sending_timestamp = msg.sending_timestamp;
    }
    else {
      resolved.sending_timestamp = 0.0
    }

    return resolved;
    }
};

module.exports = TimeStatistics;
