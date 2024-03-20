// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SingleTrafficLight = require('./SingleTrafficLight.js');

//-----------------------------------------------------------

class TrafficLightDetection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.SimTim = null;
      this.num = null;
      this.traffic_light = null;
      this.contain_lights = null;
    }
    else {
      if (initObj.hasOwnProperty('SimTim')) {
        this.SimTim = initObj.SimTim
      }
      else {
        this.SimTim = 0.0;
      }
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
      if (initObj.hasOwnProperty('traffic_light')) {
        this.traffic_light = initObj.traffic_light
      }
      else {
        this.traffic_light = [];
      }
      if (initObj.hasOwnProperty('contain_lights')) {
        this.contain_lights = initObj.contain_lights
      }
      else {
        this.contain_lights = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficLightDetection
    // Serialize message field [SimTim]
    bufferOffset = _serializer.float64(obj.SimTim, buffer, bufferOffset);
    // Serialize message field [num]
    bufferOffset = _serializer.int32(obj.num, buffer, bufferOffset);
    // Serialize message field [traffic_light]
    // Serialize the length for message field [traffic_light]
    bufferOffset = _serializer.uint32(obj.traffic_light.length, buffer, bufferOffset);
    obj.traffic_light.forEach((val) => {
      bufferOffset = SingleTrafficLight.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [contain_lights]
    bufferOffset = _serializer.bool(obj.contain_lights, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightDetection
    let len;
    let data = new TrafficLightDetection(null);
    // Deserialize message field [SimTim]
    data.SimTim = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [num]
    data.num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [traffic_light]
    // Deserialize array length for message field [traffic_light]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_light = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_light[i] = SingleTrafficLight.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [contain_lights]
    data.contain_lights = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 13 * object.traffic_light.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/TrafficLightDetection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca3a73acb5dcd3f6d21017a5cd0a7b58';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #std_msgs/Header  header
    float64 SimTim
    int32 num 
    SingleTrafficLight[] traffic_light
    bool contain_lights
    
    ================================================================================
    MSG: common_msgs/SingleTrafficLight
    int8 color #UNKNOWN_COLOR = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;
    int32 id # Traffic light string-ID in the map data.
    float32 confidence  #How confidence about the detected results, between 0 and 1.
    float32 tracking_time  # Duration of the traffic light since detected.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLightDetection(null);
    if (msg.SimTim !== undefined) {
      resolved.SimTim = msg.SimTim;
    }
    else {
      resolved.SimTim = 0.0
    }

    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    if (msg.traffic_light !== undefined) {
      resolved.traffic_light = new Array(msg.traffic_light.length);
      for (let i = 0; i < resolved.traffic_light.length; ++i) {
        resolved.traffic_light[i] = SingleTrafficLight.Resolve(msg.traffic_light[i]);
      }
    }
    else {
      resolved.traffic_light = []
    }

    if (msg.contain_lights !== undefined) {
      resolved.contain_lights = msg.contain_lights;
    }
    else {
      resolved.contain_lights = false
    }

    return resolved;
    }
};

module.exports = TrafficLightDetection;
