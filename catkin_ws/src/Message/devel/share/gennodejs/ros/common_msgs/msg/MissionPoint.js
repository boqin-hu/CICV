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

class MissionPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xg = null;
      this.yg = null;
      this.heading = null;
    }
    else {
      if (initObj.hasOwnProperty('xg')) {
        this.xg = initObj.xg
      }
      else {
        this.xg = 0.0;
      }
      if (initObj.hasOwnProperty('yg')) {
        this.yg = initObj.yg
      }
      else {
        this.yg = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionPoint
    // Serialize message field [xg]
    bufferOffset = _serializer.float64(obj.xg, buffer, bufferOffset);
    // Serialize message field [yg]
    bufferOffset = _serializer.float64(obj.yg, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionPoint
    let len;
    let data = new MissionPoint(null);
    // Deserialize message field [xg]
    data.xg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yg]
    data.yg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/MissionPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98d4522e42072043a81f851094862e51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 xg
    float64 yg
    float64 heading
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionPoint(null);
    if (msg.xg !== undefined) {
      resolved.xg = msg.xg;
    }
    else {
      resolved.xg = 0.0
    }

    if (msg.yg !== undefined) {
      resolved.yg = msg.yg;
    }
    else {
      resolved.yg = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    return resolved;
    }
};

module.exports = MissionPoint;
