// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class UltraCell {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.direct_dist = null;
      this.indirect_dist = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('direct_dist')) {
        this.direct_dist = initObj.direct_dist
      }
      else {
        this.direct_dist = 0.0;
      }
      if (initObj.hasOwnProperty('indirect_dist')) {
        this.indirect_dist = initObj.indirect_dist
      }
      else {
        this.indirect_dist = 0.0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UltraCell
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [direct_dist]
    bufferOffset = _serializer.float32(obj.direct_dist, buffer, bufferOffset);
    // Serialize message field [indirect_dist]
    bufferOffset = _serializer.float32(obj.indirect_dist, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltraCell
    let len;
    let data = new UltraCell(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [direct_dist]
    data.direct_dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [indirect_dist]
    data.indirect_dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/UltraCell';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67a3d6d891c19fe871cf9831066c666a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new UltraCell(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.direct_dist !== undefined) {
      resolved.direct_dist = msg.direct_dist;
    }
    else {
      resolved.direct_dist = 0.0
    }

    if (msg.indirect_dist !== undefined) {
      resolved.indirect_dist = msg.indirect_dist;
    }
    else {
      resolved.indirect_dist = 0.0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = UltraCell;
