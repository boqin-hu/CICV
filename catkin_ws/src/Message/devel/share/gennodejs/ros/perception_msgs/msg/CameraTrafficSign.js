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
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CameraTrafficSign {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sensor_id = null;
      this.object_id = null;
      this.detect_confidence = null;
      this.type_confidence = null;
      this.position = null;
      this.pixel_central_point = null;
      this.pixel_box_size = null;
      this.type = null;
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
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point32();
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
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraTrafficSign
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.int8(obj.sensor_id, buffer, bufferOffset);
    // Serialize message field [object_id]
    bufferOffset = _serializer.int32(obj.object_id, buffer, bufferOffset);
    // Serialize message field [detect_confidence]
    bufferOffset = _serializer.float32(obj.detect_confidence, buffer, bufferOffset);
    // Serialize message field [type_confidence]
    bufferOffset = _serializer.float32(obj.type_confidence, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [pixel_central_point]
    bufferOffset = Point2D.serialize(obj.pixel_central_point, buffer, bufferOffset);
    // Serialize message field [pixel_box_size]
    bufferOffset = Point2D.serialize(obj.pixel_box_size, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraTrafficSign
    let len;
    let data = new CameraTrafficSign(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [object_id]
    data.object_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [detect_confidence]
    data.detect_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type_confidence]
    data.type_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [pixel_central_point]
    data.pixel_central_point = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [pixel_box_size]
    data.pixel_box_size = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/CameraTrafficSign';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa4bad63f8bf9a9e071f40dbfe042aa9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CameraTrafficSign(null);
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

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point32.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point32()
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

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

module.exports = CameraTrafficSign;
