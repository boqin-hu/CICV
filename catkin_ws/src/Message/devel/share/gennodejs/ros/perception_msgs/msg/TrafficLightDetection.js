// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SingleTrafficLight = require('./SingleTrafficLight.js');
let common_msgs = _finder('common_msgs');

//-----------------------------------------------------------

class TrafficLightDetection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.traffic_light = null;
      this.contain_lights = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new common_msgs.msg.Header();
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
    // Serialize message field [header]
    bufferOffset = common_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
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
    // Deserialize message field [header]
    data.header = common_msgs.msg.Header.deserialize(buffer, bufferOffset);
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
    length += common_msgs.msg.Header.getMessageSize(object.header);
    object.traffic_light.forEach((val) => {
      length += SingleTrafficLight.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/TrafficLightDetection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12eadb1ef200a8dc92cf5e397b431f70';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    common_msgs/Header header
    SingleTrafficLight[] traffic_light
    bool contain_lights
    ================================================================================
    MSG: common_msgs/Header
    int32 sequence_num
    float64 time_stamp
    string 	module_name
    string 	version
    FaultVec 	fault_vec
    TimeStatistics 	time_statistics
    ================================================================================
    MSG: common_msgs/FaultVec
    FaultInfo[] 	info_vec
    int32 	module_fault_level
    
    ================================================================================
    MSG: common_msgs/FaultInfo
    float64 	timestamp_sec
    string 	module_name
    string 	version
    int32 	error_code
    string 	msg
    int8 	fault_level
    int8 	fault_type
    ================================================================================
    MSG: common_msgs/TimeStatistics
    TimeStatus[] 	dev_time_status_msg
    float64 	sending_timestamp
    ================================================================================
    MSG: common_msgs/TimeStatus
    float64 	dtime
    string 	source_node_name
    string 	destination_node_name
    ================================================================================
    MSG: perception_msgs/SingleTrafficLight
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
    const resolved = new TrafficLightDetection(null);
    if (msg.header !== undefined) {
      resolved.header = common_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new common_msgs.msg.Header()
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
