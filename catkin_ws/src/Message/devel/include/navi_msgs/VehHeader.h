// Generated by gencpp from file navi_msgs/VehHeader.msg
// DO NOT EDIT!


#ifndef NAVI_MSGS_MESSAGE_VEHHEADER_H
#define NAVI_MSGS_MESSAGE_VEHHEADER_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <navi_msgs/TimeStamp.h>

namespace navi_msgs
{
template <class ContainerAllocator>
struct VehHeader_
{
  typedef VehHeader_<ContainerAllocator> Type;

  VehHeader_()
    : veh_id(0)
    , time()  {
    }
  VehHeader_(const ContainerAllocator& _alloc)
    : veh_id(0)
    , time(_alloc)  {
  (void)_alloc;
    }



   typedef uint16_t _veh_id_type;
  _veh_id_type veh_id;

   typedef  ::navi_msgs::TimeStamp_<ContainerAllocator>  _time_type;
  _time_type time;





  typedef boost::shared_ptr< ::navi_msgs::VehHeader_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::navi_msgs::VehHeader_<ContainerAllocator> const> ConstPtr;

}; // struct VehHeader_

typedef ::navi_msgs::VehHeader_<std::allocator<void> > VehHeader;

typedef boost::shared_ptr< ::navi_msgs::VehHeader > VehHeaderPtr;
typedef boost::shared_ptr< ::navi_msgs::VehHeader const> VehHeaderConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::navi_msgs::VehHeader_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::navi_msgs::VehHeader_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::navi_msgs::VehHeader_<ContainerAllocator1> & lhs, const ::navi_msgs::VehHeader_<ContainerAllocator2> & rhs)
{
  return lhs.veh_id == rhs.veh_id &&
    lhs.time == rhs.time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::navi_msgs::VehHeader_<ContainerAllocator1> & lhs, const ::navi_msgs::VehHeader_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace navi_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::navi_msgs::VehHeader_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navi_msgs::VehHeader_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::navi_msgs::VehHeader_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::navi_msgs::VehHeader_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navi_msgs::VehHeader_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navi_msgs::VehHeader_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::navi_msgs::VehHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ef86fbe4272401883141e6e6554bd992";
  }

  static const char* value(const ::navi_msgs::VehHeader_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xef86fbe427240188ULL;
  static const uint64_t static_value2 = 0x3141e6e6554bd992ULL;
};

template<class ContainerAllocator>
struct DataType< ::navi_msgs::VehHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "navi_msgs/VehHeader";
  }

  static const char* value(const ::navi_msgs::VehHeader_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::navi_msgs::VehHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 veh_id\n"
"TimeStamp time\n"
"================================================================================\n"
"MSG: navi_msgs/TimeStamp\n"
"uint64 s\n"
"uint64 ns\n"
;
  }

  static const char* value(const ::navi_msgs::VehHeader_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::navi_msgs::VehHeader_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.veh_id);
      stream.next(m.time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VehHeader_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::navi_msgs::VehHeader_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::navi_msgs::VehHeader_<ContainerAllocator>& v)
  {
    s << indent << "veh_id: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.veh_id);
    s << indent << "time: ";
    s << std::endl;
    Printer< ::navi_msgs::TimeStamp_<ContainerAllocator> >::stream(s, indent + "  ", v.time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAVI_MSGS_MESSAGE_VEHHEADER_H
