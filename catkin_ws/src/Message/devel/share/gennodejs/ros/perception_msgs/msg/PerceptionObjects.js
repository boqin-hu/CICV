// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Object = require('./Object.js');
let ObstacleCell = require('./ObstacleCell.js');
let common_msgs = _finder('common_msgs');

//-----------------------------------------------------------

class PerceptionObjects {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.objs = null;
      this.cells = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new common_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('objs')) {
        this.objs = initObj.objs
      }
      else {
        this.objs = [];
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
    // Serializes a message object of type PerceptionObjects
    // Serialize message field [header]
    bufferOffset = common_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [objs]
    // Serialize the length for message field [objs]
    bufferOffset = _serializer.uint32(obj.objs.length, buffer, bufferOffset);
    obj.objs.forEach((val) => {
      bufferOffset = Object.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cells]
    // Serialize the length for message field [cells]
    bufferOffset = _serializer.uint32(obj.cells.length, buffer, bufferOffset);
    obj.cells.forEach((val) => {
      bufferOffset = ObstacleCell.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PerceptionObjects
    let len;
    let data = new PerceptionObjects(null);
    // Deserialize message field [header]
    data.header = common_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [objs]
    // Deserialize array length for message field [objs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objs[i] = Object.deserialize(buffer, bufferOffset)
    }
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
    length += common_msgs.msg.Header.getMessageSize(object.header);
    object.objs.forEach((val) => {
      length += Object.getMessageSize(val);
    });
    length += 36 * object.cells.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/PerceptionObjects';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79908444545b6666f901065dc0df6345';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    common_msgs/Header header
    Object[] objs
    ObstacleCell[] cells
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
    MSG: perception_msgs/Object
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
    const resolved = new PerceptionObjects(null);
    if (msg.header !== undefined) {
      resolved.header = common_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new common_msgs.msg.Header()
    }

    if (msg.objs !== undefined) {
      resolved.objs = new Array(msg.objs.length);
      for (let i = 0; i < resolved.objs.length; ++i) {
        resolved.objs[i] = Object.Resolve(msg.objs[i]);
      }
    }
    else {
      resolved.objs = []
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

module.exports = PerceptionObjects;
