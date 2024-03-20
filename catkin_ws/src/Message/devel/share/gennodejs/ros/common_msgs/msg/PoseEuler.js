// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Vector3WithCovariance = require('./Vector3WithCovariance.js');
let EulerWithCovariance = require('./EulerWithCovariance.js');

//-----------------------------------------------------------

class PoseEuler {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.rotation = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Vector3WithCovariance();
      }
      if (initObj.hasOwnProperty('rotation')) {
        this.rotation = initObj.rotation
      }
      else {
        this.rotation = new EulerWithCovariance();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseEuler
    // Serialize message field [position]
    bufferOffset = Vector3WithCovariance.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [rotation]
    bufferOffset = EulerWithCovariance.serialize(obj.rotation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseEuler
    let len;
    let data = new PoseEuler(null);
    // Deserialize message field [position]
    data.position = Vector3WithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [rotation]
    data.rotation = EulerWithCovariance.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/PoseEuler';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8f0dec34a7aced56ccf5b23f28c3a53';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Vector3WithCovariance 	position
    EulerWithCovariance 	rotation
    ================================================================================
    MSG: common_msgs/Vector3WithCovariance
    UnsureVar 	x
    UnsureVar 	y
    UnsureVar 	z
    ================================================================================
    MSG: common_msgs/UnsureVar
    float64 	variable
    float64 	var_std
    ================================================================================
    MSG: common_msgs/EulerWithCovariance
    UnsureVar 	roll
    UnsureVar 	pitch
    UnsureVar 	yaw
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseEuler(null);
    if (msg.position !== undefined) {
      resolved.position = Vector3WithCovariance.Resolve(msg.position)
    }
    else {
      resolved.position = new Vector3WithCovariance()
    }

    if (msg.rotation !== undefined) {
      resolved.rotation = EulerWithCovariance.Resolve(msg.rotation)
    }
    else {
      resolved.rotation = new EulerWithCovariance()
    }

    return resolved;
    }
};

module.exports = PoseEuler;
