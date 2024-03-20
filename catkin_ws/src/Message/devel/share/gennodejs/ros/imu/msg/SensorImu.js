// Auto-generated. Do not edit!

// (in-package imu.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LocalizationControl = require('./LocalizationControl.js');
let common_msgs = _finder('common_msgs');

//-----------------------------------------------------------

class SensorImu {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.llh = null;
      this.pose = null;
      this.twist = null;
      this.acceleration = null;
      this.v = null;
      this.nav_status = null;
      this.dr_pose_and_time = null;
      this.localization_control = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new common_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('llh')) {
        this.llh = initObj.llh
      }
      else {
        this.llh = new common_msgs.msg.LLH();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new common_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = new common_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new common_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = new common_msgs.msg.UnsureVar();
      }
      if (initObj.hasOwnProperty('nav_status')) {
        this.nav_status = initObj.nav_status
      }
      else {
        this.nav_status = new common_msgs.msg.NavStatus();
      }
      if (initObj.hasOwnProperty('dr_pose_and_time')) {
        this.dr_pose_and_time = initObj.dr_pose_and_time
      }
      else {
        this.dr_pose_and_time = new common_msgs.msg.DRPoseWithTime();
      }
      if (initObj.hasOwnProperty('localization_control')) {
        this.localization_control = initObj.localization_control
      }
      else {
        this.localization_control = new LocalizationControl();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorImu
    // Serialize message field [header]
    bufferOffset = common_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [llh]
    bufferOffset = common_msgs.msg.LLH.serialize(obj.llh, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = common_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [twist]
    bufferOffset = common_msgs.msg.Twist.serialize(obj.twist, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = common_msgs.msg.Vector3.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = common_msgs.msg.UnsureVar.serialize(obj.v, buffer, bufferOffset);
    // Serialize message field [nav_status]
    bufferOffset = common_msgs.msg.NavStatus.serialize(obj.nav_status, buffer, bufferOffset);
    // Serialize message field [dr_pose_and_time]
    bufferOffset = common_msgs.msg.DRPoseWithTime.serialize(obj.dr_pose_and_time, buffer, bufferOffset);
    // Serialize message field [localization_control]
    bufferOffset = LocalizationControl.serialize(obj.localization_control, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorImu
    let len;
    let data = new SensorImu(null);
    // Deserialize message field [header]
    data.header = common_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [llh]
    data.llh = common_msgs.msg.LLH.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = common_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist]
    data.twist = common_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = common_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = common_msgs.msg.UnsureVar.deserialize(buffer, bufferOffset);
    // Deserialize message field [nav_status]
    data.nav_status = common_msgs.msg.NavStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [dr_pose_and_time]
    data.dr_pose_and_time = common_msgs.msg.DRPoseWithTime.deserialize(buffer, bufferOffset);
    // Deserialize message field [localization_control]
    data.localization_control = LocalizationControl.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += common_msgs.msg.Header.getMessageSize(object.header);
    return length + 539;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imu/SensorImu';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74871aed203561f29ce57a860f116fa6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    common_msgs/Header 	header
    common_msgs/LLH 	llh
    common_msgs/Pose 	pose
    common_msgs/Twist 	twist
    common_msgs/Vector3 	acceleration
    common_msgs/UnsureVar 	v
    common_msgs/NavStatus 	nav_status
    common_msgs/DRPoseWithTime dr_pose_and_time
    LocalizationControl localization_control
    
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
    MSG: common_msgs/LLH
    UnsureVar 	lat
    UnsureVar 	lon
    UnsureVar 	height
    ================================================================================
    MSG: common_msgs/UnsureVar
    float64 	variable
    float64 	var_std
    ================================================================================
    MSG: common_msgs/Pose
    PoseEuler  	pose_euler
    PoseQuaternion 	pose_quaternion
    int8  	status   # 0-normal  1-error
    ================================================================================
    MSG: common_msgs/PoseEuler
    Vector3WithCovariance 	position
    EulerWithCovariance 	rotation
    ================================================================================
    MSG: common_msgs/Vector3WithCovariance
    UnsureVar 	x
    UnsureVar 	y
    UnsureVar 	z
    ================================================================================
    MSG: common_msgs/EulerWithCovariance
    UnsureVar 	roll
    UnsureVar 	pitch
    UnsureVar 	yaw
    ================================================================================
    MSG: common_msgs/PoseQuaternion
    Vector3WithCovariance 	position
    Quaternion 	quaternion
    Vector3  rpy_covariance	
    ================================================================================
    MSG: common_msgs/Quaternion
    float64 	x
    float64 	y
    float64 	z
    float64 	w
    ================================================================================
    MSG: common_msgs/Vector3
    float64 	x
    float64 	y
    float64 	z
    ================================================================================
    MSG: common_msgs/Twist
    Vector3WithCovariance 	velocity
    Vector3WithCovariance 	angular_velocity
    ================================================================================
    MSG: common_msgs/NavStatus
    float64 	utc_time
    int8 	gps_status # 0-nofix  1-single  2-psrdiff  3-code_diff  4-narrow_init  5-narrow_float
    int32 	pos_status
    int32  	att_status
    int32  	init_status
    int32  	sate_num
    float32  	hdop
    float32  	pdop
    float32  	diff_age
    ================================================================================
    MSG: common_msgs/DRPoseWithTime
    int32      week
    float64    utctime
    float64    dr_time
    PoseEuler  pose_euler
    ================================================================================
    MSG: imu/LocalizationControl
    bool is_lidar_open
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorImu(null);
    if (msg.header !== undefined) {
      resolved.header = common_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new common_msgs.msg.Header()
    }

    if (msg.llh !== undefined) {
      resolved.llh = common_msgs.msg.LLH.Resolve(msg.llh)
    }
    else {
      resolved.llh = new common_msgs.msg.LLH()
    }

    if (msg.pose !== undefined) {
      resolved.pose = common_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new common_msgs.msg.Pose()
    }

    if (msg.twist !== undefined) {
      resolved.twist = common_msgs.msg.Twist.Resolve(msg.twist)
    }
    else {
      resolved.twist = new common_msgs.msg.Twist()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = common_msgs.msg.Vector3.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new common_msgs.msg.Vector3()
    }

    if (msg.v !== undefined) {
      resolved.v = common_msgs.msg.UnsureVar.Resolve(msg.v)
    }
    else {
      resolved.v = new common_msgs.msg.UnsureVar()
    }

    if (msg.nav_status !== undefined) {
      resolved.nav_status = common_msgs.msg.NavStatus.Resolve(msg.nav_status)
    }
    else {
      resolved.nav_status = new common_msgs.msg.NavStatus()
    }

    if (msg.dr_pose_and_time !== undefined) {
      resolved.dr_pose_and_time = common_msgs.msg.DRPoseWithTime.Resolve(msg.dr_pose_and_time)
    }
    else {
      resolved.dr_pose_and_time = new common_msgs.msg.DRPoseWithTime()
    }

    if (msg.localization_control !== undefined) {
      resolved.localization_control = LocalizationControl.Resolve(msg.localization_control)
    }
    else {
      resolved.localization_control = new LocalizationControl()
    }

    return resolved;
    }
};

module.exports = SensorImu;
