// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2D = require('./Point2D.js');

//-----------------------------------------------------------

class TrajectoryPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.velocity = null;
      this.heading = null;
      this.curvature = null;
      this.s = null;
      this.t = null;
      this.point_type = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Point2D();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('curvature')) {
        this.curvature = initObj.curvature
      }
      else {
        this.curvature = 0.0;
      }
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = 0.0;
      }
      if (initObj.hasOwnProperty('t')) {
        this.t = initObj.t
      }
      else {
        this.t = 0.0;
      }
      if (initObj.hasOwnProperty('point_type')) {
        this.point_type = initObj.point_type
      }
      else {
        this.point_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryPoint
    // Serialize message field [position]
    bufferOffset = Point2D.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float32(obj.velocity, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float32(obj.heading, buffer, bufferOffset);
    // Serialize message field [curvature]
    bufferOffset = _serializer.float32(obj.curvature, buffer, bufferOffset);
    // Serialize message field [s]
    bufferOffset = _serializer.float32(obj.s, buffer, bufferOffset);
    // Serialize message field [t]
    bufferOffset = _serializer.float32(obj.t, buffer, bufferOffset);
    // Serialize message field [point_type]
    bufferOffset = _serializer.int8(obj.point_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryPoint
    let len;
    let data = new TrajectoryPoint(null);
    // Deserialize message field [position]
    data.position = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [curvature]
    data.curvature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [s]
    data.s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [t]
    data.t = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [point_type]
    data.point_type = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/TrajectoryPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '308fbdfad21569e0af17819e9dd2a2d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Point2D position
    float32 velocity
    float32 heading
    float32 curvature
    float32 s
    float32 t
    int8 point_type
    
    ================================================================================
    MSG: perception_msgs/Point2D
    float64 x
    float64 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajectoryPoint(null);
    if (msg.position !== undefined) {
      resolved.position = Point2D.Resolve(msg.position)
    }
    else {
      resolved.position = new Point2D()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.curvature !== undefined) {
      resolved.curvature = msg.curvature;
    }
    else {
      resolved.curvature = 0.0
    }

    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = 0.0
    }

    if (msg.t !== undefined) {
      resolved.t = msg.t;
    }
    else {
      resolved.t = 0.0
    }

    if (msg.point_type !== undefined) {
      resolved.point_type = msg.point_type;
    }
    else {
      resolved.point_type = 0
    }

    return resolved;
    }
};

module.exports = TrajectoryPoint;
