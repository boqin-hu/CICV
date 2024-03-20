// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UltraCell = require('./UltraCell.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class UltrasonicParking {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cell = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cell')) {
        this.cell = initObj.cell
      }
      else {
        this.cell = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UltrasonicParking
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cell]
    // Serialize the length for message field [cell]
    bufferOffset = _serializer.uint32(obj.cell.length, buffer, bufferOffset);
    obj.cell.forEach((val) => {
      bufferOffset = UltraCell.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltrasonicParking
    let len;
    let data = new UltrasonicParking(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cell]
    // Deserialize array length for message field [cell]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cell = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cell[i] = UltraCell.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 16 * object.cell.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/UltrasonicParking';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'decfd193847cbea961ea27cf34064d9c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    UltraCell[] cell
    
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
    MSG: perception_msgs/UltraCell
    int32   id
    float32 direct_dist
    float32 indirect_dist
    int32   status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UltrasonicParking(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cell !== undefined) {
      resolved.cell = new Array(msg.cell.length);
      for (let i = 0; i < resolved.cell.length; ++i) {
        resolved.cell[i] = UltraCell.Resolve(msg.cell[i]);
      }
    }
    else {
      resolved.cell = []
    }

    return resolved;
    }
};

module.exports = UltrasonicParking;
