// Auto-generated. Do not edit!

// (in-package navi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WifiInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wifi_name = null;
      this.level = null;
    }
    else {
      if (initObj.hasOwnProperty('wifi_name')) {
        this.wifi_name = initObj.wifi_name
      }
      else {
        this.wifi_name = '';
      }
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WifiInfo
    // Serialize message field [wifi_name]
    bufferOffset = _serializer.string(obj.wifi_name, buffer, bufferOffset);
    // Serialize message field [level]
    bufferOffset = _serializer.int32(obj.level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WifiInfo
    let len;
    let data = new WifiInfo(null);
    // Deserialize message field [wifi_name]
    data.wifi_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [level]
    data.level = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.wifi_name);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navi_msgs/WifiInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2208983a79b60f616ffc67f0aae922b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string  wifi_name
    int32  level
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WifiInfo(null);
    if (msg.wifi_name !== undefined) {
      resolved.wifi_name = msg.wifi_name;
    }
    else {
      resolved.wifi_name = ''
    }

    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = 0
    }

    return resolved;
    }
};

module.exports = WifiInfo;
