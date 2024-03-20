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
let CalibrationResult = require('./CalibrationResult.js');

//-----------------------------------------------------------

class LidarCalibrationResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new PoseEuler();
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = new CalibrationResult();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarCalibrationResult
    // Serialize message field [pose]
    bufferOffset = PoseEuler.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = CalibrationResult.serialize(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarCalibrationResult
    let len;
    let data = new LidarCalibrationResult(null);
    // Deserialize message field [pose]
    data.pose = PoseEuler.deserialize(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = CalibrationResult.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += CalibrationResult.getMessageSize(object.result);
    return length + 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/LidarCalibrationResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc71203314fcc658fa8b4d2918277dff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PoseEuler pose
    CalibrationResult result
    
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
    MSG: common_msgs/CalibrationResult
    float64  timestamp_sec
    string 	module_name
    string 	version
    string 	info
    int8 	status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarCalibrationResult(null);
    if (msg.pose !== undefined) {
      resolved.pose = PoseEuler.Resolve(msg.pose)
    }
    else {
      resolved.pose = new PoseEuler()
    }

    if (msg.result !== undefined) {
      resolved.result = CalibrationResult.Resolve(msg.result)
    }
    else {
      resolved.result = new CalibrationResult()
    }

    return resolved;
    }
};

module.exports = LidarCalibrationResult;
