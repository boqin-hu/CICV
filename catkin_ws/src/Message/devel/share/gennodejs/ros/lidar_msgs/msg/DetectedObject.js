// Auto-generated. Do not edit!

// (in-package lidar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let perception_msgs = _finder('perception_msgs');
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DetectedObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.label = null;
      this.type = null;
      this.score = null;
      this.color = null;
      this.valid = null;
      this.pose = null;
      this.tracked_pose = null;
      this.output_pose = null;
      this.yaw = null;
      this.dimensions = null;
      this.velocity = null;
      this.acceleration = null;
      this.angle = null;
      this.behavior_state = null;
      this.age = null;
      this.velocitystatus = null;
      this.confidence = null;
      this.pointcloud = null;
      this.cells = null;
      this.convex_hull = null;
      this.pose_reliable = null;
      this.velocity_reliable = null;
      this.acceleration_reliable = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = new std_msgs.msg.ColorRGBA();
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('tracked_pose')) {
        this.tracked_pose = initObj.tracked_pose
      }
      else {
        this.tracked_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('output_pose')) {
        this.output_pose = initObj.output_pose
      }
      else {
        this.output_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('dimensions')) {
        this.dimensions = initObj.dimensions
      }
      else {
        this.dimensions = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('behavior_state')) {
        this.behavior_state = initObj.behavior_state
      }
      else {
        this.behavior_state = 0;
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
      if (initObj.hasOwnProperty('velocitystatus')) {
        this.velocitystatus = initObj.velocitystatus
      }
      else {
        this.velocitystatus = 0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('pointcloud')) {
        this.pointcloud = initObj.pointcloud
      }
      else {
        this.pointcloud = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('cells')) {
        this.cells = initObj.cells
      }
      else {
        this.cells = [];
      }
      if (initObj.hasOwnProperty('convex_hull')) {
        this.convex_hull = initObj.convex_hull
      }
      else {
        this.convex_hull = new geometry_msgs.msg.PolygonStamped();
      }
      if (initObj.hasOwnProperty('pose_reliable')) {
        this.pose_reliable = initObj.pose_reliable
      }
      else {
        this.pose_reliable = false;
      }
      if (initObj.hasOwnProperty('velocity_reliable')) {
        this.velocity_reliable = initObj.velocity_reliable
      }
      else {
        this.velocity_reliable = false;
      }
      if (initObj.hasOwnProperty('acceleration_reliable')) {
        this.acceleration_reliable = initObj.acceleration_reliable
      }
      else {
        this.acceleration_reliable = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectedObject
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.color, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [tracked_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.tracked_pose, buffer, bufferOffset);
    // Serialize message field [output_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.output_pose, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [dimensions]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.dimensions, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    // Serialize message field [behavior_state]
    bufferOffset = _serializer.uint8(obj.behavior_state, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.uint32(obj.age, buffer, bufferOffset);
    // Serialize message field [velocitystatus]
    bufferOffset = _serializer.uint8(obj.velocitystatus, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [pointcloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.pointcloud, buffer, bufferOffset);
    // Serialize message field [cells]
    // Serialize the length for message field [cells]
    bufferOffset = _serializer.uint32(obj.cells.length, buffer, bufferOffset);
    obj.cells.forEach((val) => {
      bufferOffset = perception_msgs.msg.ObstacleCell.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [convex_hull]
    bufferOffset = geometry_msgs.msg.PolygonStamped.serialize(obj.convex_hull, buffer, bufferOffset);
    // Serialize message field [pose_reliable]
    bufferOffset = _serializer.bool(obj.pose_reliable, buffer, bufferOffset);
    // Serialize message field [velocity_reliable]
    bufferOffset = _serializer.bool(obj.velocity_reliable, buffer, bufferOffset);
    // Serialize message field [acceleration_reliable]
    bufferOffset = _serializer.bool(obj.acceleration_reliable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectedObject
    let len;
    let data = new DetectedObject(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [tracked_pose]
    data.tracked_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [output_pose]
    data.output_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dimensions]
    data.dimensions = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [behavior_state]
    data.behavior_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [velocitystatus]
    data.velocitystatus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pointcloud]
    data.pointcloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [cells]
    // Deserialize array length for message field [cells]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cells = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cells[i] = perception_msgs.msg.ObstacleCell.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [convex_hull]
    data.convex_hull = geometry_msgs.msg.PolygonStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_reliable]
    data.pose_reliable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [velocity_reliable]
    data.velocity_reliable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [acceleration_reliable]
    data.acceleration_reliable = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.label);
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.pointcloud);
    length += 36 * object.cells.length;
    length += geometry_msgs.msg.PolygonStamped.getMessageSize(object.convex_hull);
    return length + 343;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lidar_msgs/DetectedObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9aeea43fbddadcbfb4c8da6ce992363';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DetectedObject(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.color !== undefined) {
      resolved.color = std_msgs.msg.ColorRGBA.Resolve(msg.color)
    }
    else {
      resolved.color = new std_msgs.msg.ColorRGBA()
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.tracked_pose !== undefined) {
      resolved.tracked_pose = geometry_msgs.msg.Pose.Resolve(msg.tracked_pose)
    }
    else {
      resolved.tracked_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.output_pose !== undefined) {
      resolved.output_pose = geometry_msgs.msg.Pose.Resolve(msg.output_pose)
    }
    else {
      resolved.output_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.dimensions !== undefined) {
      resolved.dimensions = geometry_msgs.msg.Vector3.Resolve(msg.dimensions)
    }
    else {
      resolved.dimensions = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Twist.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Twist()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = geometry_msgs.msg.Twist.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new geometry_msgs.msg.Twist()
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.behavior_state !== undefined) {
      resolved.behavior_state = msg.behavior_state;
    }
    else {
      resolved.behavior_state = 0
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    if (msg.velocitystatus !== undefined) {
      resolved.velocitystatus = msg.velocitystatus;
    }
    else {
      resolved.velocitystatus = 0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.pointcloud !== undefined) {
      resolved.pointcloud = sensor_msgs.msg.PointCloud2.Resolve(msg.pointcloud)
    }
    else {
      resolved.pointcloud = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.cells !== undefined) {
      resolved.cells = new Array(msg.cells.length);
      for (let i = 0; i < resolved.cells.length; ++i) {
        resolved.cells[i] = perception_msgs.msg.ObstacleCell.Resolve(msg.cells[i]);
      }
    }
    else {
      resolved.cells = []
    }

    if (msg.convex_hull !== undefined) {
      resolved.convex_hull = geometry_msgs.msg.PolygonStamped.Resolve(msg.convex_hull)
    }
    else {
      resolved.convex_hull = new geometry_msgs.msg.PolygonStamped()
    }

    if (msg.pose_reliable !== undefined) {
      resolved.pose_reliable = msg.pose_reliable;
    }
    else {
      resolved.pose_reliable = false
    }

    if (msg.velocity_reliable !== undefined) {
      resolved.velocity_reliable = msg.velocity_reliable;
    }
    else {
      resolved.velocity_reliable = false
    }

    if (msg.acceleration_reliable !== undefined) {
      resolved.acceleration_reliable = msg.acceleration_reliable;
    }
    else {
      resolved.acceleration_reliable = false
    }

    return resolved;
    }
};

module.exports = DetectedObject;
