// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TimeStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dtime = null;
      this.source_node_name = null;
      this.destination_node_name = null;
    }
    else {
      if (initObj.hasOwnProperty('dtime')) {
        this.dtime = initObj.dtime
      }
      else {
        this.dtime = 0.0;
      }
      if (initObj.hasOwnProperty('source_node_name')) {
        this.source_node_name = initObj.source_node_name
      }
      else {
        this.source_node_name = '';
      }
      if (initObj.hasOwnProperty('destination_node_name')) {
        this.destination_node_name = initObj.destination_node_name
      }
      else {
        this.destination_node_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimeStatus
    // Serialize message field [dtime]
    bufferOffset = _serializer.float64(obj.dtime, buffer, bufferOffset);
    // Serialize message field [source_node_name]
    bufferOffset = _serializer.string(obj.source_node_name, buffer, bufferOffset);
    // Serialize message field [destination_node_name]
    bufferOffset = _serializer.string(obj.destination_node_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimeStatus
    let len;
    let data = new TimeStatus(null);
    // Deserialize message field [dtime]
    data.dtime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [source_node_name]
    data.source_node_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [destination_node_name]
    data.destination_node_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.source_node_name);
    length += _getByteLength(object.destination_node_name);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/TimeStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '781f191435805db497e08aa1e68d3eff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 	dtime
    string 	source_node_name
    string 	destination_node_name
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimeStatus(null);
    if (msg.dtime !== undefined) {
      resolved.dtime = msg.dtime;
    }
    else {
      resolved.dtime = 0.0
    }

    if (msg.source_node_name !== undefined) {
      resolved.source_node_name = msg.source_node_name;
    }
    else {
      resolved.source_node_name = ''
    }

    if (msg.destination_node_name !== undefined) {
      resolved.destination_node_name = msg.destination_node_name;
    }
    else {
      resolved.destination_node_name = ''
    }

    return resolved;
    }
};

module.exports = TimeStatus;
