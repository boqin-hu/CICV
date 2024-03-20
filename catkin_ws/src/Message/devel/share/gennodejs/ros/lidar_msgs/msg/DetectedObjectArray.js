// Auto-generated. Do not edit!

// (in-package lidar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DetectedObject = require('./DetectedObject.js');
let perception_msgs = _finder('perception_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DetectedObjectArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.objects = null;
      this.other_cells = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
      if (initObj.hasOwnProperty('other_cells')) {
        this.other_cells = initObj.other_cells
      }
      else {
        this.other_cells = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectedObjectArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = DetectedObject.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [other_cells]
    // Serialize the length for message field [other_cells]
    bufferOffset = _serializer.uint32(obj.other_cells.length, buffer, bufferOffset);
    obj.other_cells.forEach((val) => {
      bufferOffset = perception_msgs.msg.ObstacleCell.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectedObjectArray
    let len;
    let data = new DetectedObjectArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = DetectedObject.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [other_cells]
    // Deserialize array length for message field [other_cells]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.other_cells = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.other_cells[i] = perception_msgs.msg.ObstacleCell.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.objects.forEach((val) => {
      length += DetectedObject.getMessageSize(val);
    });
    length += 36 * object.other_cells.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lidar_msgs/DetectedObjectArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b3f307cf72108cda33bab72f65a2ef0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    DetectedObject[] objects
    perception_msgs/ObstacleCell[] other_cells
    
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
    MSG: lidar_msgs/DetectedObject
    std_msgs/Header                 header
    
    uint32                          id
    string                          label
    uint8                           type   # 0--car, 1--truck, 2--pedestrian, 3--cyclist, 4--unknown
    float32                         score   
    std_msgs/ColorRGBA              color   # Define this object specific color
    bool                            valid   # Defines if this object is valid, or invalid as defined by the filtering
    
    
    geometry_msgs/Pose              pose
    geometry_msgs/Pose              tracked_pose
    geometry_msgs/Pose              output_pose
    float32                         yaw
    geometry_msgs/Vector3           dimensions
    geometry_msgs/Twist             velocity
    geometry_msgs/Twist             acceleration
    
    float32                         angle       # Angle [0 to 2*PI), allow rotated rects
    ############### Behavior State of the Detected Object
    uint8                           behavior_state # FORWARD_STATE = 0, STOPPING_STATE = 1, BRANCH_LEFT_STATE = 2, BRANCH_RIGHT_STATE = 3, YIELDING_STATE = 4, ACCELERATING_STATE = 5, SLOWDOWN_STATE = 6
    
    uint32                          age
    uint8                           velocitystatus  # speed confidence  0--low, 1--normal, 2--high
    float32                         confidence    # confidence of obstacle
    
    sensor_msgs/PointCloud2         pointcloud
    perception_msgs/ObstacleCell[]  cells
    geometry_msgs/PolygonStamped    convex_hull
    
    bool                            pose_reliable
    bool                            velocity_reliable
    bool                            acceleration_reliable
    
    
    
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
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
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    ================================================================================
    MSG: perception_msgs/ObstacleCell
    int32 idc
    float64 x
    float64 y
    float64 xg
    float64 yg
    ================================================================================
    MSG: geometry_msgs/PolygonStamped
    # This represents a Polygon with reference coordinate frame and timestamp
    Header header
    Polygon polygon
    
    ================================================================================
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectedObjectArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = DetectedObject.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    if (msg.other_cells !== undefined) {
      resolved.other_cells = new Array(msg.other_cells.length);
      for (let i = 0; i < resolved.other_cells.length; ++i) {
        resolved.other_cells[i] = perception_msgs.msg.ObstacleCell.Resolve(msg.other_cells[i]);
      }
    }
    else {
      resolved.other_cells = []
    }

    return resolved;
    }
};

module.exports = DetectedObjectArray;
