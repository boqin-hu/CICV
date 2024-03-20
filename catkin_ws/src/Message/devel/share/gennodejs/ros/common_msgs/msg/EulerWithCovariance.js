// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UnsureVar = require('./UnsureVar.js');

//-----------------------------------------------------------

class EulerWithCovariance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = new UnsureVar();
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = new UnsureVar();
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = new UnsureVar();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EulerWithCovariance
    // Serialize message field [roll]
    bufferOffset = UnsureVar.serialize(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = UnsureVar.serialize(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = UnsureVar.serialize(obj.yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EulerWithCovariance
    let len;
    let data = new EulerWithCovariance(null);
    // Deserialize message field [roll]
    data.roll = UnsureVar.deserialize(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = UnsureVar.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = UnsureVar.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/EulerWithCovariance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2def418964c79641088af4505a57e1a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    UnsureVar 	roll
    UnsureVar 	pitch
    UnsureVar 	yaw
    ================================================================================
    MSG: common_msgs/UnsureVar
    float64 	variable
    float64 	var_std
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EulerWithCovariance(null);
    if (msg.roll !== undefined) {
      resolved.roll = UnsureVar.Resolve(msg.roll)
    }
    else {
      resolved.roll = new UnsureVar()
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = UnsureVar.Resolve(msg.pitch)
    }
    else {
      resolved.pitch = new UnsureVar()
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = UnsureVar.Resolve(msg.yaw)
    }
    else {
      resolved.yaw = new UnsureVar()
    }

    return resolved;
    }
};

module.exports = EulerWithCovariance;
