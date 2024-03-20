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
let Quaternion = require('./Quaternion.js');
let Vector3 = require('./Vector3.js');

//-----------------------------------------------------------

class PoseQuaternion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.quaternion = null;
      this.rpy_covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Vector3WithCovariance();
      }
      if (initObj.hasOwnProperty('quaternion')) {
        this.quaternion = initObj.quaternion
      }
      else {
        this.quaternion = new Quaternion();
      }
      if (initObj.hasOwnProperty('rpy_covariance')) {
        this.rpy_covariance = initObj.rpy_covariance
      }
      else {
        this.rpy_covariance = new Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseQuaternion
    // Serialize message field [position]
    bufferOffset = Vector3WithCovariance.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [quaternion]
    bufferOffset = Quaternion.serialize(obj.quaternion, buffer, bufferOffset);
    // Serialize message field [rpy_covariance]
    bufferOffset = Vector3.serialize(obj.rpy_covariance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseQuaternion
    let len;
    let data = new PoseQuaternion(null);
    // Deserialize message field [position]
    data.position = Vector3WithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [quaternion]
    data.quaternion = Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpy_covariance]
    data.rpy_covariance = Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 104;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/PoseQuaternion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c198d5fc129720a7ae62198ae0b52dfa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Vector3WithCovariance 	position
    Quaternion 	quaternion
    Vector3  rpy_covariance	
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
    MSG: common_msgs/Quaternion
    float64 	x
    float64 	y
    float64 	z
    float64 	w
    ================================================================================
    MSG: common_msgs/Vector3
    float64 	x
    float64 	y
    float64 	z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseQuaternion(null);
    if (msg.position !== undefined) {
      resolved.position = Vector3WithCovariance.Resolve(msg.position)
    }
    else {
      resolved.position = new Vector3WithCovariance()
    }

    if (msg.quaternion !== undefined) {
      resolved.quaternion = Quaternion.Resolve(msg.quaternion)
    }
    else {
      resolved.quaternion = new Quaternion()
    }

    if (msg.rpy_covariance !== undefined) {
      resolved.rpy_covariance = Vector3.Resolve(msg.rpy_covariance)
    }
    else {
      resolved.rpy_covariance = new Vector3()
    }

    return resolved;
    }
};

module.exports = PoseQuaternion;
