// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraObject = require('./CameraObject.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CameraObjectList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.frame_number = null;
      this.sensor_source = null;
      this.cameraobjects = null;
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
      if (initObj.hasOwnProperty('cameraobjects')) {
        this.cameraobjects = initObj.cameraobjects
      }
      else {
        this.cameraobjects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraObjectList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [frame_number]
    bufferOffset = _serializer.uint64(obj.frame_number, buffer, bufferOffset);
    // Serialize message field [sensor_source]
    bufferOffset = _serializer.int8(obj.sensor_source, buffer, bufferOffset);
    // Serialize message field [cameraobjects]
    // Serialize the length for message field [cameraobjects]
    bufferOffset = _serializer.uint32(obj.cameraobjects.length, buffer, bufferOffset);
    obj.cameraobjects.forEach((val) => {
      bufferOffset = CameraObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraObjectList
    let len;
    let data = new CameraObjectList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [frame_number]
    data.frame_number = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [sensor_source]
    data.sensor_source = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [cameraobjects]
    // Deserialize array length for message field [cameraobjects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cameraobjects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cameraobjects[i] = CameraObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.cameraobjects.forEach((val) => {
      length += CameraObject.getMessageSize(val);
    });
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/CameraObjectList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9fc086e4304c6b87b48ce29317b562a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint64 frame_number
    int8 sensor_source
    CameraObject[] cameraobjects
    
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
    MSG: perception_msgs/CameraObject
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
    const resolved = new CameraObjectList(null);
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

    if (msg.cameraobjects !== undefined) {
      resolved.cameraobjects = new Array(msg.cameraobjects.length);
      for (let i = 0; i < resolved.cameraobjects.length; ++i) {
        resolved.cameraobjects[i] = CameraObject.Resolve(msg.cameraobjects[i]);
      }
    }
    else {
      resolved.cameraobjects = []
    }

    return resolved;
    }
};

module.exports = CameraObjectList;
