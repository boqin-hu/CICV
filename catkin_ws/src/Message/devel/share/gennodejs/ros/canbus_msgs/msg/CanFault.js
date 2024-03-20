// Auto-generated. Do not edit!

// (in-package canbus_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CanFault {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.can_fault_flag = null;
      this.can103_fault_flag = null;
      this.mmw_lidar0_flag = null;
      this.mmw_lidar1_flag = null;
      this.mmw_lidar3_flag = null;
      this.mmw_lidar5_flag = null;
      this.mmw_lidar7_flag = null;
      this.ult_5C8_flag = null;
      this.ult_5C9_flag = null;
      this.can_busoff_flag = null;
      this.can103_busoff_flag = null;
      this.canbus_module_level1_flag = null;
      this.canbus_module_level2_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('can_fault_flag')) {
        this.can_fault_flag = initObj.can_fault_flag
      }
      else {
        this.can_fault_flag = 0;
      }
      if (initObj.hasOwnProperty('can103_fault_flag')) {
        this.can103_fault_flag = initObj.can103_fault_flag
      }
      else {
        this.can103_fault_flag = 0;
      }
      if (initObj.hasOwnProperty('mmw_lidar0_flag')) {
        this.mmw_lidar0_flag = initObj.mmw_lidar0_flag
      }
      else {
        this.mmw_lidar0_flag = 0;
      }
      if (initObj.hasOwnProperty('mmw_lidar1_flag')) {
        this.mmw_lidar1_flag = initObj.mmw_lidar1_flag
      }
      else {
        this.mmw_lidar1_flag = 0;
      }
      if (initObj.hasOwnProperty('mmw_lidar3_flag')) {
        this.mmw_lidar3_flag = initObj.mmw_lidar3_flag
      }
      else {
        this.mmw_lidar3_flag = 0;
      }
      if (initObj.hasOwnProperty('mmw_lidar5_flag')) {
        this.mmw_lidar5_flag = initObj.mmw_lidar5_flag
      }
      else {
        this.mmw_lidar5_flag = 0;
      }
      if (initObj.hasOwnProperty('mmw_lidar7_flag')) {
        this.mmw_lidar7_flag = initObj.mmw_lidar7_flag
      }
      else {
        this.mmw_lidar7_flag = 0;
      }
      if (initObj.hasOwnProperty('ult_5C8_flag')) {
        this.ult_5C8_flag = initObj.ult_5C8_flag
      }
      else {
        this.ult_5C8_flag = 0;
      }
      if (initObj.hasOwnProperty('ult_5C9_flag')) {
        this.ult_5C9_flag = initObj.ult_5C9_flag
      }
      else {
        this.ult_5C9_flag = 0;
      }
      if (initObj.hasOwnProperty('can_busoff_flag')) {
        this.can_busoff_flag = initObj.can_busoff_flag
      }
      else {
        this.can_busoff_flag = 0;
      }
      if (initObj.hasOwnProperty('can103_busoff_flag')) {
        this.can103_busoff_flag = initObj.can103_busoff_flag
      }
      else {
        this.can103_busoff_flag = 0;
      }
      if (initObj.hasOwnProperty('canbus_module_level1_flag')) {
        this.canbus_module_level1_flag = initObj.canbus_module_level1_flag
      }
      else {
        this.canbus_module_level1_flag = 0;
      }
      if (initObj.hasOwnProperty('canbus_module_level2_flag')) {
        this.canbus_module_level2_flag = initObj.canbus_module_level2_flag
      }
      else {
        this.canbus_module_level2_flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CanFault
    // Serialize message field [can_fault_flag]
    bufferOffset = _serializer.int16(obj.can_fault_flag, buffer, bufferOffset);
    // Serialize message field [can103_fault_flag]
    bufferOffset = _serializer.int16(obj.can103_fault_flag, buffer, bufferOffset);
    // Serialize message field [mmw_lidar0_flag]
    bufferOffset = _serializer.int16(obj.mmw_lidar0_flag, buffer, bufferOffset);
    // Serialize message field [mmw_lidar1_flag]
    bufferOffset = _serializer.int16(obj.mmw_lidar1_flag, buffer, bufferOffset);
    // Serialize message field [mmw_lidar3_flag]
    bufferOffset = _serializer.int16(obj.mmw_lidar3_flag, buffer, bufferOffset);
    // Serialize message field [mmw_lidar5_flag]
    bufferOffset = _serializer.int16(obj.mmw_lidar5_flag, buffer, bufferOffset);
    // Serialize message field [mmw_lidar7_flag]
    bufferOffset = _serializer.int16(obj.mmw_lidar7_flag, buffer, bufferOffset);
    // Serialize message field [ult_5C8_flag]
    bufferOffset = _serializer.int16(obj.ult_5C8_flag, buffer, bufferOffset);
    // Serialize message field [ult_5C9_flag]
    bufferOffset = _serializer.int16(obj.ult_5C9_flag, buffer, bufferOffset);
    // Serialize message field [can_busoff_flag]
    bufferOffset = _serializer.int16(obj.can_busoff_flag, buffer, bufferOffset);
    // Serialize message field [can103_busoff_flag]
    bufferOffset = _serializer.int16(obj.can103_busoff_flag, buffer, bufferOffset);
    // Serialize message field [canbus_module_level1_flag]
    bufferOffset = _serializer.int16(obj.canbus_module_level1_flag, buffer, bufferOffset);
    // Serialize message field [canbus_module_level2_flag]
    bufferOffset = _serializer.int16(obj.canbus_module_level2_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CanFault
    let len;
    let data = new CanFault(null);
    // Deserialize message field [can_fault_flag]
    data.can_fault_flag = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [can103_fault_flag]
    data.can103_fault_flag = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mmw_lidar0_flag]
    data.mmw_lidar0_flag = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mmw_lidar1_flag]
    data.mmw_lidar1_flag = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mmw_lidar3_flag]
    data.mmw_lidar3_flag = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mmw_lidar5_flag]
    data.mmw_lidar5_flag = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mmw_lidar7_flag]
    data.mmw_lidar7_flag = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ult_5C8_flag]
    data.ult_5C8_flag = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ult_5C9_flag]
    data.ult_5C9_flag = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [can_busoff_flag]
    data.can_busoff_flag = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [can103_busoff_flag]
    data.can103_busoff_flag = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [canbus_module_level1_flag]
    data.canbus_module_level1_flag = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [canbus_module_level2_flag]
    data.canbus_module_level2_flag = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'canbus_msgs/CanFault';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c8ae15ad4df221ade0f55c8006aaa5ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16   can_fault_flag
    int16   can103_fault_flag
    int16   mmw_lidar0_flag
    int16   mmw_lidar1_flag
    int16   mmw_lidar3_flag
    int16   mmw_lidar5_flag
    int16   mmw_lidar7_flag
    int16   ult_5C8_flag
    int16   ult_5C9_flag
    int16   can_busoff_flag
    int16   can103_busoff_flag
    int16   canbus_module_level1_flag
    int16   canbus_module_level2_flag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CanFault(null);
    if (msg.can_fault_flag !== undefined) {
      resolved.can_fault_flag = msg.can_fault_flag;
    }
    else {
      resolved.can_fault_flag = 0
    }

    if (msg.can103_fault_flag !== undefined) {
      resolved.can103_fault_flag = msg.can103_fault_flag;
    }
    else {
      resolved.can103_fault_flag = 0
    }

    if (msg.mmw_lidar0_flag !== undefined) {
      resolved.mmw_lidar0_flag = msg.mmw_lidar0_flag;
    }
    else {
      resolved.mmw_lidar0_flag = 0
    }

    if (msg.mmw_lidar1_flag !== undefined) {
      resolved.mmw_lidar1_flag = msg.mmw_lidar1_flag;
    }
    else {
      resolved.mmw_lidar1_flag = 0
    }

    if (msg.mmw_lidar3_flag !== undefined) {
      resolved.mmw_lidar3_flag = msg.mmw_lidar3_flag;
    }
    else {
      resolved.mmw_lidar3_flag = 0
    }

    if (msg.mmw_lidar5_flag !== undefined) {
      resolved.mmw_lidar5_flag = msg.mmw_lidar5_flag;
    }
    else {
      resolved.mmw_lidar5_flag = 0
    }

    if (msg.mmw_lidar7_flag !== undefined) {
      resolved.mmw_lidar7_flag = msg.mmw_lidar7_flag;
    }
    else {
      resolved.mmw_lidar7_flag = 0
    }

    if (msg.ult_5C8_flag !== undefined) {
      resolved.ult_5C8_flag = msg.ult_5C8_flag;
    }
    else {
      resolved.ult_5C8_flag = 0
    }

    if (msg.ult_5C9_flag !== undefined) {
      resolved.ult_5C9_flag = msg.ult_5C9_flag;
    }
    else {
      resolved.ult_5C9_flag = 0
    }

    if (msg.can_busoff_flag !== undefined) {
      resolved.can_busoff_flag = msg.can_busoff_flag;
    }
    else {
      resolved.can_busoff_flag = 0
    }

    if (msg.can103_busoff_flag !== undefined) {
      resolved.can103_busoff_flag = msg.can103_busoff_flag;
    }
    else {
      resolved.can103_busoff_flag = 0
    }

    if (msg.canbus_module_level1_flag !== undefined) {
      resolved.canbus_module_level1_flag = msg.canbus_module_level1_flag;
    }
    else {
      resolved.canbus_module_level1_flag = 0
    }

    if (msg.canbus_module_level2_flag !== undefined) {
      resolved.canbus_module_level2_flag = msg.canbus_module_level2_flag;
    }
    else {
      resolved.canbus_module_level2_flag = 0
    }

    return resolved;
    }
};

module.exports = CanFault;
