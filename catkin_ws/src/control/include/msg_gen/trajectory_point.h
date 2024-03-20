// Generated by gencpp from file msg_gen/trajectory_point.msg
// DO NOT EDIT!


#ifndef MSG_GEN_MESSAGE_TRAJECTORY_POINT_H
#define MSG_GEN_MESSAGE_TRAJECTORY_POINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace msg_gen
{
template <class ContainerAllocator>
struct trajectory_point_
{
  typedef trajectory_point_<ContainerAllocator> Type;

  trajectory_point_()
    : posx(0.0)
    , posy(0.0)
    , speed(0.0)
    , accel(0.0)
    , theta(0.0)
    , kappa(0.0)
    , relative_time(0.0)
    , s(0.0)  {
    }
  trajectory_point_(const ContainerAllocator& _alloc)
    : posx(0.0)
    , posy(0.0)
    , speed(0.0)
    , accel(0.0)
    , theta(0.0)
    , kappa(0.0)
    , relative_time(0.0)
    , s(0.0)  {
  (void)_alloc;
    }



   typedef double _posx_type;
  _posx_type posx;

   typedef double _posy_type;
  _posy_type posy;

   typedef double _speed_type;
  _speed_type speed;

   typedef double _accel_type;
  _accel_type accel;

   typedef double _theta_type;
  _theta_type theta;

   typedef double _kappa_type;
  _kappa_type kappa;

   typedef double _relative_time_type;
  _relative_time_type relative_time;

   typedef double _s_type;
  _s_type s;





  typedef boost::shared_ptr< ::msg_gen::trajectory_point_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msg_gen::trajectory_point_<ContainerAllocator> const> ConstPtr;

}; // struct trajectory_point_

typedef ::msg_gen::trajectory_point_<std::allocator<void> > trajectory_point;

typedef boost::shared_ptr< ::msg_gen::trajectory_point > trajectory_pointPtr;
typedef boost::shared_ptr< ::msg_gen::trajectory_point const> trajectory_pointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msg_gen::trajectory_point_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msg_gen::trajectory_point_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msg_gen::trajectory_point_<ContainerAllocator1> & lhs, const ::msg_gen::trajectory_point_<ContainerAllocator2> & rhs)
{
  return lhs.posx == rhs.posx &&
    lhs.posy == rhs.posy &&
    lhs.speed == rhs.speed &&
    lhs.accel == rhs.accel &&
    lhs.theta == rhs.theta &&
    lhs.kappa == rhs.kappa &&
    lhs.relative_time == rhs.relative_time &&
    lhs.s == rhs.s;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msg_gen::trajectory_point_<ContainerAllocator1> & lhs, const ::msg_gen::trajectory_point_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msg_gen

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msg_gen::trajectory_point_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msg_gen::trajectory_point_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msg_gen::trajectory_point_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msg_gen::trajectory_point_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msg_gen::trajectory_point_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msg_gen::trajectory_point_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msg_gen::trajectory_point_<ContainerAllocator> >
{
  static const char* value()
  {
    return "510d07f7d27f1585081e8de22765d983";
  }

  static const char* value(const ::msg_gen::trajectory_point_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x510d07f7d27f1585ULL;
  static const uint64_t static_value2 = 0x081e8de22765d983ULL;
};

template<class ContainerAllocator>
struct DataType< ::msg_gen::trajectory_point_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msg_gen/trajectory_point";
  }

  static const char* value(const ::msg_gen::trajectory_point_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msg_gen::trajectory_point_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 posx\n"
"float64 posy\n"
"float64 speed\n"
"float64 accel\n"
"float64 theta\n"
"float64 kappa\n"
"float64 relative_time\n"
"float64 s \n"
;
  }

  static const char* value(const ::msg_gen::trajectory_point_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msg_gen::trajectory_point_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.posx);
      stream.next(m.posy);
      stream.next(m.speed);
      stream.next(m.accel);
      stream.next(m.theta);
      stream.next(m.kappa);
      stream.next(m.relative_time);
      stream.next(m.s);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct trajectory_point_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msg_gen::trajectory_point_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msg_gen::trajectory_point_<ContainerAllocator>& v)
  {
    s << indent << "posx: ";
    Printer<double>::stream(s, indent + "  ", v.posx);
    s << indent << "posy: ";
    Printer<double>::stream(s, indent + "  ", v.posy);
    s << indent << "speed: ";
    Printer<double>::stream(s, indent + "  ", v.speed);
    s << indent << "accel: ";
    Printer<double>::stream(s, indent + "  ", v.accel);
    s << indent << "theta: ";
    Printer<double>::stream(s, indent + "  ", v.theta);
    s << indent << "kappa: ";
    Printer<double>::stream(s, indent + "  ", v.kappa);
    s << indent << "relative_time: ";
    Printer<double>::stream(s, indent + "  ", v.relative_time);
    s << indent << "s: ";
    Printer<double>::stream(s, indent + "  ", v.s);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSG_GEN_MESSAGE_TRAJECTORY_POINT_H
