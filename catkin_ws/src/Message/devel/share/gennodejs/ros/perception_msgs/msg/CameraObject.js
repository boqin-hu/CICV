// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2D = require('./Point2D.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class CameraObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sensor_id = null;
      this.object_id = null;
      this.detect_confidence = null;
      this.type_confidence = null;
      this.azimuth = null;
      this.yaw = null;
      this.type = null;
      this.tracking_time = null;
      this.tracking_level = null;
      this.lane_assignment = null;
      this.position = null;
      this.velocity = null;
      this.acceleration = null;
      this.dimensions = null;
      this.pixel_central_point = null;
      this.pixel_box_size = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sensor_id')) {
        this.sensor_id = initObj.sensor_id
      }
      else {
        this.sensor_id = 0;
      }
      if (initObj.hasOwnProperty('object_id')) {
        this.object_id = initObj.object_id
      }
      else {
        this.object_id = 0;
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
      if (initObj.hasOwnProperty('azimuth')) {
        this.azimuth = initObj.azimuth
      }
      else {
        this.azimuth = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('tracking_time')) {
        this.tracking_time = initObj.tracking_time
      }
      else {
        this.tracking_time = 0.0;
      }
      if (initObj.hasOwnProperty('tracking_level')) {
        this.tracking_level = initObj.tracking_level
      }
      else {
        this.tracking_level = 0;
      }
      if (initObj.hasOwnProperty('lane_assignment')) {
        this.lane_assignment = initObj.lane_assignment
      }
      else {
        this.lane_assignment = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point32();
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
      if (initObj.hasOwnProperty('dimensions')) {
        this.dimensions = initObj.dimensions
      }
      else {
        this.dimensions = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('pixel_central_point')) {
        this.pixel_central_point = initObj.pixel_central_point
      }
      else {
        this.pixel_central_point = new Point2D();
      }
      if (initObj.hasOwnProperty('pixel_box_size')) {
        this.pixel_box_size = initObj.pixel_box_size
      }
      else {
        this.pixel_box_size = new Point2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraObject
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.uint8(obj.sensor_id, buffer, bufferOffset);
    // Serialize message field [object_id]
    bufferOffset = _serializer.uint32(obj.object_id, buffer, bufferOffset);
    // Serialize message field [detect_confidence]
    bufferOffset = _serializer.float32(obj.detect_confidence, buffer, bufferOffset);
    // Serialize message field [type_confidence]
    bufferOffset = _serializer.float32(obj.type_confidence, buffer, bufferOffset);
    // Serialize message field [azimuth]
    bufferOffset = _serializer.float32(obj.azimuth, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [tracking_time]
    bufferOffset = _serializer.float32(obj.tracking_time, buffer, bufferOffset);
    // Serialize message field [tracking_level]
    bufferOffset = _serializer.int8(obj.tracking_level, buffer, bufferOffset);
    // Serialize message field [lane_assignment]
    bufferOffset = _serializer.int8(obj.lane_assignment, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [dimensions]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.dimensions, buffer, bufferOffset);
    // Serialize message field [pixel_central_point]
    bufferOffset = Point2D.serialize(obj.pixel_central_point, buffer, bufferOffset);
    // Serialize message field [pixel_box_size]
    bufferOffset = Point2D.serialize(obj.pixel_box_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraObject
    let len;
    let data = new CameraObject(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [object_id]
    data.object_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [detect_confidence]
    data.detect_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type_confidence]
    data.type_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [azimuth]
    data.azimuth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tracking_time]
    data.tracking_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tracking_level]
    data.tracking_level = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [lane_assignment]
    data.lane_assignment = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [dimensions]
    data.dimensions = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [pixel_central_point]
    data.pixel_central_point = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [pixel_box_size]
    data.pixel_box_size = Point2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/CameraObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '411f3ce7123561d2bd0f9079d3ec3e83';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8  sensor_id  # sensor id, 0-front_long_focus, 1-front_short_focus, 2-right, 3-rear, 4-left
    uint32 object_id
    float32 detect_confidence
    float32 type_confidence
    float32 azimuth
    float32 yaw  # car-body(R-F-U)  R--0, F--90,  (0,360)
    
    uint8 type  # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck
    float32 tracking_time   #
    int8 tracking_level     #
    int8 lane_assignment    #
    
    geometry_msgs/Point32 position  # relative position, car-body(R-F-U)
    geometry_msgs/Vector3 velocity  # relative velocity, car-body(R-F-U)
    geometry_msgs/Vector3 acceleration  # relative acceleration, car-body(R-F-U)
    geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height
    
    Point2D pixel_central_point 
    Point2D pixel_box_size
    
    
     
    
    
    
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
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
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
    MSG: perception_msgs/Point2D
    float64 x
    float64 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraObject(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sensor_id !== undefined) {
      resolved.sensor_id = msg.sensor_id;
    }
    else {
      resolved.sensor_id = 0
    }

    if (msg.object_id !== undefined) {
      resolved.object_id = msg.object_id;
    }
    else {
      resolved.object_id = 0
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

    if (msg.azimuth !== undefined) {
      resolved.azimuth = msg.azimuth;
    }
    else {
      resolved.azimuth = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.tracking_time !== undefined) {
      resolved.tracking_time = msg.tracking_time;
    }
    else {
      resolved.tracking_time = 0.0
    }

    if (msg.tracking_level !== undefined) {
      resolved.tracking_level = msg.tracking_level;
    }
    else {
      resolved.tracking_level = 0
    }

    if (msg.lane_assignment !== undefined) {
      resolved.lane_assignment = msg.lane_assignment;
    }
    else {
      resolved.lane_assignment = 0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point32.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point32()
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

    if (msg.dimensions !== undefined) {
      resolved.dimensions = geometry_msgs.msg.Vector3.Resolve(msg.dimensions)
    }
    else {
      resolved.dimensions = new geometry_msgs.msg.Vector3()
    }

    if (msg.pixel_central_point !== undefined) {
      resolved.pixel_central_point = Point2D.Resolve(msg.pixel_central_point)
    }
    else {
      resolved.pixel_central_point = new Point2D()
    }

    if (msg.pixel_box_size !== undefined) {
      resolved.pixel_box_size = Point2D.Resolve(msg.pixel_box_size)
    }
    else {
      resolved.pixel_box_size = new Point2D()
    }

    return resolved;
    }
};

module.exports = CameraObject;
