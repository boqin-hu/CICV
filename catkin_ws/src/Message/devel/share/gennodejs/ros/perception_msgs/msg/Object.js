// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObstacleCell = require('./ObstacleCell.js');

//-----------------------------------------------------------

class Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.vxrel = null;
      this.vyrel = null;
      this.xabs = null;
      this.yabs = null;
      this.vxabs = null;
      this.vyabs = null;
      this.width = null;
      this.length = null;
      this.height = null;
      this.speed = null;
      this.heading = null;
      this.type = null;
      this.source = null;
      this.confidence = null;
      this.age = null;
      this.velocitystatus = null;
      this.cells = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
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
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('vxrel')) {
        this.vxrel = initObj.vxrel
      }
      else {
        this.vxrel = 0.0;
      }
      if (initObj.hasOwnProperty('vyrel')) {
        this.vyrel = initObj.vyrel
      }
      else {
        this.vyrel = 0.0;
      }
      if (initObj.hasOwnProperty('xabs')) {
        this.xabs = initObj.xabs
      }
      else {
        this.xabs = 0.0;
      }
      if (initObj.hasOwnProperty('yabs')) {
        this.yabs = initObj.yabs
      }
      else {
        this.yabs = 0.0;
      }
      if (initObj.hasOwnProperty('vxabs')) {
        this.vxabs = initObj.vxabs
      }
      else {
        this.vxabs = 0.0;
      }
      if (initObj.hasOwnProperty('vyabs')) {
        this.vyabs = initObj.vyabs
      }
      else {
        this.vyabs = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = 0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
      if (initObj.hasOwnProperty('velocitystatus')) {
        this.velocitystatus = initObj.velocitystatus
      }
      else {
        this.velocitystatus = 0;
      }
      if (initObj.hasOwnProperty('cells')) {
        this.cells = initObj.cells
      }
      else {
        this.cells = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Object
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [vxrel]
    bufferOffset = _serializer.float32(obj.vxrel, buffer, bufferOffset);
    // Serialize message field [vyrel]
    bufferOffset = _serializer.float32(obj.vyrel, buffer, bufferOffset);
    // Serialize message field [xabs]
    bufferOffset = _serializer.float64(obj.xabs, buffer, bufferOffset);
    // Serialize message field [yabs]
    bufferOffset = _serializer.float64(obj.yabs, buffer, bufferOffset);
    // Serialize message field [vxabs]
    bufferOffset = _serializer.float32(obj.vxabs, buffer, bufferOffset);
    // Serialize message field [vyabs]
    bufferOffset = _serializer.float32(obj.vyabs, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float32(obj.heading, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [source]
    bufferOffset = _serializer.uint8(obj.source, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.uint32(obj.age, buffer, bufferOffset);
    // Serialize message field [velocitystatus]
    bufferOffset = _serializer.uint8(obj.velocitystatus, buffer, bufferOffset);
    // Serialize message field [cells]
    // Serialize the length for message field [cells]
    bufferOffset = _serializer.uint32(obj.cells.length, buffer, bufferOffset);
    obj.cells.forEach((val) => {
      bufferOffset = ObstacleCell.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Object
    let len;
    let data = new Object(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vxrel]
    data.vxrel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vyrel]
    data.vyrel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [xabs]
    data.xabs = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yabs]
    data.yabs = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vxabs]
    data.vxabs = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vyabs]
    data.vyabs = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [source]
    data.source = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [velocitystatus]
    data.velocitystatus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cells]
    // Deserialize array length for message field [cells]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cells = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cells[i] = ObstacleCell.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 36 * object.cells.length;
    return length + 83;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8076fab59ac243046da9a425a9cf9fc0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id 						# obstacle ID.
    float32 x  		# relative distance of x, VCS, unit: m
    float32 y 		# relative distance of y, VCS, unit: m
    float32 z 						# relative distance of z, VCS, unit: m
    float32 vxrel     # relative speed of x, VCS, unit: m/s
    float32 vyrel     # relative speed of y, VCS, unit: m/s
    float64 xabs      # relative distance of x, VCS, unit: m
    float64 yabs      # relative distance of y, VCS, unit: m
    float32 vxabs     # relative speed of x, VCS, unit: m/s
    float32 vyabs     # relative speed of y, VCS, unit: m/s
    float32 width     # unit: m
    float32 length    # unit: m
    float32 height     				# unit: m
    float32 speed      				# unit: m/s
    float32 heading      			# unit: du
    uint8 type 					# CAR_TYPE=0, TRUCK_TYPE=1, PEDESTRIAN_TYPE=2, CYCLIST_TYPE=3, UNKNOWN_TYPE=4, UNKNOWN_MOVABLE_TYPE=5, UNKNOWN_UNMOVABLE_TYPE=6
    uint8 source 					# VISION=0x0000 MOBILEYE=0x0001 LIDAR=0x0100 RADAR=0x0200 ARS_0=0x0201   ARS_1=0x0202  ARS_2=0x0203  ARS_3=0x0204
    float32 confidence				# 0.0~1.0
    uint32 age						# 
    uint8 velocitystatus 			# 
    ObstacleCell[] cells 
    
    # uint8 track_level
    # uint8 invi_count
    # uint8 vis_count
    
    # float32 acc_x
    # float32 acc_y
    
    
    ================================================================================
    MSG: perception_msgs/ObstacleCell
    int32 idc
    float64 x
    float64 y
    float64 xg
    float64 yg
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Object(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
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

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.vxrel !== undefined) {
      resolved.vxrel = msg.vxrel;
    }
    else {
      resolved.vxrel = 0.0
    }

    if (msg.vyrel !== undefined) {
      resolved.vyrel = msg.vyrel;
    }
    else {
      resolved.vyrel = 0.0
    }

    if (msg.xabs !== undefined) {
      resolved.xabs = msg.xabs;
    }
    else {
      resolved.xabs = 0.0
    }

    if (msg.yabs !== undefined) {
      resolved.yabs = msg.yabs;
    }
    else {
      resolved.yabs = 0.0
    }

    if (msg.vxabs !== undefined) {
      resolved.vxabs = msg.vxabs;
    }
    else {
      resolved.vxabs = 0.0
    }

    if (msg.vyabs !== undefined) {
      resolved.vyabs = msg.vyabs;
    }
    else {
      resolved.vyabs = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = 0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    if (msg.velocitystatus !== undefined) {
      resolved.velocitystatus = msg.velocitystatus;
    }
    else {
      resolved.velocitystatus = 0
    }

    if (msg.cells !== undefined) {
      resolved.cells = new Array(msg.cells.length);
      for (let i = 0; i < resolved.cells.length; ++i) {
        resolved.cells[i] = ObstacleCell.Resolve(msg.cells[i]);
      }
    }
    else {
      resolved.cells = []
    }

    return resolved;
    }
};

module.exports = Object;
