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
let PoseQuaternion = require('./PoseQuaternion.js');

//-----------------------------------------------------------

class Pose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_euler = null;
      this.pose_quaternion = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_euler')) {
        this.pose_euler = initObj.pose_euler
      }
      else {
        this.pose_euler = new PoseEuler();
      }
      if (initObj.hasOwnProperty('pose_quaternion')) {
        this.pose_quaternion = initObj.pose_quaternion
      }
      else {
        this.pose_quaternion = new PoseQuaternion();
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
    // Serializes a message object of type Pose
    // Serialize message field [pose_euler]
    bufferOffset = PoseEuler.serialize(obj.pose_euler, buffer, bufferOffset);
    // Serialize message field [pose_quaternion]
    bufferOffset = PoseQuaternion.serialize(obj.pose_quaternion, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pose
    let len;
    let data = new Pose(null);
    // Deserialize message field [pose_euler]
    data.pose_euler = PoseEuler.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_quaternion]
    data.pose_quaternion = PoseQuaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 201;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/Pose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '184ff128e0b5b9ac5cd314f5034d86b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PoseEuler  	pose_euler
    PoseQuaternion 	pose_quaternion
    int8  	status   # 0-normal  1-error
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
    ================================================================================
    MSG: common_msgs/PoseQuaternion
    Vector3WithCovariance 	position
    Quaternion 	quaternion
    Vector3  rpy_covariance	
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
    const resolved = new Pose(null);
    if (msg.pose_euler !== undefined) {
      resolved.pose_euler = PoseEuler.Resolve(msg.pose_euler)
    }
    else {
      resolved.pose_euler = new PoseEuler()
    }

    if (msg.pose_quaternion !== undefined) {
      resolved.pose_quaternion = PoseQuaternion.Resolve(msg.pose_quaternion)
    }
    else {
      resolved.pose_quaternion = new PoseQuaternion()
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

module.exports = Pose;
