// Auto-generated. Do not edit!

// (in-package navi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehHeader = require('./VehHeader.js');
let StationPoint = require('./StationPoint.js');

//-----------------------------------------------------------

class NaviTask {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.v_header = null;
      this.station_cntr = null;
      this.nav_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('v_header')) {
        this.v_header = initObj.v_header
      }
      else {
        this.v_header = new VehHeader();
      }
      if (initObj.hasOwnProperty('station_cntr')) {
        this.station_cntr = initObj.station_cntr
      }
      else {
        this.station_cntr = 0;
      }
      if (initObj.hasOwnProperty('nav_pose')) {
        this.nav_pose = initObj.nav_pose
      }
      else {
        this.nav_pose = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NaviTask
    // Serialize message field [v_header]
    bufferOffset = VehHeader.serialize(obj.v_header, buffer, bufferOffset);
    // Serialize message field [station_cntr]
    bufferOffset = _serializer.int32(obj.station_cntr, buffer, bufferOffset);
    // Serialize message field [nav_pose]
    // Serialize the length for message field [nav_pose]
    bufferOffset = _serializer.uint32(obj.nav_pose.length, buffer, bufferOffset);
    obj.nav_pose.forEach((val) => {
      bufferOffset = StationPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NaviTask
    let len;
    let data = new NaviTask(null);
    // Deserialize message field [v_header]
    data.v_header = VehHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [station_cntr]
    data.station_cntr = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [nav_pose]
    // Deserialize array length for message field [nav_pose]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.nav_pose = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.nav_pose[i] = StationPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 18 * object.nav_pose.length;
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navi_msgs/NaviTask';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbeb6d361fd989a080e278524d680bf9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    VehHeader v_header
    int32 station_cntr	
    StationPoint[] nav_pose
    
    ================================================================================
    MSG: navi_msgs/VehHeader
    uint16 veh_id
    TimeStamp time
    ================================================================================
    MSG: navi_msgs/TimeStamp
    uint64 s
    uint64 ns
    ================================================================================
    MSG: navi_msgs/StationPoint
    float64 x
    float64 y
    uint16 station_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NaviTask(null);
    if (msg.v_header !== undefined) {
      resolved.v_header = VehHeader.Resolve(msg.v_header)
    }
    else {
      resolved.v_header = new VehHeader()
    }

    if (msg.station_cntr !== undefined) {
      resolved.station_cntr = msg.station_cntr;
    }
    else {
      resolved.station_cntr = 0
    }

    if (msg.nav_pose !== undefined) {
      resolved.nav_pose = new Array(msg.nav_pose.length);
      for (let i = 0; i < resolved.nav_pose.length; ++i) {
        resolved.nav_pose[i] = StationPoint.Resolve(msg.nav_pose[i]);
      }
    }
    else {
      resolved.nav_pose = []
    }

    return resolved;
    }
};

module.exports = NaviTask;
