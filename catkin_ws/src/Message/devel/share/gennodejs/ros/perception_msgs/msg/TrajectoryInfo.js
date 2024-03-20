// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrajectoryPoint = require('./TrajectoryPoint.js');

//-----------------------------------------------------------

class TrajectoryInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path_id = null;
      this.total_path_length = null;
      this.total_path_time = null;
      this.decision_type = null;
      this.light_type = null;
      this.lane_ids = null;
      this.trajectorypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('path_id')) {
        this.path_id = initObj.path_id
      }
      else {
        this.path_id = 0;
      }
      if (initObj.hasOwnProperty('total_path_length')) {
        this.total_path_length = initObj.total_path_length
      }
      else {
        this.total_path_length = 0.0;
      }
      if (initObj.hasOwnProperty('total_path_time')) {
        this.total_path_time = initObj.total_path_time
      }
      else {
        this.total_path_time = 0.0;
      }
      if (initObj.hasOwnProperty('decision_type')) {
        this.decision_type = initObj.decision_type
      }
      else {
        this.decision_type = 0;
      }
      if (initObj.hasOwnProperty('light_type')) {
        this.light_type = initObj.light_type
      }
      else {
        this.light_type = 0;
      }
      if (initObj.hasOwnProperty('lane_ids')) {
        this.lane_ids = initObj.lane_ids
      }
      else {
        this.lane_ids = [];
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
    // Serializes a message object of type TrajectoryInfo
    // Serialize message field [path_id]
    bufferOffset = _serializer.int32(obj.path_id, buffer, bufferOffset);
    // Serialize message field [total_path_length]
    bufferOffset = _serializer.float32(obj.total_path_length, buffer, bufferOffset);
    // Serialize message field [total_path_time]
    bufferOffset = _serializer.float32(obj.total_path_time, buffer, bufferOffset);
    // Serialize message field [decision_type]
    bufferOffset = _serializer.int8(obj.decision_type, buffer, bufferOffset);
    // Serialize message field [light_type]
    bufferOffset = _serializer.int8(obj.light_type, buffer, bufferOffset);
    // Serialize message field [lane_ids]
    bufferOffset = _arraySerializer.string(obj.lane_ids, buffer, bufferOffset, null);
    // Serialize message field [trajectorypoints]
    // Serialize the length for message field [trajectorypoints]
    bufferOffset = _serializer.uint32(obj.trajectorypoints.length, buffer, bufferOffset);
    obj.trajectorypoints.forEach((val) => {
      bufferOffset = TrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryInfo
    let len;
    let data = new TrajectoryInfo(null);
    // Deserialize message field [path_id]
    data.path_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [total_path_length]
    data.total_path_length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [total_path_time]
    data.total_path_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [decision_type]
    data.decision_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [light_type]
    data.light_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [lane_ids]
    data.lane_ids = _arrayDeserializer.string(buffer, bufferOffset, null)
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
    object.lane_ids.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 37 * object.trajectorypoints.length;
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/TrajectoryInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7d900a70debd0d52467ed4c06e4dc57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 path_id
    float32 total_path_length
    float32 total_path_time
    int8 decision_type
    int8 light_type
    string[] lane_ids
    TrajectoryPoint[] trajectorypoints
    
    ================================================================================
    MSG: perception_msgs/TrajectoryPoint
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
    const resolved = new TrajectoryInfo(null);
    if (msg.path_id !== undefined) {
      resolved.path_id = msg.path_id;
    }
    else {
      resolved.path_id = 0
    }

    if (msg.total_path_length !== undefined) {
      resolved.total_path_length = msg.total_path_length;
    }
    else {
      resolved.total_path_length = 0.0
    }

    if (msg.total_path_time !== undefined) {
      resolved.total_path_time = msg.total_path_time;
    }
    else {
      resolved.total_path_time = 0.0
    }

    if (msg.decision_type !== undefined) {
      resolved.decision_type = msg.decision_type;
    }
    else {
      resolved.decision_type = 0
    }

    if (msg.light_type !== undefined) {
      resolved.light_type = msg.light_type;
    }
    else {
      resolved.light_type = 0
    }

    if (msg.lane_ids !== undefined) {
      resolved.lane_ids = msg.lane_ids;
    }
    else {
      resolved.lane_ids = []
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

module.exports = TrajectoryInfo;
