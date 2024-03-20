// Auto-generated. Do not edit!

// (in-package imu.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LocalizationControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_lidar_open = null;
    }
    else {
      if (initObj.hasOwnProperty('is_lidar_open')) {
        this.is_lidar_open = initObj.is_lidar_open
      }
      else {
        this.is_lidar_open = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalizationControl
    // Serialize message field [is_lidar_open]
    bufferOffset = _serializer.bool(obj.is_lidar_open, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalizationControl
    let len;
    let data = new LocalizationControl(null);
    // Deserialize message field [is_lidar_open]
    data.is_lidar_open = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imu/LocalizationControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5bdebbf6b9fb5d72cc29e9f5a1240ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_lidar_open
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalizationControl(null);
    if (msg.is_lidar_open !== undefined) {
      resolved.is_lidar_open = msg.is_lidar_open;
    }
    else {
      resolved.is_lidar_open = false
    }

    return resolved;
    }
};

module.exports = LocalizationControl;
