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

class SingleTrafficLight {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.color = null;
      this.id = null;
      this.confidence = null;
      this.tracking_time = null;
    }
    else {
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('tracking_time')) {
        this.tracking_time = initObj.tracking_time
      }
      else {
        this.tracking_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SingleTrafficLight
    // Serialize message field [color]
    bufferOffset = _serializer.int8(obj.color, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [tracking_time]
    bufferOffset = _serializer.float32(obj.tracking_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SingleTrafficLight
    let len;
    let data = new SingleTrafficLight(null);
    // Deserialize message field [color]
    data.color = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tracking_time]
    data.tracking_time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.id);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/SingleTrafficLight';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '881071b86c0a28ec94db50b4995ef6c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 color #UNKNOWN_COLOR = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;
    string id # Traffic light string-ID in the map data.
    float32 confidence  #How confidence about the detected results, between 0 and 1.
    float32 tracking_time  # Duration of the traffic light since detected.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SingleTrafficLight(null);
    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.tracking_time !== undefined) {
      resolved.tracking_time = msg.tracking_time;
    }
    else {
      resolved.tracking_time = 0.0
    }

    return resolved;
    }
};

module.exports = SingleTrafficLight;
