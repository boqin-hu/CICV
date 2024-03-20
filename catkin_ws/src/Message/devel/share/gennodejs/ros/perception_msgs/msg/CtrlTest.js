// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CtrlTest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.accPedal = null;
      this.braPedal = null;
      this.strAngle = null;
      this.strAnglespd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('accPedal')) {
        this.accPedal = initObj.accPedal
      }
      else {
        this.accPedal = 0.0;
      }
      if (initObj.hasOwnProperty('braPedal')) {
        this.braPedal = initObj.braPedal
      }
      else {
        this.braPedal = 0.0;
      }
      if (initObj.hasOwnProperty('strAngle')) {
        this.strAngle = initObj.strAngle
      }
      else {
        this.strAngle = 0.0;
      }
      if (initObj.hasOwnProperty('strAnglespd')) {
        this.strAnglespd = initObj.strAnglespd
      }
      else {
        this.strAnglespd = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CtrlTest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [accPedal]
    bufferOffset = _serializer.float64(obj.accPedal, buffer, bufferOffset);
    // Serialize message field [braPedal]
    bufferOffset = _serializer.float64(obj.braPedal, buffer, bufferOffset);
    // Serialize message field [strAngle]
    bufferOffset = _serializer.float64(obj.strAngle, buffer, bufferOffset);
    // Serialize message field [strAnglespd]
    bufferOffset = _serializer.float64(obj.strAnglespd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CtrlTest
    let len;
    let data = new CtrlTest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [accPedal]
    data.accPedal = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [braPedal]
    data.braPedal = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [strAngle]
    data.strAngle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [strAnglespd]
    data.strAnglespd = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/CtrlTest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1c1085caf4973c0b458fcd0b971fc2d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 accPedal            # 加速踏板开度
    float64 braPedal            # 制动踏板开度
    float64 strAngle            # 方向盘转角
    float64 strAnglespd         # 方向盘转角变化率
    #float64 strAnglelimit        # 方向盘转角限制
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CtrlTest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.accPedal !== undefined) {
      resolved.accPedal = msg.accPedal;
    }
    else {
      resolved.accPedal = 0.0
    }

    if (msg.braPedal !== undefined) {
      resolved.braPedal = msg.braPedal;
    }
    else {
      resolved.braPedal = 0.0
    }

    if (msg.strAngle !== undefined) {
      resolved.strAngle = msg.strAngle;
    }
    else {
      resolved.strAngle = 0.0
    }

    if (msg.strAnglespd !== undefined) {
      resolved.strAnglespd = msg.strAnglespd;
    }
    else {
      resolved.strAnglespd = 0.0
    }

    return resolved;
    }
};

module.exports = CtrlTest;
