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

//-----------------------------------------------------------

class NaviTaskStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.v_header = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('v_header')) {
        this.v_header = initObj.v_header
      }
      else {
        this.v_header = new VehHeader();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NaviTaskStatus
    // Serialize message field [v_header]
    bufferOffset = VehHeader.serialize(obj.v_header, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NaviTaskStatus
    let len;
    let data = new NaviTaskStatus(null);
    // Deserialize message field [v_header]
    data.v_header = VehHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navi_msgs/NaviTaskStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '385f807662e68b44b2d006b0602e2751';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    VehHeader v_header
    int32 status	 
    
    ================================================================================
    MSG: navi_msgs/VehHeader
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
    const resolved = new NaviTaskStatus(null);
    if (msg.v_header !== undefined) {
      resolved.v_header = VehHeader.Resolve(msg.v_header)
    }
    else {
      resolved.v_header = new VehHeader()
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = NaviTaskStatus;
