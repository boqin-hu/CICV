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
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RadarObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.is_invalid = null;
      this.is_matched = null;
      this.is_still = null;
      this.cluster_mask = null;
      this.radar_id = null;
      this.object_id = null;
      this.type = null;
      this.life_count = null;
      this.rcs = null;
      this.confidence = null;
      this.azimuth = null;
      this.position = null;
      this.velocity = null;
      this.acceleration = null;
      this.dimensions = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('is_invalid')) {
        this.is_invalid = initObj.is_invalid
      }
      else {
        this.is_invalid = false;
      }
      if (initObj.hasOwnProperty('is_matched')) {
        this.is_matched = initObj.is_matched
      }
      else {
        this.is_matched = false;
      }
      if (initObj.hasOwnProperty('is_still')) {
        this.is_still = initObj.is_still
      }
      else {
        this.is_still = false;
      }
      if (initObj.hasOwnProperty('cluster_mask')) {
        this.cluster_mask = initObj.cluster_mask
      }
      else {
        this.cluster_mask = 0;
      }
      if (initObj.hasOwnProperty('radar_id')) {
        this.radar_id = initObj.radar_id
      }
      else {
        this.radar_id = 0;
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
      if (initObj.hasOwnProperty('life_count')) {
        this.life_count = initObj.life_count
      }
      else {
        this.life_count = 0;
      }
      if (initObj.hasOwnProperty('rcs')) {
        this.rcs = initObj.rcs
      }
      else {
        this.rcs = 0.0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('azimuth')) {
        this.azimuth = initObj.azimuth
      }
      else {
        this.azimuth = 0.0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarObject
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [is_invalid]
    bufferOffset = _serializer.bool(obj.is_invalid, buffer, bufferOffset);
    // Serialize message field [is_matched]
    bufferOffset = _serializer.bool(obj.is_matched, buffer, bufferOffset);
    // Serialize message field [is_still]
    bufferOffset = _serializer.bool(obj.is_still, buffer, bufferOffset);
    // Serialize message field [cluster_mask]
    bufferOffset = _serializer.uint8(obj.cluster_mask, buffer, bufferOffset);
    // Serialize message field [radar_id]
    bufferOffset = _serializer.uint8(obj.radar_id, buffer, bufferOffset);
    // Serialize message field [object_id]
    bufferOffset = _serializer.uint16(obj.object_id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [life_count]
    bufferOffset = _serializer.uint16(obj.life_count, buffer, bufferOffset);
    // Serialize message field [rcs]
    bufferOffset = _serializer.float32(obj.rcs, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [azimuth]
    bufferOffset = _serializer.float32(obj.azimuth, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [dimensions]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.dimensions, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarObject
    let len;
    let data = new RadarObject(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_invalid]
    data.is_invalid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_matched]
    data.is_matched = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_still]
    data.is_still = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cluster_mask]
    data.cluster_mask = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [radar_id]
    data.radar_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [object_id]
    data.object_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [life_count]
    data.life_count = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [rcs]
    data.rcs = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [azimuth]
    data.azimuth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [dimensions]
    data.dimensions = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 106;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/RadarObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '576c9844a5e307d0c5f0b7d6a73008c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    bool is_invalid
    bool is_matched
    bool is_still
    uint8 cluster_mask
    uint8 radar_id    # 0--f_radar, 1--fr_radar, 3--rr_radar, 5--rl_radar, 7--fl_radar
    uint16 object_id  #
    uint8 type        # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck
    
    uint16 life_count  #
    float32 rcs 
    float32 confidence
    float32 azimuth    # car-body(R-F-U)  R--0, F--90,  (0,360)
    
    geometry_msgs/Point32 position  # relative position, car-body(R-F-U)
    geometry_msgs/Vector3 velocity  # relative velocity, car-body(R-F-U)
    geometry_msgs/Vector3 acceleration  # relative acceleration, car-body(R-F-U)
    geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height
    
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarObject(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.is_invalid !== undefined) {
      resolved.is_invalid = msg.is_invalid;
    }
    else {
      resolved.is_invalid = false
    }

    if (msg.is_matched !== undefined) {
      resolved.is_matched = msg.is_matched;
    }
    else {
      resolved.is_matched = false
    }

    if (msg.is_still !== undefined) {
      resolved.is_still = msg.is_still;
    }
    else {
      resolved.is_still = false
    }

    if (msg.cluster_mask !== undefined) {
      resolved.cluster_mask = msg.cluster_mask;
    }
    else {
      resolved.cluster_mask = 0
    }

    if (msg.radar_id !== undefined) {
      resolved.radar_id = msg.radar_id;
    }
    else {
      resolved.radar_id = 0
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

    if (msg.life_count !== undefined) {
      resolved.life_count = msg.life_count;
    }
    else {
      resolved.life_count = 0
    }

    if (msg.rcs !== undefined) {
      resolved.rcs = msg.rcs;
    }
    else {
      resolved.rcs = 0.0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.azimuth !== undefined) {
      resolved.azimuth = msg.azimuth;
    }
    else {
      resolved.azimuth = 0.0
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

    return resolved;
    }
};

module.exports = RadarObject;
