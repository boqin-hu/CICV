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

class Perceptionobject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.SimTim = null;
      this.ID = null;
      this.x = null;
      this.y = null;
      this.v_x = null;
      this.v_y = null;
      this.xg = null;
      this.yg = null;
      this.v_xg = null;
      this.v_yg = null;
      this.heading = null;
      this.length = null;
      this.width = null;
      this.height = null;
      this.type = null;
      this.xrel = null;
      this.yrel = null;
      this.v_xrel = null;
      this.v_yrel = null;
    }
    else {
      if (initObj.hasOwnProperty('SimTim')) {
        this.SimTim = initObj.SimTim
      }
      else {
        this.SimTim = 0.0;
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('v_x')) {
        this.v_x = initObj.v_x
      }
      else {
        this.v_x = 0.0;
      }
      if (initObj.hasOwnProperty('v_y')) {
        this.v_y = initObj.v_y
      }
      else {
        this.v_y = 0.0;
      }
      if (initObj.hasOwnProperty('xg')) {
        this.xg = initObj.xg
      }
      else {
        this.xg = 0.0;
      }
      if (initObj.hasOwnProperty('yg')) {
        this.yg = initObj.yg
      }
      else {
        this.yg = 0.0;
      }
      if (initObj.hasOwnProperty('v_xg')) {
        this.v_xg = initObj.v_xg
      }
      else {
        this.v_xg = 0.0;
      }
      if (initObj.hasOwnProperty('v_yg')) {
        this.v_yg = initObj.v_yg
      }
      else {
        this.v_yg = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('xrel')) {
        this.xrel = initObj.xrel
      }
      else {
        this.xrel = 0.0;
      }
      if (initObj.hasOwnProperty('yrel')) {
        this.yrel = initObj.yrel
      }
      else {
        this.yrel = 0.0;
      }
      if (initObj.hasOwnProperty('v_xrel')) {
        this.v_xrel = initObj.v_xrel
      }
      else {
        this.v_xrel = 0.0;
      }
      if (initObj.hasOwnProperty('v_yrel')) {
        this.v_yrel = initObj.v_yrel
      }
      else {
        this.v_yrel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Perceptionobject
    // Serialize message field [SimTim]
    bufferOffset = _serializer.float64(obj.SimTim, buffer, bufferOffset);
    // Serialize message field [ID]
    bufferOffset = _serializer.uint32(obj.ID, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [v_x]
    bufferOffset = _serializer.float64(obj.v_x, buffer, bufferOffset);
    // Serialize message field [v_y]
    bufferOffset = _serializer.float64(obj.v_y, buffer, bufferOffset);
    // Serialize message field [xg]
    bufferOffset = _serializer.float64(obj.xg, buffer, bufferOffset);
    // Serialize message field [yg]
    bufferOffset = _serializer.float64(obj.yg, buffer, bufferOffset);
    // Serialize message field [v_xg]
    bufferOffset = _serializer.float64(obj.v_xg, buffer, bufferOffset);
    // Serialize message field [v_yg]
    bufferOffset = _serializer.float64(obj.v_yg, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float32(obj.heading, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [xrel]
    bufferOffset = _serializer.float64(obj.xrel, buffer, bufferOffset);
    // Serialize message field [yrel]
    bufferOffset = _serializer.float64(obj.yrel, buffer, bufferOffset);
    // Serialize message field [v_xrel]
    bufferOffset = _serializer.float64(obj.v_xrel, buffer, bufferOffset);
    // Serialize message field [v_yrel]
    bufferOffset = _serializer.float64(obj.v_yrel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Perceptionobject
    let len;
    let data = new Perceptionobject(null);
    // Deserialize message field [SimTim]
    data.SimTim = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ID]
    data.ID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_x]
    data.v_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_y]
    data.v_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xg]
    data.xg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yg]
    data.yg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_xg]
    data.v_xg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_yg]
    data.v_yg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [xrel]
    data.xrel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yrel]
    data.yrel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_xrel]
    data.v_xrel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_yrel]
    data.v_yrel = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 137;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/Perceptionobject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e487cfd175ff6d18074f7b91bb10dc6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 SimTim
    uint32 ID 
    float64 x
    float64 y
    float64 v_x
    float64 v_y
    float64 xg	
    float64 yg
    float64 v_xg
    float64 v_yg
    float32 heading	
    float64 length	
    float64 width
    float64 height
    uint8 type
    float64 xrel	
    float64 yrel
    float64 v_xrel
    float64 v_yrel
    
    
    
    #ros消息时间戳转换成double类型的时间，单位:s	
    #x坐标值 FLU车体坐标系,单位:m	
    #y坐标值 FLU车体坐标系,单位:m	
    #x方向绝对距离，单位:m	
    #y方向绝对距离，单位:m	
    #单位:度	
    #单位:m	
    #单位:m	
    #"类型(# 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck)（0-未知,1-行人，
    #2-叉车，3-物料箱，4-货架，5-AMR）"	
    #x方向绝对速度，单位:m/s	
    #y方向绝对速度，单位:m/s	
    #x方向相对速度，单位:m/s	
    #y方向相对距离，单位:m/s	
    #被激光雷达检测到的次数，乘以周期（100ms）是检测到的时间	
    #在utm坐标系下的x坐标	
    #在utm坐标系下的y坐标	
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Perceptionobject(null);
    if (msg.SimTim !== undefined) {
      resolved.SimTim = msg.SimTim;
    }
    else {
      resolved.SimTim = 0.0
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.v_x !== undefined) {
      resolved.v_x = msg.v_x;
    }
    else {
      resolved.v_x = 0.0
    }

    if (msg.v_y !== undefined) {
      resolved.v_y = msg.v_y;
    }
    else {
      resolved.v_y = 0.0
    }

    if (msg.xg !== undefined) {
      resolved.xg = msg.xg;
    }
    else {
      resolved.xg = 0.0
    }

    if (msg.yg !== undefined) {
      resolved.yg = msg.yg;
    }
    else {
      resolved.yg = 0.0
    }

    if (msg.v_xg !== undefined) {
      resolved.v_xg = msg.v_xg;
    }
    else {
      resolved.v_xg = 0.0
    }

    if (msg.v_yg !== undefined) {
      resolved.v_yg = msg.v_yg;
    }
    else {
      resolved.v_yg = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.xrel !== undefined) {
      resolved.xrel = msg.xrel;
    }
    else {
      resolved.xrel = 0.0
    }

    if (msg.yrel !== undefined) {
      resolved.yrel = msg.yrel;
    }
    else {
      resolved.yrel = 0.0
    }

    if (msg.v_xrel !== undefined) {
      resolved.v_xrel = msg.v_xrel;
    }
    else {
      resolved.v_xrel = 0.0
    }

    if (msg.v_yrel !== undefined) {
      resolved.v_yrel = msg.v_yrel;
    }
    else {
      resolved.v_yrel = 0.0
    }

    return resolved;
    }
};

module.exports = Perceptionobject;
