// Generated by gencpp from file perception_msgs/LidarObjectList.msg
// DO NOT EDIT!


#ifndef PERCEPTION_MSGS_MESSAGE_LIDAROBJECTLIST_H
#define PERCEPTION_MSGS_MESSAGE_LIDAROBJECTLIST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <perception_msgs/LidarObject.h>
#include <perception_msgs/ObstacleCell.h>

namespace perception_msgs
{
template <class ContainerAllocator>
struct LidarObjectList_
{
  typedef LidarObjectList_<ContainerAllocator> Type;

  LidarObjectList_()
    : header()
    , frame_number(0)
    , sensor_source(0)
    , lidarobjects()
    , cells()  {
    }
  LidarObjectList_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , frame_number(0)
    , sensor_source(0)
    , lidarobjects(_alloc)
    , cells(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint64_t _frame_number_type;
  _frame_number_type frame_number;

   typedef uint8_t _sensor_source_type;
  _sensor_source_type sensor_source;

   typedef std::vector< ::perception_msgs::LidarObject_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::perception_msgs::LidarObject_<ContainerAllocator> >> _lidarobjects_type;
  _lidarobjects_type lidarobjects;

   typedef std::vector< ::perception_msgs::ObstacleCell_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::perception_msgs::ObstacleCell_<ContainerAllocator> >> _cells_type;
  _cells_type cells;





  typedef boost::shared_ptr< ::perception_msgs::LidarObjectList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::perception_msgs::LidarObjectList_<ContainerAllocator> const> ConstPtr;

}; // struct LidarObjectList_

typedef ::perception_msgs::LidarObjectList_<std::allocator<void> > LidarObjectList;

typedef boost::shared_ptr< ::perception_msgs::LidarObjectList > LidarObjectListPtr;
typedef boost::shared_ptr< ::perception_msgs::LidarObjectList const> LidarObjectListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::perception_msgs::LidarObjectList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::perception_msgs::LidarObjectList_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::perception_msgs::LidarObjectList_<ContainerAllocator1> & lhs, const ::perception_msgs::LidarObjectList_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.frame_number == rhs.frame_number &&
    lhs.sensor_source == rhs.sensor_source &&
    lhs.lidarobjects == rhs.lidarobjects &&
    lhs.cells == rhs.cells;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::perception_msgs::LidarObjectList_<ContainerAllocator1> & lhs, const ::perception_msgs::LidarObjectList_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace perception_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::LidarObjectList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::LidarObjectList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::LidarObjectList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::LidarObjectList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::LidarObjectList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::LidarObjectList_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::perception_msgs::LidarObjectList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "71f02ff6fa7fd9520b470b404aed47ad";
  }

  static const char* value(const ::perception_msgs::LidarObjectList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x71f02ff6fa7fd952ULL;
  static const uint64_t static_value2 = 0x0b470b404aed47adULL;
};

template<class ContainerAllocator>
struct DataType< ::perception_msgs::LidarObjectList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "perception_msgs/LidarObjectList";
  }

  static const char* value(const ::perception_msgs::LidarObjectList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::perception_msgs::LidarObjectList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"uint64 frame_number  # \n"
"uint8 sensor_source  # 0--radar, 1--lidar. 2--camera,\n"
"\n"
"LidarObject[] lidarobjects  #\n"
"ObstacleCell[] cells  # \n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: perception_msgs/LidarObject\n"
"Header header\n"
"\n"
"uint32 object_id\n"
"uint8  type  # 0--unknown 1--pedestrian 2--cyclist 3--car 4--truck\n"
"\n"
"float32 detect_confidence\n"
"float32 type_confidence\n"
"\n"
"geometry_msgs/Vector3 dimensions  # the scale of obj  x--length, y--width, z--height\n"
"geometry_msgs/Pose cluster_pose   # the clustered pose of obj; car-body(F-L-U)\n"
"geometry_msgs/Pose tracked_pose   # the tracked pose of obj; car-body(F-L-U)\n"
"\n"
"float32 cluster_yaw  # yaw by clustering, (0,360), F--0, L--90,  car-body(F-L-U)\n"
"float32 tracked_yaw  # yaw by tracking, (0,360), F--0, L--90, car-body(F-L-U)\n"
"\n"
"float32 azimuth  # (0,360), F--0, L--90, car-body(F-L-U)\n"
"\n"
"geometry_msgs/Vector3 velocity       # car-body(F-L-U)\n"
"geometry_msgs/Vector3 acceleration   # car-body(F-L-U)\n"
"\n"
"uint8 tracking_state  # tracker level 1--init, 4--stable, 5--cover, 10--lose\n"
"ObstacleCell[] cells  # \n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: perception_msgs/ObstacleCell\n"
"int32 idc\n"
"float64 x\n"
"float64 y\n"
"float64 xg\n"
"float64 yg\n"
;
  }

  static const char* value(const ::perception_msgs::LidarObjectList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::perception_msgs::LidarObjectList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.frame_number);
      stream.next(m.sensor_source);
      stream.next(m.lidarobjects);
      stream.next(m.cells);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LidarObjectList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::perception_msgs::LidarObjectList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::perception_msgs::LidarObjectList_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "frame_number: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.frame_number);
    s << indent << "sensor_source: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.sensor_source);
    s << indent << "lidarobjects[]" << std::endl;
    for (size_t i = 0; i < v.lidarobjects.size(); ++i)
    {
      s << indent << "  lidarobjects[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::perception_msgs::LidarObject_<ContainerAllocator> >::stream(s, indent + "    ", v.lidarobjects[i]);
    }
    s << indent << "cells[]" << std::endl;
    for (size_t i = 0; i < v.cells.size(); ++i)
    {
      s << indent << "  cells[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::perception_msgs::ObstacleCell_<ContainerAllocator> >::stream(s, indent + "    ", v.cells[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PERCEPTION_MSGS_MESSAGE_LIDAROBJECTLIST_H
