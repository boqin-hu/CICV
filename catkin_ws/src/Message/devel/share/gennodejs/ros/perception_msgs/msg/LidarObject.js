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
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LidarObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.object_id = null;
      this.type = null;
      this.detect_confidence = null;
      this.type_confidence = null;
      this.dimensions = null;
      this.cluster_pose = null;
      this.tracked_pose = null;
      this.cluster_yaw = null;
      this.tracked_yaw = null;
      this.azimuth = null;
      this.velocity = null;
      this.acceleration = null;
      this.tracking_state = null;
      this.cells = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('object_id')) {
        this.object_id = initObj.object_id
      }
      else {
        this.object_id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('detect_confidence')) {
        this.detect_confidence = initObj.detect_confidence
      }
      else {
        this.detect_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('type_confidence')) {
        this.type_confidence = initObj.type_confidence
      }
      else {
        this.type_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('dimensions')) {
        this.dimensions = initObj.dimensions
      }
      else {
        this.dimensions = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('cluster_pose')) {
        this.cluster_pose = initObj.cluster_pose
      }
      else {
        this.cluster_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('tracked_pose')) {
        this.tracked_pose = initObj.tracked_pose
      }
      else {
        this.tracked_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('cluster_yaw')) {
        this.cluster_yaw = initObj.cluster_yaw
      }
      else {
        this.cluster_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('tracked_yaw')) {
        this.tracked_yaw = initObj.tracked_yaw
      }
      else {
        this.tracked_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('azimuth')) {
        this.azimuth = initObj.azimuth
      }
      else {
        this.azimuth = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('tracking_state')) {
        this.tracking_state = initObj.tracking_state
      }
      else {
        this.tracking_state = 0;
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
    // Serializes a message object of type LidarObject
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [object_id]
    bufferOffset = _serializer.uint32(obj.object_id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [detect_confidence]
    bufferOffset = _serializer.float32(obj.detect_confidence, buffer, bufferOffset);
    // Serialize message field [type_confidence]
    bufferOffset = _serializer.float32(obj.type_confidence, buffer, bufferOffset);
    // Serialize message field [dimensions]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.dimensions, buffer, bufferOffset);
    // Serialize message field [cluster_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.cluster_pose, buffer, bufferOffset);
    // Serialize message field [tracked_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.tracked_pose, buffer, bufferOffset);
    // Serialize message field [cluster_yaw]
    bufferOffset = _serializer.float32(obj.cluster_yaw, buffer, bufferOffset);
    // Serialize message field [tracked_yaw]
    bufferOffset = _serializer.float32(obj.tracked_yaw, buffer, bufferOffset);
    // Serialize message field [azimuth]
    bufferOffset = _serializer.float32(obj.azimuth, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [tracking_state]
    bufferOffset = _serializer.uint8(obj.tracking_state, buffer, bufferOffset);
    // Serialize message field [cells]
    // Serialize the length for message field [cells]
    bufferOffset = _serializer.uint32(obj.cells.length, buffer, bufferOffset);
    obj.cells.forEach((val) => {
      bufferOffset = ObstacleCell.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarObject
    let len;
    let data = new LidarObject(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_id]
    data.object_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [detect_confidence]
    data.detect_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type_confidence]
    data.type_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dimensions]
    data.dimensions = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_pose]
    data.cluster_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [tracked_pose]
    data.tracked_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_yaw]
    data.cluster_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tracked_yaw]
    data.tracked_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [azimuth]
    data.azimuth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [tracking_state]
    data.tracking_state = _deserializer.uint8(buffer, bufferOffset);
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
    length += 36 * object.cells.length;
    return length + 214;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/LidarObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a5facf9bec33cccce93373238a9f570';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LidarObject(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.object_id !== undefined) {
      resolved.object_id = msg.object_id;
    }
    else {
      resolved.object_id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.detect_confidence !== undefined) {
      resolved.detect_confidence = msg.detect_confidence;
    }
    else {
      resolved.detect_confidence = 0.0
    }

    if (msg.type_confidence !== undefined) {
      resolved.type_confidence = msg.type_confidence;
    }
    else {
      resolved.type_confidence = 0.0
    }

    if (msg.dimensions !== undefined) {
      resolved.dimensions = geometry_msgs.msg.Vector3.Resolve(msg.dimensions)
    }
    else {
      resolved.dimensions = new geometry_msgs.msg.Vector3()
    }

    if (msg.cluster_pose !== undefined) {
      resolved.cluster_pose = geometry_msgs.msg.Pose.Resolve(msg.cluster_pose)
    }
    else {
      resolved.cluster_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.tracked_pose !== undefined) {
      resolved.tracked_pose = geometry_msgs.msg.Pose.Resolve(msg.tracked_pose)
    }
    else {
      resolved.tracked_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.cluster_yaw !== undefined) {
      resolved.cluster_yaw = msg.cluster_yaw;
    }
    else {
      resolved.cluster_yaw = 0.0
    }

    if (msg.tracked_yaw !== undefined) {
      resolved.tracked_yaw = msg.tracked_yaw;
    }
    else {
      resolved.tracked_yaw = 0.0
    }

    if (msg.azimuth !== undefined) {
      resolved.azimuth = msg.azimuth;
    }
    else {
      resolved.azimuth = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = geometry_msgs.msg.Vector3.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.tracking_state !== undefined) {
      resolved.tracking_state = msg.tracking_state;
    }
    else {
      resolved.tracking_state = 0
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

module.exports = LidarObject;
