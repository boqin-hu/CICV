// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PerceptionLocalization {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.frame_unmber = null;
      this.fusion_level = null;
      this.status = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
      this.roll_std = null;
      this.pitch_std = null;
      this.yaw_std = null;
      this.qw = null;
      this.qx = null;
      this.qy = null;
      this.qz = null;
      this.angular_velocity_x = null;
      this.angular_velocity_y = null;
      this.angular_velocity_z = null;
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.latitude_std = null;
      this.longitude_std = null;
      this.altitude_std = null;
      this.position_x = null;
      this.position_y = null;
      this.position_z = null;
      this.position_x_std = null;
      this.position_y_std = null;
      this.position_z_std = null;
      this.velocity_x = null;
      this.velocity_y = null;
      this.velocity_z = null;
      this.velocity_x_std = null;
      this.velocity_y_std = null;
      this.velocity_z_std = null;
      this.velocity_rx = null;
      this.velocity_ry = null;
      this.velocity_rz = null;
      this.velocity_rx_std = null;
      this.velocity_ry_std = null;
      this.velocity_rz_std = null;
      this.accel_x = null;
      this.accel_y = null;
      this.accel_z = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('frame_unmber')) {
        this.frame_unmber = initObj.frame_unmber
      }
      else {
        this.frame_unmber = 0;
      }
      if (initObj.hasOwnProperty('fusion_level')) {
        this.fusion_level = initObj.fusion_level
      }
      else {
        this.fusion_level = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('roll_std')) {
        this.roll_std = initObj.roll_std
      }
      else {
        this.roll_std = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_std')) {
        this.pitch_std = initObj.pitch_std
      }
      else {
        this.pitch_std = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_std')) {
        this.yaw_std = initObj.yaw_std
      }
      else {
        this.yaw_std = 0.0;
      }
      if (initObj.hasOwnProperty('qw')) {
        this.qw = initObj.qw
      }
      else {
        this.qw = 0.0;
      }
      if (initObj.hasOwnProperty('qx')) {
        this.qx = initObj.qx
      }
      else {
        this.qx = 0.0;
      }
      if (initObj.hasOwnProperty('qy')) {
        this.qy = initObj.qy
      }
      else {
        this.qy = 0.0;
      }
      if (initObj.hasOwnProperty('qz')) {
        this.qz = initObj.qz
      }
      else {
        this.qz = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity_x')) {
        this.angular_velocity_x = initObj.angular_velocity_x
      }
      else {
        this.angular_velocity_x = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity_y')) {
        this.angular_velocity_y = initObj.angular_velocity_y
      }
      else {
        this.angular_velocity_y = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity_z')) {
        this.angular_velocity_z = initObj.angular_velocity_z
      }
      else {
        this.angular_velocity_z = 0.0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('latitude_std')) {
        this.latitude_std = initObj.latitude_std
      }
      else {
        this.latitude_std = 0.0;
      }
      if (initObj.hasOwnProperty('longitude_std')) {
        this.longitude_std = initObj.longitude_std
      }
      else {
        this.longitude_std = 0.0;
      }
      if (initObj.hasOwnProperty('altitude_std')) {
        this.altitude_std = initObj.altitude_std
      }
      else {
        this.altitude_std = 0.0;
      }
      if (initObj.hasOwnProperty('position_x')) {
        this.position_x = initObj.position_x
      }
      else {
        this.position_x = 0.0;
      }
      if (initObj.hasOwnProperty('position_y')) {
        this.position_y = initObj.position_y
      }
      else {
        this.position_y = 0.0;
      }
      if (initObj.hasOwnProperty('position_z')) {
        this.position_z = initObj.position_z
      }
      else {
        this.position_z = 0.0;
      }
      if (initObj.hasOwnProperty('position_x_std')) {
        this.position_x_std = initObj.position_x_std
      }
      else {
        this.position_x_std = 0.0;
      }
      if (initObj.hasOwnProperty('position_y_std')) {
        this.position_y_std = initObj.position_y_std
      }
      else {
        this.position_y_std = 0.0;
      }
      if (initObj.hasOwnProperty('position_z_std')) {
        this.position_z_std = initObj.position_z_std
      }
      else {
        this.position_z_std = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_x')) {
        this.velocity_x = initObj.velocity_x
      }
      else {
        this.velocity_x = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_y')) {
        this.velocity_y = initObj.velocity_y
      }
      else {
        this.velocity_y = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_z')) {
        this.velocity_z = initObj.velocity_z
      }
      else {
        this.velocity_z = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_x_std')) {
        this.velocity_x_std = initObj.velocity_x_std
      }
      else {
        this.velocity_x_std = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_y_std')) {
        this.velocity_y_std = initObj.velocity_y_std
      }
      else {
        this.velocity_y_std = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_z_std')) {
        this.velocity_z_std = initObj.velocity_z_std
      }
      else {
        this.velocity_z_std = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_rx')) {
        this.velocity_rx = initObj.velocity_rx
      }
      else {
        this.velocity_rx = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_ry')) {
        this.velocity_ry = initObj.velocity_ry
      }
      else {
        this.velocity_ry = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_rz')) {
        this.velocity_rz = initObj.velocity_rz
      }
      else {
        this.velocity_rz = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_rx_std')) {
        this.velocity_rx_std = initObj.velocity_rx_std
      }
      else {
        this.velocity_rx_std = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_ry_std')) {
        this.velocity_ry_std = initObj.velocity_ry_std
      }
      else {
        this.velocity_ry_std = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_rz_std')) {
        this.velocity_rz_std = initObj.velocity_rz_std
      }
      else {
        this.velocity_rz_std = 0.0;
      }
      if (initObj.hasOwnProperty('accel_x')) {
        this.accel_x = initObj.accel_x
      }
      else {
        this.accel_x = 0.0;
      }
      if (initObj.hasOwnProperty('accel_y')) {
        this.accel_y = initObj.accel_y
      }
      else {
        this.accel_y = 0.0;
      }
      if (initObj.hasOwnProperty('accel_z')) {
        this.accel_z = initObj.accel_z
      }
      else {
        this.accel_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PerceptionLocalization
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [frame_unmber]
    bufferOffset = _serializer.uint64(obj.frame_unmber, buffer, bufferOffset);
    // Serialize message field [fusion_level]
    bufferOffset = _serializer.int8(obj.fusion_level, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [roll_std]
    bufferOffset = _serializer.float32(obj.roll_std, buffer, bufferOffset);
    // Serialize message field [pitch_std]
    bufferOffset = _serializer.float32(obj.pitch_std, buffer, bufferOffset);
    // Serialize message field [yaw_std]
    bufferOffset = _serializer.float32(obj.yaw_std, buffer, bufferOffset);
    // Serialize message field [qw]
    bufferOffset = _serializer.float64(obj.qw, buffer, bufferOffset);
    // Serialize message field [qx]
    bufferOffset = _serializer.float64(obj.qx, buffer, bufferOffset);
    // Serialize message field [qy]
    bufferOffset = _serializer.float64(obj.qy, buffer, bufferOffset);
    // Serialize message field [qz]
    bufferOffset = _serializer.float64(obj.qz, buffer, bufferOffset);
    // Serialize message field [angular_velocity_x]
    bufferOffset = _serializer.float64(obj.angular_velocity_x, buffer, bufferOffset);
    // Serialize message field [angular_velocity_y]
    bufferOffset = _serializer.float64(obj.angular_velocity_y, buffer, bufferOffset);
    // Serialize message field [angular_velocity_z]
    bufferOffset = _serializer.float64(obj.angular_velocity_z, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [latitude_std]
    bufferOffset = _serializer.float32(obj.latitude_std, buffer, bufferOffset);
    // Serialize message field [longitude_std]
    bufferOffset = _serializer.float32(obj.longitude_std, buffer, bufferOffset);
    // Serialize message field [altitude_std]
    bufferOffset = _serializer.float32(obj.altitude_std, buffer, bufferOffset);
    // Serialize message field [position_x]
    bufferOffset = _serializer.float64(obj.position_x, buffer, bufferOffset);
    // Serialize message field [position_y]
    bufferOffset = _serializer.float64(obj.position_y, buffer, bufferOffset);
    // Serialize message field [position_z]
    bufferOffset = _serializer.float64(obj.position_z, buffer, bufferOffset);
    // Serialize message field [position_x_std]
    bufferOffset = _serializer.float32(obj.position_x_std, buffer, bufferOffset);
    // Serialize message field [position_y_std]
    bufferOffset = _serializer.float32(obj.position_y_std, buffer, bufferOffset);
    // Serialize message field [position_z_std]
    bufferOffset = _serializer.float32(obj.position_z_std, buffer, bufferOffset);
    // Serialize message field [velocity_x]
    bufferOffset = _serializer.float64(obj.velocity_x, buffer, bufferOffset);
    // Serialize message field [velocity_y]
    bufferOffset = _serializer.float64(obj.velocity_y, buffer, bufferOffset);
    // Serialize message field [velocity_z]
    bufferOffset = _serializer.float64(obj.velocity_z, buffer, bufferOffset);
    // Serialize message field [velocity_x_std]
    bufferOffset = _serializer.float32(obj.velocity_x_std, buffer, bufferOffset);
    // Serialize message field [velocity_y_std]
    bufferOffset = _serializer.float32(obj.velocity_y_std, buffer, bufferOffset);
    // Serialize message field [velocity_z_std]
    bufferOffset = _serializer.float32(obj.velocity_z_std, buffer, bufferOffset);
    // Serialize message field [velocity_rx]
    bufferOffset = _serializer.float64(obj.velocity_rx, buffer, bufferOffset);
    // Serialize message field [velocity_ry]
    bufferOffset = _serializer.float64(obj.velocity_ry, buffer, bufferOffset);
    // Serialize message field [velocity_rz]
    bufferOffset = _serializer.float64(obj.velocity_rz, buffer, bufferOffset);
    // Serialize message field [velocity_rx_std]
    bufferOffset = _serializer.float32(obj.velocity_rx_std, buffer, bufferOffset);
    // Serialize message field [velocity_ry_std]
    bufferOffset = _serializer.float32(obj.velocity_ry_std, buffer, bufferOffset);
    // Serialize message field [velocity_rz_std]
    bufferOffset = _serializer.float32(obj.velocity_rz_std, buffer, bufferOffset);
    // Serialize message field [accel_x]
    bufferOffset = _serializer.float64(obj.accel_x, buffer, bufferOffset);
    // Serialize message field [accel_y]
    bufferOffset = _serializer.float64(obj.accel_y, buffer, bufferOffset);
    // Serialize message field [accel_z]
    bufferOffset = _serializer.float64(obj.accel_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PerceptionLocalization
    let len;
    let data = new PerceptionLocalization(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [frame_unmber]
    data.frame_unmber = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [fusion_level]
    data.fusion_level = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_std]
    data.roll_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch_std]
    data.pitch_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw_std]
    data.yaw_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [qw]
    data.qw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qx]
    data.qx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qy]
    data.qy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qz]
    data.qz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_x]
    data.angular_velocity_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_y]
    data.angular_velocity_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_z]
    data.angular_velocity_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude_std]
    data.latitude_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitude_std]
    data.longitude_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [altitude_std]
    data.altitude_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_x]
    data.position_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_y]
    data.position_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_z]
    data.position_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_x_std]
    data.position_x_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_y_std]
    data.position_y_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_z_std]
    data.position_z_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_x]
    data.velocity_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity_y]
    data.velocity_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity_z]
    data.velocity_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity_x_std]
    data.velocity_x_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_y_std]
    data.velocity_y_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_z_std]
    data.velocity_z_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_rx]
    data.velocity_rx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity_ry]
    data.velocity_ry = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity_rz]
    data.velocity_rz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity_rx_std]
    data.velocity_rx_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_ry_std]
    data.velocity_ry_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_rz_std]
    data.velocity_rz_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel_x]
    data.accel_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accel_y]
    data.accel_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accel_z]
    data.accel_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 270;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/PerceptionLocalization';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b871ae769d4b537baab00d1c75ff3891';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    Header header
    
    uint64 frame_unmber
    int8 fusion_level
    int8 status  #4:固定解，5：浮点解，2：伪距差分，1：单点解
    #rotation
    float64 roll      # x,R, car body (FLU)
    float64 pitch      # y,R, car body (FLU)
    float64 yaw      # z,R, car body (FLU) utm (0,360)  0--east, 90--north
    float32 roll_std	
    float32 pitch_std
    float32 yaw_std 
    
    float64 qw          # w
    float64 qx          # x
    float64 qy          # y
    float64 qz          # z
    
    float64 angular_velocity_x	
    float64 angular_velocity_y
    float64 angular_velocity_z 
    
    
    #position
    float64 latitude	
    float64 longitude
    float64 altitude
    float32 latitude_std	
    float32 longitude_std
    float32 altitude_std
    
    float64 position_x  # utm_east
    float64 position_y  # utm_north
    float64 position_z  # utm_up
    float32 position_x_std	
    float32 position_y_std
    float32 position_z_std
    
    float64 velocity_x  # utm_east_speed
    float64 velocity_y  # utm_north_speed
    float64 velocity_z  # utm_up_speed
    float32 velocity_x_std	
    float32 velocity_y_std
    float32 velocity_z_std
    
    float64 velocity_rx  # ins_x_speed
    float64 velocity_ry  # ins_y_speed
    float64 velocity_rz  # ins_z_speed
    float32 velocity_rx_std	
    float32 velocity_ry_std
    float32 velocity_rz_std
    
    float64 accel_x     # R, car body (RFU)
    float64 accel_y     # F, car body (RFU)
    float64 accel_z     # U, car body (RFU)
    
    
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PerceptionLocalization(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.frame_unmber !== undefined) {
      resolved.frame_unmber = msg.frame_unmber;
    }
    else {
      resolved.frame_unmber = 0
    }

    if (msg.fusion_level !== undefined) {
      resolved.fusion_level = msg.fusion_level;
    }
    else {
      resolved.fusion_level = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.roll_std !== undefined) {
      resolved.roll_std = msg.roll_std;
    }
    else {
      resolved.roll_std = 0.0
    }

    if (msg.pitch_std !== undefined) {
      resolved.pitch_std = msg.pitch_std;
    }
    else {
      resolved.pitch_std = 0.0
    }

    if (msg.yaw_std !== undefined) {
      resolved.yaw_std = msg.yaw_std;
    }
    else {
      resolved.yaw_std = 0.0
    }

    if (msg.qw !== undefined) {
      resolved.qw = msg.qw;
    }
    else {
      resolved.qw = 0.0
    }

    if (msg.qx !== undefined) {
      resolved.qx = msg.qx;
    }
    else {
      resolved.qx = 0.0
    }

    if (msg.qy !== undefined) {
      resolved.qy = msg.qy;
    }
    else {
      resolved.qy = 0.0
    }

    if (msg.qz !== undefined) {
      resolved.qz = msg.qz;
    }
    else {
      resolved.qz = 0.0
    }

    if (msg.angular_velocity_x !== undefined) {
      resolved.angular_velocity_x = msg.angular_velocity_x;
    }
    else {
      resolved.angular_velocity_x = 0.0
    }

    if (msg.angular_velocity_y !== undefined) {
      resolved.angular_velocity_y = msg.angular_velocity_y;
    }
    else {
      resolved.angular_velocity_y = 0.0
    }

    if (msg.angular_velocity_z !== undefined) {
      resolved.angular_velocity_z = msg.angular_velocity_z;
    }
    else {
      resolved.angular_velocity_z = 0.0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.latitude_std !== undefined) {
      resolved.latitude_std = msg.latitude_std;
    }
    else {
      resolved.latitude_std = 0.0
    }

    if (msg.longitude_std !== undefined) {
      resolved.longitude_std = msg.longitude_std;
    }
    else {
      resolved.longitude_std = 0.0
    }

    if (msg.altitude_std !== undefined) {
      resolved.altitude_std = msg.altitude_std;
    }
    else {
      resolved.altitude_std = 0.0
    }

    if (msg.position_x !== undefined) {
      resolved.position_x = msg.position_x;
    }
    else {
      resolved.position_x = 0.0
    }

    if (msg.position_y !== undefined) {
      resolved.position_y = msg.position_y;
    }
    else {
      resolved.position_y = 0.0
    }

    if (msg.position_z !== undefined) {
      resolved.position_z = msg.position_z;
    }
    else {
      resolved.position_z = 0.0
    }

    if (msg.position_x_std !== undefined) {
      resolved.position_x_std = msg.position_x_std;
    }
    else {
      resolved.position_x_std = 0.0
    }

    if (msg.position_y_std !== undefined) {
      resolved.position_y_std = msg.position_y_std;
    }
    else {
      resolved.position_y_std = 0.0
    }

    if (msg.position_z_std !== undefined) {
      resolved.position_z_std = msg.position_z_std;
    }
    else {
      resolved.position_z_std = 0.0
    }

    if (msg.velocity_x !== undefined) {
      resolved.velocity_x = msg.velocity_x;
    }
    else {
      resolved.velocity_x = 0.0
    }

    if (msg.velocity_y !== undefined) {
      resolved.velocity_y = msg.velocity_y;
    }
    else {
      resolved.velocity_y = 0.0
    }

    if (msg.velocity_z !== undefined) {
      resolved.velocity_z = msg.velocity_z;
    }
    else {
      resolved.velocity_z = 0.0
    }

    if (msg.velocity_x_std !== undefined) {
      resolved.velocity_x_std = msg.velocity_x_std;
    }
    else {
      resolved.velocity_x_std = 0.0
    }

    if (msg.velocity_y_std !== undefined) {
      resolved.velocity_y_std = msg.velocity_y_std;
    }
    else {
      resolved.velocity_y_std = 0.0
    }

    if (msg.velocity_z_std !== undefined) {
      resolved.velocity_z_std = msg.velocity_z_std;
    }
    else {
      resolved.velocity_z_std = 0.0
    }

    if (msg.velocity_rx !== undefined) {
      resolved.velocity_rx = msg.velocity_rx;
    }
    else {
      resolved.velocity_rx = 0.0
    }

    if (msg.velocity_ry !== undefined) {
      resolved.velocity_ry = msg.velocity_ry;
    }
    else {
      resolved.velocity_ry = 0.0
    }

    if (msg.velocity_rz !== undefined) {
      resolved.velocity_rz = msg.velocity_rz;
    }
    else {
      resolved.velocity_rz = 0.0
    }

    if (msg.velocity_rx_std !== undefined) {
      resolved.velocity_rx_std = msg.velocity_rx_std;
    }
    else {
      resolved.velocity_rx_std = 0.0
    }

    if (msg.velocity_ry_std !== undefined) {
      resolved.velocity_ry_std = msg.velocity_ry_std;
    }
    else {
      resolved.velocity_ry_std = 0.0
    }

    if (msg.velocity_rz_std !== undefined) {
      resolved.velocity_rz_std = msg.velocity_rz_std;
    }
    else {
      resolved.velocity_rz_std = 0.0
    }

    if (msg.accel_x !== undefined) {
      resolved.accel_x = msg.accel_x;
    }
    else {
      resolved.accel_x = 0.0
    }

    if (msg.accel_y !== undefined) {
      resolved.accel_y = msg.accel_y;
    }
    else {
      resolved.accel_y = 0.0
    }

    if (msg.accel_z !== undefined) {
      resolved.accel_z = msg.accel_z;
    }
    else {
      resolved.accel_z = 0.0
    }

    return resolved;
    }
};

module.exports = PerceptionLocalization;
