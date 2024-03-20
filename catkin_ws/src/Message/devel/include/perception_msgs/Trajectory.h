// Generated by gencpp from file perception_msgs/Trajectory.msg
// DO NOT EDIT!


#ifndef PERCEPTION_MSGS_MESSAGE_TRAJECTORY_H
#define PERCEPTION_MSGS_MESSAGE_TRAJECTORY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <perception_msgs/TrajectoryInfo.h>

namespace perception_msgs
{
template <class ContainerAllocator>
struct Trajectory_
{
  typedef Trajectory_<ContainerAllocator> Type;

  Trajectory_()
    : header()
    , frame_number(0)
    , is_valid_frame(false)
    , trajectoryinfo()  {
    }
  Trajectory_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , frame_number(0)
    , is_valid_frame(false)
    , trajectoryinfo(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint64_t _frame_number_type;
  _frame_number_type frame_number;

   typedef uint8_t _is_valid_frame_type;
  _is_valid_frame_type is_valid_frame;

   typedef  ::perception_msgs::TrajectoryInfo_<ContainerAllocator>  _trajectoryinfo_type;
  _trajectoryinfo_type trajectoryinfo;





  typedef boost::shared_ptr< ::perception_msgs::Trajectory_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::perception_msgs::Trajectory_<ContainerAllocator> const> ConstPtr;

}; // struct Trajectory_

typedef ::perception_msgs::Trajectory_<std::allocator<void> > Trajectory;

typedef boost::shared_ptr< ::perception_msgs::Trajectory > TrajectoryPtr;
typedef boost::shared_ptr< ::perception_msgs::Trajectory const> TrajectoryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::perception_msgs::Trajectory_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::perception_msgs::Trajectory_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::perception_msgs::Trajectory_<ContainerAllocator1> & lhs, const ::perception_msgs::Trajectory_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.frame_number == rhs.frame_number &&
    lhs.is_valid_frame == rhs.is_valid_frame &&
    lhs.trajectoryinfo == rhs.trajectoryinfo;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::perception_msgs::Trajectory_<ContainerAllocator1> & lhs, const ::perception_msgs::Trajectory_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace perception_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::Trajectory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::Trajectory_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::Trajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::Trajectory_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::Trajectory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::Trajectory_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::perception_msgs::Trajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "132aa4b0598aef32b1def9d8d8e57cbe";
  }

  static const char* value(const ::perception_msgs::Trajectory_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x132aa4b0598aef32ULL;
  static const uint64_t static_value2 = 0xb1def9d8d8e57cbeULL;
};

template<class ContainerAllocator>
struct DataType< ::perception_msgs::Trajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "perception_msgs/Trajectory";
  }

  static const char* value(const ::perception_msgs::Trajectory_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::perception_msgs::Trajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"uint64 frame_number\n"
"bool is_valid_frame\n"
"TrajectoryInfo trajectoryinfo\n"
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
"MSG: perception_msgs/TrajectoryInfo\n"
"int32 path_id\n"
"float32 total_path_length\n"
"float32 total_path_time\n"
"int8 decision_type\n"
"int8 light_type\n"
"string[] lane_ids\n"
"TrajectoryPoint[] trajectorypoints\n"
"\n"
"================================================================================\n"
"MSG: perception_msgs/TrajectoryPoint\n"
"Point2D position\n"
"float32 velocity\n"
"float32 heading\n"
"float32 curvature\n"
"float32 s\n"
"float32 t\n"
"int8 point_type\n"
"\n"
"================================================================================\n"
"MSG: perception_msgs/Point2D\n"
"float64 x\n"
"float64 y\n"
;
  }

  static const char* value(const ::perception_msgs::Trajectory_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::perception_msgs::Trajectory_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.frame_number);
      stream.next(m.is_valid_frame);
      stream.next(m.trajectoryinfo);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Trajectory_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::perception_msgs::Trajectory_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::perception_msgs::Trajectory_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "frame_number: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.frame_number);
    s << indent << "is_valid_frame: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_valid_frame);
    s << indent << "trajectoryinfo: ";
    s << std::endl;
    Printer< ::perception_msgs::TrajectoryInfo_<ContainerAllocator> >::stream(s, indent + "  ", v.trajectoryinfo);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PERCEPTION_MSGS_MESSAGE_TRAJECTORY_H
