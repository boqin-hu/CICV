// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LidarObject = require('./LidarObject.js');
let ObstacleCell = require('./ObstacleCell.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LidarObjectList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.frame_number = null;
      this.sensor_source = null;
      this.lidarobjects = null;
      this.cells = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('frame_number')) {
        this.frame_number = initObj.frame_number
      }
      else {
        this.frame_number = 0;
      }
      if (initObj.hasOwnProperty('sensor_source')) {
        this.sensor_source = initObj.sensor_source
      }
      else {
        this.sensor_source = 0;
      }
      if (initObj.hasOwnProperty('lidarobjects')) {
        this.lidarobjects = initObj.lidarobjects
      }
      else {
        this.lidarobjects = [];
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
    // Serializes a message object of type LidarObjectList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [frame_number]
    bufferOffset = _serializer.uint64(obj.frame_number, buffer, bufferOffset);
    // Serialize message field [sensor_source]
    bufferOffset = _serializer.uint8(obj.sensor_source, buffer, bufferOffset);
    // Serialize message field [lidarobjects]
    // Serialize the length for message field [lidarobjects]
    bufferOffset = _serializer.uint32(obj.lidarobjects.length, buffer, bufferOffset);
    obj.lidarobjects.forEach((val) => {
      bufferOffset = LidarObject.serialize(val, buffer, bufferOffset);
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
    //deserializes a message object of type LidarObjectList
    let len;
    let data = new LidarObjectList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [frame_number]
    data.frame_number = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [sensor_source]
    data.sensor_source = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lidarobjects]
    // Deserialize array length for message field [lidarobjects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lidarobjects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lidarobjects[i] = LidarObject.deserialize(buffer, bufferOffset)
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
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.lidarobjects.forEach((val) => {
      length += LidarObject.getMessageSize(val);
    });
    length += 36 * object.cells.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/LidarObjectList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71f02ff6fa7fd9520b470b404aed47ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint64 frame_number  # 
    uint8 sensor_source  # 0--radar, 1--lidar. 2--camera,
    
    LidarObject[] lidarobjects  #
    ObstacleCell[] cells  # 
    
    
    
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
    MSG: perception_msgs/LidarObject
    Header header
    
    uint32 object_id
    uint8  type  # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck
    
    float32 detect_confidence
    float32 type_confidence
    
    geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height
    geometry_msgs/Pose cluster_pose   # the clustered pose of obj; car-body(F-L-U)
    geometry_msgs/Pose tracked_pose   # the tracked pose of obj; car-body(F-L-U)
    
    float32 cluster_yaw  # yaw by clustering, (0,360), F--0, L--90,  car-body(F-L-U)
    float32 tracked_yaw  # yaw by tracking, (0,360), F--0, L--90, car-body(F-L-U)
    
    float32 azimuth  # (0,360), F--0, L--90, car-body(F-L-U)
    
    geometry_msgs/Vector3 velocity       # car-body(F-L-U)
    geometry_msgs/Vector3 acceleration   # car-body(F-L-U)
    
    uint8 tracking_state  # tracker level 1--init, 4--stable, 5--cover, 10--lose
    ObstacleCell[] cells  # 
    
    
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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
    const resolved = new LidarObjectList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.frame_number !== undefined) {
      resolved.frame_number = msg.frame_number;
    }
    else {
      resolved.frame_number = 0
    }

    if (msg.sensor_source !== undefined) {
      resolved.sensor_source = msg.sensor_source;
    }
    else {
      resolved.sensor_source = 0
    }

    if (msg.lidarobjects !== undefined) {
      resolved.lidarobjects = new Array(msg.lidarobjects.length);
      for (let i = 0; i < resolved.lidarobjects.length; ++i) {
        resolved.lidarobjects[i] = LidarObject.Resolve(msg.lidarobjects[i]);
      }
    }
    else {
      resolved.lidarobjects = []
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

module.exports = LidarObjectList;
