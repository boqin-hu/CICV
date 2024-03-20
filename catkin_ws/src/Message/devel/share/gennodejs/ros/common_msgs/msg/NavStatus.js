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

class NavStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.utc_time = null;
      this.gps_status = null;
      this.pos_status = null;
      this.att_status = null;
      this.init_status = null;
      this.sate_num = null;
      this.hdop = null;
      this.pdop = null;
      this.diff_age = null;
    }
    else {
      if (initObj.hasOwnProperty('utc_time')) {
        this.utc_time = initObj.utc_time
      }
      else {
        this.utc_time = 0.0;
      }
      if (initObj.hasOwnProperty('gps_status')) {
        this.gps_status = initObj.gps_status
      }
      else {
        this.gps_status = 0;
      }
      if (initObj.hasOwnProperty('pos_status')) {
        this.pos_status = initObj.pos_status
      }
      else {
        this.pos_status = 0;
      }
      if (initObj.hasOwnProperty('att_status')) {
        this.att_status = initObj.att_status
      }
      else {
        this.att_status = 0;
      }
      if (initObj.hasOwnProperty('init_status')) {
        this.init_status = initObj.init_status
      }
      else {
        this.init_status = 0;
      }
      if (initObj.hasOwnProperty('sate_num')) {
        this.sate_num = initObj.sate_num
      }
      else {
        this.sate_num = 0;
      }
      if (initObj.hasOwnProperty('hdop')) {
        this.hdop = initObj.hdop
      }
      else {
        this.hdop = 0.0;
      }
      if (initObj.hasOwnProperty('pdop')) {
        this.pdop = initObj.pdop
      }
      else {
        this.pdop = 0.0;
      }
      if (initObj.hasOwnProperty('diff_age')) {
        this.diff_age = initObj.diff_age
      }
      else {
        this.diff_age = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavStatus
    // Serialize message field [utc_time]
    bufferOffset = _serializer.float64(obj.utc_time, buffer, bufferOffset);
    // Serialize message field [gps_status]
    bufferOffset = _serializer.int8(obj.gps_status, buffer, bufferOffset);
    // Serialize message field [pos_status]
    bufferOffset = _serializer.int32(obj.pos_status, buffer, bufferOffset);
    // Serialize message field [att_status]
    bufferOffset = _serializer.int32(obj.att_status, buffer, bufferOffset);
    // Serialize message field [init_status]
    bufferOffset = _serializer.int32(obj.init_status, buffer, bufferOffset);
    // Serialize message field [sate_num]
    bufferOffset = _serializer.int32(obj.sate_num, buffer, bufferOffset);
    // Serialize message field [hdop]
    bufferOffset = _serializer.float32(obj.hdop, buffer, bufferOffset);
    // Serialize message field [pdop]
    bufferOffset = _serializer.float32(obj.pdop, buffer, bufferOffset);
    // Serialize message field [diff_age]
    bufferOffset = _serializer.float32(obj.diff_age, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavStatus
    let len;
    let data = new NavStatus(null);
    // Deserialize message field [utc_time]
    data.utc_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gps_status]
    data.gps_status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [pos_status]
    data.pos_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [att_status]
    data.att_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [init_status]
    data.init_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sate_num]
    data.sate_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hdop]
    data.hdop = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pdop]
    data.pdop = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [diff_age]
    data.diff_age = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/NavStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66cf32030c6e7f18df10ff34df97d9cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 	utc_time
    int8 	gps_status # 0-nofix  1-single  2-psrdiff  3-code_diff  4-narrow_init  5-narrow_float
    int32 	pos_status
    int32  	att_status
    int32  	init_status
    int32  	sate_num
    float32  	hdop
    float32  	pdop
    float32  	diff_age
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavStatus(null);
    if (msg.utc_time !== undefined) {
      resolved.utc_time = msg.utc_time;
    }
    else {
      resolved.utc_time = 0.0
    }

    if (msg.gps_status !== undefined) {
      resolved.gps_status = msg.gps_status;
    }
    else {
      resolved.gps_status = 0
    }

    if (msg.pos_status !== undefined) {
      resolved.pos_status = msg.pos_status;
    }
    else {
      resolved.pos_status = 0
    }

    if (msg.att_status !== undefined) {
      resolved.att_status = msg.att_status;
    }
    else {
      resolved.att_status = 0
    }

    if (msg.init_status !== undefined) {
      resolved.init_status = msg.init_status;
    }
    else {
      resolved.init_status = 0
    }

    if (msg.sate_num !== undefined) {
      resolved.sate_num = msg.sate_num;
    }
    else {
      resolved.sate_num = 0
    }

    if (msg.hdop !== undefined) {
      resolved.hdop = msg.hdop;
    }
    else {
      resolved.hdop = 0.0
    }

    if (msg.pdop !== undefined) {
      resolved.pdop = msg.pdop;
    }
    else {
      resolved.pdop = 0.0
    }

    if (msg.diff_age !== undefined) {
      resolved.diff_age = msg.diff_age;
    }
    else {
      resolved.diff_age = 0.0
    }

    return resolved;
    }
};

module.exports = NavStatus;
