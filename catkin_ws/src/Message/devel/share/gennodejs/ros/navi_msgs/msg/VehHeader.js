// Auto-generated. Do not edit!

// (in-package navi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TimeStamp = require('./TimeStamp.js');

//-----------------------------------------------------------

class VehHeader {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.veh_id = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('veh_id')) {
        this.veh_id = initObj.veh_id
      }
      else {
        this.veh_id = 0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = new TimeStamp();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehHeader
    // Serialize message field [veh_id]
    bufferOffset = _serializer.uint16(obj.veh_id, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = TimeStamp.serialize(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehHeader
    let len;
    let data = new VehHeader(null);
    // Deserialize message field [veh_id]
    data.veh_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = TimeStamp.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navi_msgs/VehHeader';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef86fbe4272401883141e6e6554bd992';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 veh_id
    TimeStamp time
    ================================================================================
    MSG: navi_msgs/TimeStamp
    uint64 s
    uint64 ns
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehHeader(null);
    if (msg.veh_id !== undefined) {
      resolved.veh_id = msg.veh_id;
    }
    else {
      resolved.veh_id = 0
    }

    if (msg.time !== undefined) {
      resolved.time = TimeStamp.Resolve(msg.time)
    }
    else {
      resolved.time = new TimeStamp()
    }

    return resolved;
    }
};

module.exports = VehHeader;
