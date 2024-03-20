// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrajectoryInfo = require('./TrajectoryInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Trajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.frame_number = null;
      this.is_valid_frame = null;
      this.trajectoryinfo = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('frame_number')) {
        this.frame_number = initObj.frame_number
      }
      else {
        this.frame_number = 0;
      }
      if (initObj.hasOwnProperty('is_valid_frame')) {
        this.is_valid_frame = initObj.is_valid_frame
      }
      else {
        this.is_valid_frame = false;
      }
      if (initObj.hasOwnProperty('trajectoryinfo')) {
        this.trajectoryinfo = initObj.trajectoryinfo
      }
      else {
        this.trajectoryinfo = new TrajectoryInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Trajectory
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [frame_number]
    bufferOffset = _serializer.uint64(obj.frame_number, buffer, bufferOffset);
    // Serialize message field [is_valid_frame]
    bufferOffset = _serializer.bool(obj.is_valid_frame, buffer, bufferOffset);
    // Serialize message field [trajectoryinfo]
    bufferOffset = TrajectoryInfo.serialize(obj.trajectoryinfo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Trajectory
    let len;
    let data = new Trajectory(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [frame_number]
    data.frame_number = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [is_valid_frame]
    data.is_valid_frame = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [trajectoryinfo]
    data.trajectoryinfo = TrajectoryInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += TrajectoryInfo.getMessageSize(object.trajectoryinfo);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/Trajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '132aa4b0598aef32b1def9d8d8e57cbe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint64 frame_number
    bool is_valid_frame
    TrajectoryInfo trajectoryinfo
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: perception_msgs/TrajectoryInfo
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
    const resolved = new Trajectory(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.frame_number !== undefined) {
      resolved.frame_number = msg.frame_number;
    }
    else {
      resolved.frame_number = 0
    }

    if (msg.is_valid_frame !== undefined) {
      resolved.is_valid_frame = msg.is_valid_frame;
    }
    else {
      resolved.is_valid_frame = false
    }

    if (msg.trajectoryinfo !== undefined) {
      resolved.trajectoryinfo = TrajectoryInfo.Resolve(msg.trajectoryinfo)
    }
    else {
      resolved.trajectoryinfo = new TrajectoryInfo()
    }

    return resolved;
    }
};

module.exports = Trajectory;
