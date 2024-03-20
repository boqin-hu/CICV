// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PoseEuler = require('./PoseEuler.js');

//-----------------------------------------------------------

class DRPoseWithTime {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.week = null;
      this.utctime = null;
      this.dr_time = null;
      this.pose_euler = null;
    }
    else {
      if (initObj.hasOwnProperty('week')) {
        this.week = initObj.week
      }
      else {
        this.week = 0;
      }
      if (initObj.hasOwnProperty('utctime')) {
        this.utctime = initObj.utctime
      }
      else {
        this.utctime = 0.0;
      }
      if (initObj.hasOwnProperty('dr_time')) {
        this.dr_time = initObj.dr_time
      }
      else {
        this.dr_time = 0.0;
      }
      if (initObj.hasOwnProperty('pose_euler')) {
        this.pose_euler = initObj.pose_euler
      }
      else {
        this.pose_euler = new PoseEuler();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DRPoseWithTime
    // Serialize message field [week]
    bufferOffset = _serializer.int32(obj.week, buffer, bufferOffset);
    // Serialize message field [utctime]
    bufferOffset = _serializer.float64(obj.utctime, buffer, bufferOffset);
    // Serialize message field [dr_time]
    bufferOffset = _serializer.float64(obj.dr_time, buffer, bufferOffset);
    // Serialize message field [pose_euler]
    bufferOffset = PoseEuler.serialize(obj.pose_euler, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DRPoseWithTime
    let len;
    let data = new DRPoseWithTime(null);
    // Deserialize message field [week]
    data.week = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [utctime]
    data.utctime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dr_time]
    data.dr_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pose_euler]
    data.pose_euler = PoseEuler.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 116;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/DRPoseWithTime';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3866a48419eccf2d481c14a6c62e1f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32      week
    float64    utctime
    float64    dr_time
    PoseEuler  pose_euler
    ================================================================================
    MSG: common_msgs/PoseEuler
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
    const resolved = new DRPoseWithTime(null);
    if (msg.week !== undefined) {
      resolved.week = msg.week;
    }
    else {
      resolved.week = 0
    }

    if (msg.utctime !== undefined) {
      resolved.utctime = msg.utctime;
    }
    else {
      resolved.utctime = 0.0
    }

    if (msg.dr_time !== undefined) {
      resolved.dr_time = msg.dr_time;
    }
    else {
      resolved.dr_time = 0.0
    }

    if (msg.pose_euler !== undefined) {
      resolved.pose_euler = PoseEuler.Resolve(msg.pose_euler)
    }
    else {
      resolved.pose_euler = new PoseEuler()
    }

    return resolved;
    }
};

module.exports = DRPoseWithTime;
