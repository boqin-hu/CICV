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

//-----------------------------------------------------------

class Twist {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocity = null;
      this.angular_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Vector3WithCovariance();
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new Vector3WithCovariance();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Twist
    // Serialize message field [velocity]
    bufferOffset = Vector3WithCovariance.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = Vector3WithCovariance.serialize(obj.angular_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Twist
    let len;
    let data = new Twist(null);
    // Deserialize message field [velocity]
    data.velocity = Vector3WithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = Vector3WithCovariance.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/Twist';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89e6e36950801075ca0366daae3a0780';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Vector3WithCovariance 	velocity
    Vector3WithCovariance 	angular_velocity
    ================================================================================
    MSG: common_msgs/Vector3WithCovariance
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
    const resolved = new Twist(null);
    if (msg.velocity !== undefined) {
      resolved.velocity = Vector3WithCovariance.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new Vector3WithCovariance()
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = Vector3WithCovariance.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new Vector3WithCovariance()
    }

    return resolved;
    }
};

module.exports = Twist;
