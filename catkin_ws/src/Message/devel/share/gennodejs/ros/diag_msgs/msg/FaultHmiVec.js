// Auto-generated. Do not edit!

// (in-package diag_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FaultHmi = require('./FaultHmi.js');

//-----------------------------------------------------------

class FaultHmiVec {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hmi_vec = null;
    }
    else {
      if (initObj.hasOwnProperty('hmi_vec')) {
        this.hmi_vec = initObj.hmi_vec
      }
      else {
        this.hmi_vec = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FaultHmiVec
    // Serialize message field [hmi_vec]
    // Serialize the length for message field [hmi_vec]
    bufferOffset = _serializer.uint32(obj.hmi_vec.length, buffer, bufferOffset);
    obj.hmi_vec.forEach((val) => {
      bufferOffset = FaultHmi.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FaultHmiVec
    let len;
    let data = new FaultHmiVec(null);
    // Deserialize message field [hmi_vec]
    // Deserialize array length for message field [hmi_vec]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.hmi_vec = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.hmi_vec[i] = FaultHmi.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.hmi_vec.forEach((val) => {
      length += FaultHmi.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'diag_msgs/FaultHmiVec';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da59b13fe1c36e593adbfb404b2845a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    FaultHmi[] 	hmi_vec
    
    ================================================================================
    MSG: diag_msgs/FaultHmi
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
    const resolved = new FaultHmiVec(null);
    if (msg.hmi_vec !== undefined) {
      resolved.hmi_vec = new Array(msg.hmi_vec.length);
      for (let i = 0; i < resolved.hmi_vec.length; ++i) {
        resolved.hmi_vec[i] = FaultHmi.Resolve(msg.hmi_vec[i]);
      }
    }
    else {
      resolved.hmi_vec = []
    }

    return resolved;
    }
};

module.exports = FaultHmiVec;
