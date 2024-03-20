// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraTrafficSign = require('./CameraTrafficSign.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CameraTrafficSignList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.frame_number = null;
      this.sensor_source = null;
      this.cameratrafficsigns = null;
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
      if (initObj.hasOwnProperty('cameratrafficsigns')) {
        this.cameratrafficsigns = initObj.cameratrafficsigns
      }
      else {
        this.cameratrafficsigns = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraTrafficSignList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [frame_number]
    bufferOffset = _serializer.uint64(obj.frame_number, buffer, bufferOffset);
    // Serialize message field [sensor_source]
    bufferOffset = _serializer.int8(obj.sensor_source, buffer, bufferOffset);
    // Serialize message field [cameratrafficsigns]
    // Serialize the length for message field [cameratrafficsigns]
    bufferOffset = _serializer.uint32(obj.cameratrafficsigns.length, buffer, bufferOffset);
    obj.cameratrafficsigns.forEach((val) => {
      bufferOffset = CameraTrafficSign.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraTrafficSignList
    let len;
    let data = new CameraTrafficSignList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [frame_number]
    data.frame_number = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [sensor_source]
    data.sensor_source = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [cameratrafficsigns]
    // Deserialize array length for message field [cameratrafficsigns]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cameratrafficsigns = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cameratrafficsigns[i] = CameraTrafficSign.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.cameratrafficsigns.forEach((val) => {
      length += CameraTrafficSign.getMessageSize(val);
    });
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/CameraTrafficSignList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f0958cb02585f0cef94cf9bbcfcf089f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint64 frame_number
    int8 sensor_source
    CameraTrafficSign[] cameratrafficsigns
    
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
    MSG: perception_msgs/CameraTrafficSign
    Header header
    int8 sensor_id
    int32 object_id
    float32 detect_confidence
    float32 type_confidence
    geometry_msgs/Point32 position  # relative position, car-body(R-F-U)
    Point2D pixel_central_point 
    Point2D pixel_box_size
    int32 type
    
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
    const resolved = new CameraTrafficSignList(null);
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

    if (msg.cameratrafficsigns !== undefined) {
      resolved.cameratrafficsigns = new Array(msg.cameratrafficsigns.length);
      for (let i = 0; i < resolved.cameratrafficsigns.length; ++i) {
        resolved.cameratrafficsigns[i] = CameraTrafficSign.Resolve(msg.cameratrafficsigns[i]);
      }
    }
    else {
      resolved.cameratrafficsigns = []
    }

    return resolved;
    }
};

module.exports = CameraTrafficSignList;
