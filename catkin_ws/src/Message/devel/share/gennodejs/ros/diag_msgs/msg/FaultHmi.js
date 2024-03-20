// Auto-generated. Do not edit!

// (in-package diag_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FaultHmi {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_sec = null;
      this.event_id = null;
      this.interactive = null;
      this.error_code = null;
      this.msg = null;
      this.event_type = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_sec')) {
        this.timestamp_sec = initObj.timestamp_sec
      }
      else {
        this.timestamp_sec = 0.0;
      }
      if (initObj.hasOwnProperty('event_id')) {
        this.event_id = initObj.event_id
      }
      else {
        this.event_id = 0;
      }
      if (initObj.hasOwnProperty('interactive')) {
        this.interactive = initObj.interactive
      }
      else {
        this.interactive = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
      if (initObj.hasOwnProperty('event_type')) {
        this.event_type = initObj.event_type
      }
      else {
        this.event_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FaultHmi
    // Serialize message field [timestamp_sec]
    bufferOffset = _serializer.float64(obj.timestamp_sec, buffer, bufferOffset);
    // Serialize message field [event_id]
    bufferOffset = _serializer.int32(obj.event_id, buffer, bufferOffset);
    // Serialize message field [interactive]
    bufferOffset = _serializer.int32(obj.interactive, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    // Serialize message field [event_type]
    bufferOffset = _serializer.int32(obj.event_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FaultHmi
    let len;
    let data = new FaultHmi(null);
    // Deserialize message field [timestamp_sec]
    data.timestamp_sec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [event_id]
    data.event_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [interactive]
    data.interactive = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [event_type]
    data.event_type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.msg);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'diag_msgs/FaultHmi';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '30009e522ed486022cfeb6ce5fc06580';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64   timestamp_sec
    int32     event_id
    int32     interactive
    int32     error_code
    string    msg
    int32     event_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FaultHmi(null);
    if (msg.timestamp_sec !== undefined) {
      resolved.timestamp_sec = msg.timestamp_sec;
    }
    else {
      resolved.timestamp_sec = 0.0
    }

    if (msg.event_id !== undefined) {
      resolved.event_id = msg.event_id;
    }
    else {
      resolved.event_id = 0
    }

    if (msg.interactive !== undefined) {
      resolved.interactive = msg.interactive;
    }
    else {
      resolved.interactive = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    if (msg.event_type !== undefined) {
      resolved.event_type = msg.event_type;
    }
    else {
      resolved.event_type = 0
    }

    return resolved;
    }
};

module.exports = FaultHmi;
