// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraTrafficLight = require('./CameraTrafficLight.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CameraTrafficLightList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.frame_id = null;
      this.sensor_source = null;
      this.cameratrafficlights = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = 0;
      }
      if (initObj.hasOwnProperty('sensor_source')) {
        this.sensor_source = initObj.sensor_source
      }
      else {
        this.sensor_source = 0;
      }
      if (initObj.hasOwnProperty('cameratrafficlights')) {
        this.cameratrafficlights = initObj.cameratrafficlights
      }
      else {
        this.cameratrafficlights = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraTrafficLightList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.uint64(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [sensor_source]
    bufferOffset = _serializer.int8(obj.sensor_source, buffer, bufferOffset);
    // Serialize message field [cameratrafficlights]
    // Serialize the length for message field [cameratrafficlights]
    bufferOffset = _serializer.uint32(obj.cameratrafficlights.length, buffer, bufferOffset);
    obj.cameratrafficlights.forEach((val) => {
      bufferOffset = CameraTrafficLight.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraTrafficLightList
    let len;
    let data = new CameraTrafficLightList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [sensor_source]
    data.sensor_source = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [cameratrafficlights]
    // Deserialize array length for message field [cameratrafficlights]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cameratrafficlights = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cameratrafficlights[i] = CameraTrafficLight.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.cameratrafficlights.forEach((val) => {
      length += CameraTrafficLight.getMessageSize(val);
    });
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/CameraTrafficLightList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0445fe87f21f8f8e970fd72ec107e8eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint64 frame_id
    int8 sensor_source  # 0--radar, 1--lidar. 2--camera,
    CameraTrafficLight[] cameratrafficlights
    
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
    MSG: perception_msgs/CameraTrafficLight
    Header header
    
    int8 sensor_id  # sensor id, 0-front_long_focus, 1-front_short_focus, 2-right, 3-rear, 4-left
    int32 object_id
    float32 detect_confidence
    float32 type_confidence
    
    geometry_msgs/Point32 position  # relative position, car-body(R-F-U)
    
    Point2D pixel_central_point 
    Point2D pixel_box_size
    
    uint8 light_color  # 0--rad, 1--green, 2--yellow, 3--off or unknow
    uint8 light_shape  # 0--round, 1--left_arrow, 2--other
    
    
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
    const resolved = new CameraTrafficLightList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = 0
    }

    if (msg.sensor_source !== undefined) {
      resolved.sensor_source = msg.sensor_source;
    }
    else {
      resolved.sensor_source = 0
    }

    if (msg.cameratrafficlights !== undefined) {
      resolved.cameratrafficlights = new Array(msg.cameratrafficlights.length);
      for (let i = 0; i < resolved.cameratrafficlights.length; ++i) {
        resolved.cameratrafficlights[i] = CameraTrafficLight.Resolve(msg.cameratrafficlights[i]);
      }
    }
    else {
      resolved.cameratrafficlights = []
    }

    return resolved;
    }
};

module.exports = CameraTrafficLightList;
