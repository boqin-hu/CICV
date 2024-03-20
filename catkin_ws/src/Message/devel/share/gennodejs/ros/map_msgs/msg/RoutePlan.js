// Auto-generated. Do not edit!

// (in-package map_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MissionPoint = require('./MissionPoint.js');
let common_msgs = _finder('common_msgs');

//-----------------------------------------------------------

class RoutePlan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.result = null;
      this.point = null;
      this.global_road = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new common_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new MissionPoint();
      }
      if (initObj.hasOwnProperty('global_road')) {
        this.global_road = initObj.global_road
      }
      else {
        this.global_road = [];
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoutePlan
    // Serialize message field [header]
    bufferOffset = common_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [point]
    bufferOffset = MissionPoint.serialize(obj.point, buffer, bufferOffset);
    // Serialize message field [global_road]
    bufferOffset = _arraySerializer.string(obj.global_road, buffer, bufferOffset, null);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoutePlan
    let len;
    let data = new RoutePlan(null);
    // Deserialize message field [header]
    data.header = common_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [point]
    data.point = MissionPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [global_road]
    data.global_road = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += common_msgs.msg.Header.getMessageSize(object.header);
    object.global_road.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'map_msgs/RoutePlan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1649acf7166b841933455501b38710c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    common_msgs/Header header
    int32 id
    int32 result
    MissionPoint point
    string[] global_road
    float64 length
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
    MSG: map_msgs/MissionPoint
    float64 xg
    float64 yg
    float64 heading
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoutePlan(null);
    if (msg.header !== undefined) {
      resolved.header = common_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new common_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.point !== undefined) {
      resolved.point = MissionPoint.Resolve(msg.point)
    }
    else {
      resolved.point = new MissionPoint()
    }

    if (msg.global_road !== undefined) {
      resolved.global_road = msg.global_road;
    }
    else {
      resolved.global_road = []
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    return resolved;
    }
};

module.exports = RoutePlan;
