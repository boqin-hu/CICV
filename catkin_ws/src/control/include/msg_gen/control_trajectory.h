// Generated by gencpp from file msg_gen/control_trajectory.msg
// DO NOT EDIT!


#ifndef MSG_GEN_MESSAGE_CONTROL_TRAJECTORY_H
#define MSG_GEN_MESSAGE_CONTROL_TRAJECTORY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <msg_gen/trajectory_point.h>

namespace msg_gen
{
template <class ContainerAllocator>
struct control_trajectory_
{
  typedef control_trajectory_<ContainerAllocator> Type;

  control_trajectory_()
    : point_num(0)
    , points()
    , isReverse(false)  {
    }
  control_trajectory_(const ContainerAllocator& _alloc)
    : point_num(0)
    , points(_alloc)
    , isReverse(false)  {
  (void)_alloc;
    }



   typedef int32_t _point_num_type;
  _point_num_type point_num;

   typedef std::vector< ::msg_gen::trajectory_point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::msg_gen::trajectory_point_<ContainerAllocator> >::other >  _points_type;
  _points_type points;

   typedef uint8_t _isReverse_type;
  _isReverse_type isReverse;





  typedef boost::shared_ptr< ::msg_gen::control_trajectory_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msg_gen::control_trajectory_<ContainerAllocator> const> ConstPtr;

}; // struct control_trajectory_

typedef ::msg_gen::control_trajectory_<std::allocator<void> > control_trajectory;

typedef boost::shared_ptr< ::msg_gen::control_trajectory > control_trajectoryPtr;
typedef boost::shared_ptr< ::msg_gen::control_trajectory const> control_trajectoryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msg_gen::control_trajectory_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msg_gen::control_trajectory_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msg_gen::control_trajectory_<ContainerAllocator1> & lhs, const ::msg_gen::control_trajectory_<ContainerAllocator2> & rhs)
{
  return lhs.point_num == rhs.point_num &&
    lhs.points == rhs.points &&
    lhs.isReverse == rhs.isReverse;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msg_gen::control_trajectory_<ContainerAllocator1> & lhs, const ::msg_gen::control_trajectory_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msg_gen

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msg_gen::control_trajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msg_gen::control_trajectory_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msg_gen::control_trajectory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msg_gen::control_trajectory_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msg_gen::control_trajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msg_gen::control_trajectory_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msg_gen::control_trajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f37e6c7e300f5e2bc25374a7bfea4dfd";
  }

  static const char* value(const ::msg_gen::control_trajectory_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf37e6c7e300f5e2bULL;
  static const uint64_t static_value2 = 0xc25374a7bfea4dfdULL;
};

template<class ContainerAllocator>
struct DataType< ::msg_gen::control_trajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msg_gen/control_trajectory";
  }

  static const char* value(const ::msg_gen::control_trajectory_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msg_gen::control_trajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"int32 point_num\n"
"trajectory_point[] points\n"
"bool isReverse\n"
"================================================================================\n"
"MSG: msg_gen/trajectory_point\n"
"float64 posx\n"
"float64 posy\n"
"float64 speed\n"
"float64 accel\n"
"float64 theta\n"
"float64 kappa\n"
"float64 relative_time\n"
"float64 s \n"
;
  }

  static const char* value(const ::msg_gen::control_trajectory_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msg_gen::control_trajectory_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.point_num);
      stream.next(m.points);
      stream.next(m.isReverse);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct control_trajectory_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msg_gen::control_trajectory_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msg_gen::control_trajectory_<ContainerAllocator>& v)
  {
    s << indent << "point_num: ";
    Printer<int32_t>::stream(s, indent + "  ", v.point_num);
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::msg_gen::trajectory_point_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
    s << indent << "isReverse: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isReverse);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSG_GEN_MESSAGE_CONTROL_TRAJECTORY_H
