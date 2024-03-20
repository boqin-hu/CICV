// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ObstacleCell {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.idc = null;
      this.x = null;
      this.y = null;
      this.xg = null;
      this.yg = null;
    }
    else {
      if (initObj.hasOwnProperty('idc')) {
        this.idc = initObj.idc
      }
      else {
        this.idc = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleCell
    // Serialize message field [idc]
    bufferOffset = _serializer.int32(obj.idc, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [xg]
    bufferOffset = _serializer.float64(obj.xg, buffer, bufferOffset);
    // Serialize message field [yg]
    bufferOffset = _serializer.float64(obj.yg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleCell
    let len;
    let data = new ObstacleCell(null);
    // Deserialize message field [idc]
    data.idc = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xg]
    data.xg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yg]
    data.yg = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/ObstacleCell';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '808fcd23ffbb5d2b132baf88e48ddc52';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 idc
    float64 x
    float64 y
    float64 xg
    float64 yg
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObstacleCell(null);
    if (msg.idc !== undefined) {
      resolved.idc = msg.idc;
    }
    else {
      resolved.idc = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

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

    return resolved;
    }
};

module.exports = ObstacleCell;
