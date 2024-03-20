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

class StationPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.station_id = null;
    }
    else {
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
      if (initObj.hasOwnProperty('station_id')) {
        this.station_id = initObj.station_id
      }
      else {
        this.station_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StationPoint
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [station_id]
    bufferOffset = _serializer.uint16(obj.station_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StationPoint
    let len;
    let data = new StationPoint(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [station_id]
    data.station_id = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navi_msgs/StationPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cd87fa514ed6a37f6daab224ce9b0919';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    uint16 station_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StationPoint(null);
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

    if (msg.station_id !== undefined) {
      resolved.station_id = msg.station_id;
    }
    else {
      resolved.station_id = 0
    }

    return resolved;
    }
};

module.exports = StationPoint;
