// Auto-generated. Do not edit!

// (in-package navi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SysInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cpu_occupied = null;
      this.mem_occupied = null;
      this.cur_mileage = null;
      this.history_mileage = null;
    }
    else {
      if (initObj.hasOwnProperty('cpu_occupied')) {
        this.cpu_occupied = initObj.cpu_occupied
      }
      else {
        this.cpu_occupied = 0.0;
      }
      if (initObj.hasOwnProperty('mem_occupied')) {
        this.mem_occupied = initObj.mem_occupied
      }
      else {
        this.mem_occupied = 0.0;
      }
      if (initObj.hasOwnProperty('cur_mileage')) {
        this.cur_mileage = initObj.cur_mileage
      }
      else {
        this.cur_mileage = 0.0;
      }
      if (initObj.hasOwnProperty('history_mileage')) {
        this.history_mileage = initObj.history_mileage
      }
      else {
        this.history_mileage = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SysInfo
    // Serialize message field [cpu_occupied]
    bufferOffset = _serializer.float32(obj.cpu_occupied, buffer, bufferOffset);
    // Serialize message field [mem_occupied]
    bufferOffset = _serializer.float32(obj.mem_occupied, buffer, bufferOffset);
    // Serialize message field [cur_mileage]
    bufferOffset = _serializer.float64(obj.cur_mileage, buffer, bufferOffset);
    // Serialize message field [history_mileage]
    bufferOffset = _serializer.float64(obj.history_mileage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SysInfo
    let len;
    let data = new SysInfo(null);
    // Deserialize message field [cpu_occupied]
    data.cpu_occupied = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mem_occupied]
    data.mem_occupied = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cur_mileage]
    data.cur_mileage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [history_mileage]
    data.history_mileage = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navi_msgs/SysInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32c91a41efe8d7f00d4b592a7b9c6532';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32  cpu_occupied
    float32  mem_occupied
    float64  cur_mileage
    float64  history_mileage
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SysInfo(null);
    if (msg.cpu_occupied !== undefined) {
      resolved.cpu_occupied = msg.cpu_occupied;
    }
    else {
      resolved.cpu_occupied = 0.0
    }

    if (msg.mem_occupied !== undefined) {
      resolved.mem_occupied = msg.mem_occupied;
    }
    else {
      resolved.mem_occupied = 0.0
    }

    if (msg.cur_mileage !== undefined) {
      resolved.cur_mileage = msg.cur_mileage;
    }
    else {
      resolved.cur_mileage = 0.0
    }

    if (msg.history_mileage !== undefined) {
      resolved.history_mileage = msg.history_mileage;
    }
    else {
      resolved.history_mileage = 0.0
    }

    return resolved;
    }
};

module.exports = SysInfo;
