// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CICV_Location {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.SimTim = null;
      this.Position_x = null;
      this.Position_y = null;
      this.Velocity_x = null;
      this.Velocity_y = null;
      this.Accel_x = null;
      this.Accel_y = null;
      this.Yaw = null;
      this.Angular_velocity_z = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('SimTim')) {
        this.SimTim = initObj.SimTim
      }
      else {
        this.SimTim = 0.0;
      }
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
      if (initObj.hasOwnProperty('Velocity_x')) {
        this.Velocity_x = initObj.Velocity_x
      }
      else {
        this.Velocity_x = 0.0;
      }
      if (initObj.hasOwnProperty('Velocity_y')) {
        this.Velocity_y = initObj.Velocity_y
      }
      else {
        this.Velocity_y = 0.0;
      }
      if (initObj.hasOwnProperty('Accel_x')) {
        this.Accel_x = initObj.Accel_x
      }
      else {
        this.Accel_x = 0.0;
      }
      if (initObj.hasOwnProperty('Accel_y')) {
        this.Accel_y = initObj.Accel_y
      }
      else {
        this.Accel_y = 0.0;
      }
      if (initObj.hasOwnProperty('Yaw')) {
        this.Yaw = initObj.Yaw
      }
      else {
        this.Yaw = 0.0;
      }
      if (initObj.hasOwnProperty('Angular_velocity_z')) {
        this.Angular_velocity_z = initObj.Angular_velocity_z
      }
      else {
        this.Angular_velocity_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CICV_Location
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [SimTim]
    bufferOffset = _serializer.float64(obj.SimTim, buffer, bufferOffset);
    // Serialize message field [Position_x]
    bufferOffset = _serializer.float64(obj.Position_x, buffer, bufferOffset);
    // Serialize message field [Position_y]
    bufferOffset = _serializer.float64(obj.Position_y, buffer, bufferOffset);
    // Serialize message field [Velocity_x]
    bufferOffset = _serializer.float64(obj.Velocity_x, buffer, bufferOffset);
    // Serialize message field [Velocity_y]
    bufferOffset = _serializer.float64(obj.Velocity_y, buffer, bufferOffset);
    // Serialize message field [Accel_x]
    bufferOffset = _serializer.float64(obj.Accel_x, buffer, bufferOffset);
    // Serialize message field [Accel_y]
    bufferOffset = _serializer.float64(obj.Accel_y, buffer, bufferOffset);
    // Serialize message field [Yaw]
    bufferOffset = _serializer.float64(obj.Yaw, buffer, bufferOffset);
    // Serialize message field [Angular_velocity_z]
    bufferOffset = _serializer.float64(obj.Angular_velocity_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CICV_Location
    let len;
    let data = new CICV_Location(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [SimTim]
    data.SimTim = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Position_x]
    data.Position_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Position_y]
    data.Position_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Velocity_x]
    data.Velocity_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Velocity_y]
    data.Velocity_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Accel_x]
    data.Accel_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Accel_y]
    data.Accel_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Yaw]
    data.Yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Angular_velocity_z]
    data.Angular_velocity_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/CICV_Location';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ebf8c055c1ba72efc55306e155279a03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header  header
    float64 SimTim
    float64 Position_x   #本车X向坐标
    float64 Position_y   #本车Y向坐标
    float64 Velocity_x   #本车X向车速
    float64 Velocity_y   #本车Y向车速
    float64 Accel_x      #本车纵向加速度
    float64 Accel_y      #本车横向加速度
    float64 Yaw          #本车航向角
    float64 Angular_velocity_z    #本车沿Z轴角速度
    
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
    const resolved = new CICV_Location(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.SimTim !== undefined) {
      resolved.SimTim = msg.SimTim;
    }
    else {
      resolved.SimTim = 0.0
    }

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

    if (msg.Velocity_x !== undefined) {
      resolved.Velocity_x = msg.Velocity_x;
    }
    else {
      resolved.Velocity_x = 0.0
    }

    if (msg.Velocity_y !== undefined) {
      resolved.Velocity_y = msg.Velocity_y;
    }
    else {
      resolved.Velocity_y = 0.0
    }

    if (msg.Accel_x !== undefined) {
      resolved.Accel_x = msg.Accel_x;
    }
    else {
      resolved.Accel_x = 0.0
    }

    if (msg.Accel_y !== undefined) {
      resolved.Accel_y = msg.Accel_y;
    }
    else {
      resolved.Accel_y = 0.0
    }

    if (msg.Yaw !== undefined) {
      resolved.Yaw = msg.Yaw;
    }
    else {
      resolved.Yaw = 0.0
    }

    if (msg.Angular_velocity_z !== undefined) {
      resolved.Angular_velocity_z = msg.Angular_velocity_z;
    }
    else {
      resolved.Angular_velocity_z = 0.0
    }

    return resolved;
    }
};

module.exports = CICV_Location;
