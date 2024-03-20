// Auto-generated. Do not edit!

// (in-package navi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2D = require('./Point2D.js');

//-----------------------------------------------------------

class NavParas {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nav_operate = null;
      this.station_id = null;
      this.end_point = null;
    }
    else {
      if (initObj.hasOwnProperty('nav_operate')) {
        this.nav_operate = initObj.nav_operate
      }
      else {
        this.nav_operate = '';
      }
      if (initObj.hasOwnProperty('station_id')) {
        this.station_id = initObj.station_id
      }
      else {
        this.station_id = 0;
      }
      if (initObj.hasOwnProperty('end_point')) {
        this.end_point = initObj.end_point
      }
      else {
        this.end_point = new Point2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavParas
    // Serialize message field [nav_operate]
    bufferOffset = _serializer.string(obj.nav_operate, buffer, bufferOffset);
    // Serialize message field [station_id]
    bufferOffset = _serializer.uint32(obj.station_id, buffer, bufferOffset);
    // Serialize message field [end_point]
    bufferOffset = Point2D.serialize(obj.end_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavParas
    let len;
    let data = new NavParas(null);
    // Deserialize message field [nav_operate]
    data.nav_operate = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [station_id]
    data.station_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [end_point]
    data.end_point = Point2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.nav_operate);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navi_msgs/NavParas';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '922cf09137c76b3b8e2d97ff35c31b17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string nav_operate 
    uint32 station_id
    Point2D end_point
    
    
    ================================================================================
    MSG: navi_msgs/Point2D
    float64 x
    float64 y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavParas(null);
    if (msg.nav_operate !== undefined) {
      resolved.nav_operate = msg.nav_operate;
    }
    else {
      resolved.nav_operate = ''
    }

    if (msg.station_id !== undefined) {
      resolved.station_id = msg.station_id;
    }
    else {
      resolved.station_id = 0
    }

    if (msg.end_point !== undefined) {
      resolved.end_point = Point2D.Resolve(msg.end_point)
    }
    else {
      resolved.end_point = new Point2D()
    }

    return resolved;
    }
};

module.exports = NavParas;
