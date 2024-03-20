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

class Vector3WithCovariance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = new UnsureVar();
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = new UnsureVar();
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = new UnsureVar();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Vector3WithCovariance
    // Serialize message field [x]
    bufferOffset = UnsureVar.serialize(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = UnsureVar.serialize(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = UnsureVar.serialize(obj.z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Vector3WithCovariance
    let len;
    let data = new Vector3WithCovariance(null);
    // Deserialize message field [x]
    data.x = UnsureVar.deserialize(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = UnsureVar.deserialize(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = UnsureVar.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/Vector3WithCovariance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f33be6fa24c988ddc4f60ceb1dee662b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    UnsureVar 	x
    UnsureVar 	y
    UnsureVar 	z
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
    const resolved = new Vector3WithCovariance(null);
    if (msg.x !== undefined) {
      resolved.x = UnsureVar.Resolve(msg.x)
    }
    else {
      resolved.x = new UnsureVar()
    }

    if (msg.y !== undefined) {
      resolved.y = UnsureVar.Resolve(msg.y)
    }
    else {
      resolved.y = new UnsureVar()
    }

    if (msg.z !== undefined) {
      resolved.z = UnsureVar.Resolve(msg.z)
    }
    else {
      resolved.z = new UnsureVar()
    }

    return resolved;
    }
};

module.exports = Vector3WithCovariance;
