// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrajectoryPoint = require('./TrajectoryPoint.js');

//-----------------------------------------------------------

class Trajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.SimTim = null;
      this.decision_type = null;
      this.turn_light_type = null;
      this.num = null;
      this.trajectorypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('SimTim')) {
        this.SimTim = initObj.SimTim
      }
      else {
        this.SimTim = 0.0;
      }
      if (initObj.hasOwnProperty('decision_type')) {
        this.decision_type = initObj.decision_type
      }
      else {
        this.decision_type = 0;
      }
      if (initObj.hasOwnProperty('turn_light_type')) {
        this.turn_light_type = initObj.turn_light_type
      }
      else {
        this.turn_light_type = 0;
      }
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
      if (initObj.hasOwnProperty('trajectorypoints')) {
        this.trajectorypoints = initObj.trajectorypoints
      }
      else {
        this.trajectorypoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Trajectory
    // Serialize message field [SimTim]
    bufferOffset = _serializer.float64(obj.SimTim, buffer, bufferOffset);
    // Serialize message field [decision_type]
    bufferOffset = _serializer.int32(obj.decision_type, buffer, bufferOffset);
    // Serialize message field [turn_light_type]
    bufferOffset = _serializer.int32(obj.turn_light_type, buffer, bufferOffset);
    // Serialize message field [num]
    bufferOffset = _serializer.int32(obj.num, buffer, bufferOffset);
    // Serialize message field [trajectorypoints]
    // Serialize the length for message field [trajectorypoints]
    bufferOffset = _serializer.uint32(obj.trajectorypoints.length, buffer, bufferOffset);
    obj.trajectorypoints.forEach((val) => {
      bufferOffset = TrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Trajectory
    let len;
    let data = new Trajectory(null);
    // Deserialize message field [SimTim]
    data.SimTim = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [decision_type]
    data.decision_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [turn_light_type]
    data.turn_light_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num]
    data.num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trajectorypoints]
    // Deserialize array length for message field [trajectorypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectorypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectorypoints[i] = TrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 28 * object.trajectorypoints.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/Trajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1bb05648bf98b981e26e4b22c2800b04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Trajectory of VtdToRos
    
    float64 SimTim
    int32 decision_type
    int32 turn_light_type
    int32 num 
    TrajectoryPoint[] trajectorypoints
    
    ================================================================================
    MSG: common_msgs/TrajectoryPoint
    # TrajectoryPoint of VtdToRos
    
    float32 Position_x   #道路点X向坐标
    float32 Position_y   #道路点Y向坐标
    float32 Velocity     #道路点合速度
    float32 Heading      #道路点朝向
    float32 Curvature    #路点曲率
    float32 t_space      #路点相对时间
    float32 s_along      #沿路线距离
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Trajectory(null);
    if (msg.SimTim !== undefined) {
      resolved.SimTim = msg.SimTim;
    }
    else {
      resolved.SimTim = 0.0
    }

    if (msg.decision_type !== undefined) {
      resolved.decision_type = msg.decision_type;
    }
    else {
      resolved.decision_type = 0
    }

    if (msg.turn_light_type !== undefined) {
      resolved.turn_light_type = msg.turn_light_type;
    }
    else {
      resolved.turn_light_type = 0
    }

    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    if (msg.trajectorypoints !== undefined) {
      resolved.trajectorypoints = new Array(msg.trajectorypoints.length);
      for (let i = 0; i < resolved.trajectorypoints.length; ++i) {
        resolved.trajectorypoints[i] = TrajectoryPoint.Resolve(msg.trajectorypoints[i]);
      }
    }
    else {
      resolved.trajectorypoints = []
    }

    return resolved;
    }
};

module.exports = Trajectory;
