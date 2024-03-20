// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Perceptionobject = require('./Perceptionobject.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Perceptionobjects {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.num = null;
      this.Perceptionobjects = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
      if (initObj.hasOwnProperty('Perceptionobjects')) {
        this.Perceptionobjects = initObj.Perceptionobjects
      }
      else {
        this.Perceptionobjects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Perceptionobjects
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [num]
    bufferOffset = _serializer.int32(obj.num, buffer, bufferOffset);
    // Serialize message field [Perceptionobjects]
    // Serialize the length for message field [Perceptionobjects]
    bufferOffset = _serializer.uint32(obj.Perceptionobjects.length, buffer, bufferOffset);
    obj.Perceptionobjects.forEach((val) => {
      bufferOffset = Perceptionobject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Perceptionobjects
    let len;
    let data = new Perceptionobjects(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [num]
    data.num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Perceptionobjects]
    // Deserialize array length for message field [Perceptionobjects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Perceptionobjects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Perceptionobjects[i] = Perceptionobject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 137 * object.Perceptionobjects.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/Perceptionobjects';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f73590366c45733461115f9c5d54e381';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header  header
    int32 num                                #目标数量
    Perceptionobject[] Perceptionobjects     #目标描述
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: common_msgs/Perceptionobject
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
    const resolved = new Perceptionobjects(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    if (msg.Perceptionobjects !== undefined) {
      resolved.Perceptionobjects = new Array(msg.Perceptionobjects.length);
      for (let i = 0; i < resolved.Perceptionobjects.length; ++i) {
        resolved.Perceptionobjects[i] = Perceptionobject.Resolve(msg.Perceptionobjects[i]);
      }
    }
    else {
      resolved.Perceptionobjects = []
    }

    return resolved;
    }
};

module.exports = Perceptionobjects;
