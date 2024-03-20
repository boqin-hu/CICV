// Auto-generated. Do not edit!

// (in-package navi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehHeader = require('./VehHeader.js');
let Point2D = require('./Point2D.js');

//-----------------------------------------------------------

class VehPosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.v_header = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('v_header')) {
        this.v_header = initObj.v_header
      }
      else {
        this.v_header = new VehHeader();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Point2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehPosition
    // Serialize message field [v_header]
    bufferOffset = VehHeader.serialize(obj.v_header, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Point2D.serialize(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehPosition
    let len;
    let data = new VehPosition(null);
    // Deserialize message field [v_header]
    data.v_header = VehHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Point2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navi_msgs/VehPosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1724989aafc3320d6e07dd9b646ee451';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    VehHeader v_header
    Point2D position
    ================================================================================
    MSG: navi_msgs/VehHeader
    uint16 veh_id
    TimeStamp time
    ================================================================================
    MSG: navi_msgs/TimeStamp
    uint64 s
    uint64 ns
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
    const resolved = new VehPosition(null);
    if (msg.v_header !== undefined) {
      resolved.v_header = VehHeader.Resolve(msg.v_header)
    }
    else {
      resolved.v_header = new VehHeader()
    }

    if (msg.position !== undefined) {
      resolved.position = Point2D.Resolve(msg.position)
    }
    else {
      resolved.position = new Point2D()
    }

    return resolved;
    }
};

module.exports = VehPosition;
