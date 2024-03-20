// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TrajectoryPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Position_x = null;
      this.Position_y = null;
      this.Velocity = null;
      this.Heading = null;
      this.Curvature = null;
      this.t_space = null;
      this.s_along = null;
    }
    else {
      if (initObj.hasOwnProperty('Position_x')) {
        this.Position_x = initObj.Position_x
      }
      else {
        this.Position_x = 0.0;
      }
      if (initObj.hasOwnProperty('Position_y')) {
        this.Position_y = initObj.Position_y
      }
      else {
        this.Position_y = 0.0;
      }
      if (initObj.hasOwnProperty('Velocity')) {
        this.Velocity = initObj.Velocity
      }
      else {
        this.Velocity = 0.0;
      }
      if (initObj.hasOwnProperty('Heading')) {
        this.Heading = initObj.Heading
      }
      else {
        this.Heading = 0.0;
      }
      if (initObj.hasOwnProperty('Curvature')) {
        this.Curvature = initObj.Curvature
      }
      else {
        this.Curvature = 0.0;
      }
      if (initObj.hasOwnProperty('t_space')) {
        this.t_space = initObj.t_space
      }
      else {
        this.t_space = 0.0;
      }
      if (initObj.hasOwnProperty('s_along')) {
        this.s_along = initObj.s_along
      }
      else {
        this.s_along = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryPoint
    // Serialize message field [Position_x]
    bufferOffset = _serializer.float32(obj.Position_x, buffer, bufferOffset);
    // Serialize message field [Position_y]
    bufferOffset = _serializer.float32(obj.Position_y, buffer, bufferOffset);
    // Serialize message field [Velocity]
    bufferOffset = _serializer.float32(obj.Velocity, buffer, bufferOffset);
    // Serialize message field [Heading]
    bufferOffset = _serializer.float32(obj.Heading, buffer, bufferOffset);
    // Serialize message field [Curvature]
    bufferOffset = _serializer.float32(obj.Curvature, buffer, bufferOffset);
    // Serialize message field [t_space]
    bufferOffset = _serializer.float32(obj.t_space, buffer, bufferOffset);
    // Serialize message field [s_along]
    bufferOffset = _serializer.float32(obj.s_along, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryPoint
    let len;
    let data = new TrajectoryPoint(null);
    // Deserialize message field [Position_x]
    data.Position_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Position_y]
    data.Position_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Velocity]
    data.Velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Heading]
    data.Heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Curvature]
    data.Curvature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [t_space]
    data.t_space = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [s_along]
    data.s_along = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/TrajectoryPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8af69cf1a28e5c716644308c9ae4e7b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TrajectoryPoint(null);
    if (msg.Position_x !== undefined) {
      resolved.Position_x = msg.Position_x;
    }
    else {
      resolved.Position_x = 0.0
    }

    if (msg.Position_y !== undefined) {
      resolved.Position_y = msg.Position_y;
    }
    else {
      resolved.Position_y = 0.0
    }

    if (msg.Velocity !== undefined) {
      resolved.Velocity = msg.Velocity;
    }
    else {
      resolved.Velocity = 0.0
    }

    if (msg.Heading !== undefined) {
      resolved.Heading = msg.Heading;
    }
    else {
      resolved.Heading = 0.0
    }

    if (msg.Curvature !== undefined) {
      resolved.Curvature = msg.Curvature;
    }
    else {
      resolved.Curvature = 0.0
    }

    if (msg.t_space !== undefined) {
      resolved.t_space = msg.t_space;
    }
    else {
      resolved.t_space = 0.0
    }

    if (msg.s_along !== undefined) {
      resolved.s_along = msg.s_along;
    }
    else {
      resolved.s_along = 0.0
    }

    return resolved;
    }
};

module.exports = TrajectoryPoint;
