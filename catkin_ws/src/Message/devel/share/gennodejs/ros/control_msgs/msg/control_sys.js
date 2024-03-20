// Auto-generated. Do not edit!

// (in-package control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class control_sys {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lat_targetangle = null;
      this.lat_targettorque = null;
      this.vehicle_shiftposition = null;
      this.vehicle_sys_status = null;
      this.actuatormode = null;
      this.shiftposition = null;
      this.brakelight = null;
      this.reverselight = null;
      this.epb_status = null;
      this.vehicle_auto_enable = null;
      this.vehicle_lat_enable = null;
      this.vehicle_lon_enable = null;
      this.vehicle_epb_status = null;
      this.road_vaild_flag = null;
      this.calibration_flag = null;
      this.write_enable_flag = null;
      this.PowerFault = null;
      this.ComFault = null;
      this.USSFault = null;
      this.ChassisFault = null;
    }
    else {
      if (initObj.hasOwnProperty('lat_targetangle')) {
        this.lat_targetangle = initObj.lat_targetangle
      }
      else {
        this.lat_targetangle = 0.0;
      }
      if (initObj.hasOwnProperty('lat_targettorque')) {
        this.lat_targettorque = initObj.lat_targettorque
      }
      else {
        this.lat_targettorque = 0.0;
      }
      if (initObj.hasOwnProperty('vehicle_shiftposition')) {
        this.vehicle_shiftposition = initObj.vehicle_shiftposition
      }
      else {
        this.vehicle_shiftposition = 0;
      }
      if (initObj.hasOwnProperty('vehicle_sys_status')) {
        this.vehicle_sys_status = initObj.vehicle_sys_status
      }
      else {
        this.vehicle_sys_status = 0;
      }
      if (initObj.hasOwnProperty('actuatormode')) {
        this.actuatormode = initObj.actuatormode
      }
      else {
        this.actuatormode = 0;
      }
      if (initObj.hasOwnProperty('shiftposition')) {
        this.shiftposition = initObj.shiftposition
      }
      else {
        this.shiftposition = 0;
      }
      if (initObj.hasOwnProperty('brakelight')) {
        this.brakelight = initObj.brakelight
      }
      else {
        this.brakelight = 0;
      }
      if (initObj.hasOwnProperty('reverselight')) {
        this.reverselight = initObj.reverselight
      }
      else {
        this.reverselight = 0;
      }
      if (initObj.hasOwnProperty('epb_status')) {
        this.epb_status = initObj.epb_status
      }
      else {
        this.epb_status = 0;
      }
      if (initObj.hasOwnProperty('vehicle_auto_enable')) {
        this.vehicle_auto_enable = initObj.vehicle_auto_enable
      }
      else {
        this.vehicle_auto_enable = false;
      }
      if (initObj.hasOwnProperty('vehicle_lat_enable')) {
        this.vehicle_lat_enable = initObj.vehicle_lat_enable
      }
      else {
        this.vehicle_lat_enable = false;
      }
      if (initObj.hasOwnProperty('vehicle_lon_enable')) {
        this.vehicle_lon_enable = initObj.vehicle_lon_enable
      }
      else {
        this.vehicle_lon_enable = false;
      }
      if (initObj.hasOwnProperty('vehicle_epb_status')) {
        this.vehicle_epb_status = initObj.vehicle_epb_status
      }
      else {
        this.vehicle_epb_status = false;
      }
      if (initObj.hasOwnProperty('road_vaild_flag')) {
        this.road_vaild_flag = initObj.road_vaild_flag
      }
      else {
        this.road_vaild_flag = false;
      }
      if (initObj.hasOwnProperty('calibration_flag')) {
        this.calibration_flag = initObj.calibration_flag
      }
      else {
        this.calibration_flag = false;
      }
      if (initObj.hasOwnProperty('write_enable_flag')) {
        this.write_enable_flag = initObj.write_enable_flag
      }
      else {
        this.write_enable_flag = false;
      }
      if (initObj.hasOwnProperty('PowerFault')) {
        this.PowerFault = initObj.PowerFault
      }
      else {
        this.PowerFault = 0;
      }
      if (initObj.hasOwnProperty('ComFault')) {
        this.ComFault = initObj.ComFault
      }
      else {
        this.ComFault = 0;
      }
      if (initObj.hasOwnProperty('USSFault')) {
        this.USSFault = initObj.USSFault
      }
      else {
        this.USSFault = 0;
      }
      if (initObj.hasOwnProperty('ChassisFault')) {
        this.ChassisFault = initObj.ChassisFault
      }
      else {
        this.ChassisFault = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type control_sys
    // Serialize message field [lat_targetangle]
    bufferOffset = _serializer.float32(obj.lat_targetangle, buffer, bufferOffset);
    // Serialize message field [lat_targettorque]
    bufferOffset = _serializer.float32(obj.lat_targettorque, buffer, bufferOffset);
    // Serialize message field [vehicle_shiftposition]
    bufferOffset = _serializer.int16(obj.vehicle_shiftposition, buffer, bufferOffset);
    // Serialize message field [vehicle_sys_status]
    bufferOffset = _serializer.int16(obj.vehicle_sys_status, buffer, bufferOffset);
    // Serialize message field [actuatormode]
    bufferOffset = _serializer.int16(obj.actuatormode, buffer, bufferOffset);
    // Serialize message field [shiftposition]
    bufferOffset = _serializer.int16(obj.shiftposition, buffer, bufferOffset);
    // Serialize message field [brakelight]
    bufferOffset = _serializer.int16(obj.brakelight, buffer, bufferOffset);
    // Serialize message field [reverselight]
    bufferOffset = _serializer.int16(obj.reverselight, buffer, bufferOffset);
    // Serialize message field [epb_status]
    bufferOffset = _serializer.int16(obj.epb_status, buffer, bufferOffset);
    // Serialize message field [vehicle_auto_enable]
    bufferOffset = _serializer.bool(obj.vehicle_auto_enable, buffer, bufferOffset);
    // Serialize message field [vehicle_lat_enable]
    bufferOffset = _serializer.bool(obj.vehicle_lat_enable, buffer, bufferOffset);
    // Serialize message field [vehicle_lon_enable]
    bufferOffset = _serializer.bool(obj.vehicle_lon_enable, buffer, bufferOffset);
    // Serialize message field [vehicle_epb_status]
    bufferOffset = _serializer.bool(obj.vehicle_epb_status, buffer, bufferOffset);
    // Serialize message field [road_vaild_flag]
    bufferOffset = _serializer.bool(obj.road_vaild_flag, buffer, bufferOffset);
    // Serialize message field [calibration_flag]
    bufferOffset = _serializer.bool(obj.calibration_flag, buffer, bufferOffset);
    // Serialize message field [write_enable_flag]
    bufferOffset = _serializer.bool(obj.write_enable_flag, buffer, bufferOffset);
    // Serialize message field [PowerFault]
    bufferOffset = _serializer.int16(obj.PowerFault, buffer, bufferOffset);
    // Serialize message field [ComFault]
    bufferOffset = _serializer.int16(obj.ComFault, buffer, bufferOffset);
    // Serialize message field [USSFault]
    bufferOffset = _serializer.int16(obj.USSFault, buffer, bufferOffset);
    // Serialize message field [ChassisFault]
    bufferOffset = _serializer.int16(obj.ChassisFault, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type control_sys
    let len;
    let data = new control_sys(null);
    // Deserialize message field [lat_targetangle]
    data.lat_targetangle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lat_targettorque]
    data.lat_targettorque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vehicle_shiftposition]
    data.vehicle_shiftposition = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [vehicle_sys_status]
    data.vehicle_sys_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [actuatormode]
    data.actuatormode = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [shiftposition]
    data.shiftposition = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [brakelight]
    data.brakelight = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [reverselight]
    data.reverselight = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [epb_status]
    data.epb_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [vehicle_auto_enable]
    data.vehicle_auto_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicle_lat_enable]
    data.vehicle_lat_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicle_lon_enable]
    data.vehicle_lon_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicle_epb_status]
    data.vehicle_epb_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [road_vaild_flag]
    data.road_vaild_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [calibration_flag]
    data.calibration_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [write_enable_flag]
    data.write_enable_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PowerFault]
    data.PowerFault = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ComFault]
    data.ComFault = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [USSFault]
    data.USSFault = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ChassisFault]
    data.ChassisFault = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control_msgs/control_sys';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd52a3c865eee57fb22d3fe059b3266b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32   lat_targetangle
    float32   lat_targettorque
    int16     vehicle_shiftposition
    int16     vehicle_sys_status
    int16     actuatormode
    int16     shiftposition
    int16     brakelight
    int16     reverselight
    int16     epb_status
    bool      vehicle_auto_enable
    bool      vehicle_lat_enable
    bool      vehicle_lon_enable
    bool      vehicle_epb_status
    bool      road_vaild_flag
    bool      calibration_flag
    bool      write_enable_flag
    int16     PowerFault
    int16     ComFault
    int16     USSFault
    int16     ChassisFault
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new control_sys(null);
    if (msg.lat_targetangle !== undefined) {
      resolved.lat_targetangle = msg.lat_targetangle;
    }
    else {
      resolved.lat_targetangle = 0.0
    }

    if (msg.lat_targettorque !== undefined) {
      resolved.lat_targettorque = msg.lat_targettorque;
    }
    else {
      resolved.lat_targettorque = 0.0
    }

    if (msg.vehicle_shiftposition !== undefined) {
      resolved.vehicle_shiftposition = msg.vehicle_shiftposition;
    }
    else {
      resolved.vehicle_shiftposition = 0
    }

    if (msg.vehicle_sys_status !== undefined) {
      resolved.vehicle_sys_status = msg.vehicle_sys_status;
    }
    else {
      resolved.vehicle_sys_status = 0
    }

    if (msg.actuatormode !== undefined) {
      resolved.actuatormode = msg.actuatormode;
    }
    else {
      resolved.actuatormode = 0
    }

    if (msg.shiftposition !== undefined) {
      resolved.shiftposition = msg.shiftposition;
    }
    else {
      resolved.shiftposition = 0
    }

    if (msg.brakelight !== undefined) {
      resolved.brakelight = msg.brakelight;
    }
    else {
      resolved.brakelight = 0
    }

    if (msg.reverselight !== undefined) {
      resolved.reverselight = msg.reverselight;
    }
    else {
      resolved.reverselight = 0
    }

    if (msg.epb_status !== undefined) {
      resolved.epb_status = msg.epb_status;
    }
    else {
      resolved.epb_status = 0
    }

    if (msg.vehicle_auto_enable !== undefined) {
      resolved.vehicle_auto_enable = msg.vehicle_auto_enable;
    }
    else {
      resolved.vehicle_auto_enable = false
    }

    if (msg.vehicle_lat_enable !== undefined) {
      resolved.vehicle_lat_enable = msg.vehicle_lat_enable;
    }
    else {
      resolved.vehicle_lat_enable = false
    }

    if (msg.vehicle_lon_enable !== undefined) {
      resolved.vehicle_lon_enable = msg.vehicle_lon_enable;
    }
    else {
      resolved.vehicle_lon_enable = false
    }

    if (msg.vehicle_epb_status !== undefined) {
      resolved.vehicle_epb_status = msg.vehicle_epb_status;
    }
    else {
      resolved.vehicle_epb_status = false
    }

    if (msg.road_vaild_flag !== undefined) {
      resolved.road_vaild_flag = msg.road_vaild_flag;
    }
    else {
      resolved.road_vaild_flag = false
    }

    if (msg.calibration_flag !== undefined) {
      resolved.calibration_flag = msg.calibration_flag;
    }
    else {
      resolved.calibration_flag = false
    }

    if (msg.write_enable_flag !== undefined) {
      resolved.write_enable_flag = msg.write_enable_flag;
    }
    else {
      resolved.write_enable_flag = false
    }

    if (msg.PowerFault !== undefined) {
      resolved.PowerFault = msg.PowerFault;
    }
    else {
      resolved.PowerFault = 0
    }

    if (msg.ComFault !== undefined) {
      resolved.ComFault = msg.ComFault;
    }
    else {
      resolved.ComFault = 0
    }

    if (msg.USSFault !== undefined) {
      resolved.USSFault = msg.USSFault;
    }
    else {
      resolved.USSFault = 0
    }

    if (msg.ChassisFault !== undefined) {
      resolved.ChassisFault = msg.ChassisFault;
    }
    else {
      resolved.ChassisFault = 0
    }

    return resolved;
    }
};

module.exports = control_sys;
