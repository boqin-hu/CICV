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

class NaviHmi {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_sec = null;
      this.interactive = null;
      this.event_type = null;
      this.event_id = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_sec')) {
        this.timestamp_sec = initObj.timestamp_sec
      }
      else {
        this.timestamp_sec = 0.0;
      }
      if (initObj.hasOwnProperty('interactive')) {
        this.interactive = initObj.interactive
      }
      else {
        this.interactive = 0;
      }
      if (initObj.hasOwnProperty('event_type')) {
        this.event_type = initObj.event_type
      }
      else {
        this.event_type = 0;
      }
      if (initObj.hasOwnProperty('event_id')) {
        this.event_id = initObj.event_id
      }
      else {
        this.event_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NaviHmi
    // Serialize message field [timestamp_sec]
    bufferOffset = _serializer.float64(obj.timestamp_sec, buffer, bufferOffset);
    // Serialize message field [interactive]
    bufferOffset = _serializer.int32(obj.interactive, buffer, bufferOffset);
    // Serialize message field [event_type]
    bufferOffset = _serializer.int32(obj.event_type, buffer, bufferOffset);
    // Serialize message field [event_id]
    bufferOffset = _serializer.int32(obj.event_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NaviHmi
    let len;
    let data = new NaviHmi(null);
    // Deserialize message field [timestamp_sec]
    data.timestamp_sec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [interactive]
    data.interactive = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [event_type]
    data.event_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [event_id]
    data.event_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navi_msgs/NaviHmi';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b2932c5457cada5cc44e42751723cc0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64   timestamp_sec
    int32     interactive #600:任务状态 800：播报
    int32     event_type  #0：车辆进站 1：车辆起步 2：车辆清车 3：任务提醒
    int32     event_id    #event_type = 0||1 id="站点id"；event_type = 2 id=0；event_type=3 0:空闲/结束 1：执行 2：异常
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NaviHmi(null);
    if (msg.timestamp_sec !== undefined) {
      resolved.timestamp_sec = msg.timestamp_sec;
    }
    else {
      resolved.timestamp_sec = 0.0
    }

    if (msg.interactive !== undefined) {
      resolved.interactive = msg.interactive;
    }
    else {
      resolved.interactive = 0
    }

    if (msg.event_type !== undefined) {
      resolved.event_type = msg.event_type;
    }
    else {
      resolved.event_type = 0
    }

    if (msg.event_id !== undefined) {
      resolved.event_id = msg.event_id;
    }
    else {
      resolved.event_id = 0
    }

    return resolved;
    }
};

module.exports = NaviHmi;
