// Generated by gencpp from file perception_msgs/ObstacleCell.msg
// DO NOT EDIT!


#ifndef PERCEPTION_MSGS_MESSAGE_OBSTACLECELL_H
#define PERCEPTION_MSGS_MESSAGE_OBSTACLECELL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace perception_msgs
{
template <class ContainerAllocator>
struct ObstacleCell_
{
  typedef ObstacleCell_<ContainerAllocator> Type;

  ObstacleCell_()
    : idc(0)
    , x(0.0)
    , y(0.0)
    , xg(0.0)
    , yg(0.0)  {
    }
  ObstacleCell_(const ContainerAllocator& _alloc)
    : idc(0)
    , x(0.0)
    , y(0.0)
    , xg(0.0)
    , yg(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _idc_type;
  _idc_type idc;

   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _xg_type;
  _xg_type xg;

   typedef double _yg_type;
  _yg_type yg;





  typedef boost::shared_ptr< ::perception_msgs::ObstacleCell_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::perception_msgs::ObstacleCell_<ContainerAllocator> const> ConstPtr;

}; // struct ObstacleCell_

typedef ::perception_msgs::ObstacleCell_<std::allocator<void> > ObstacleCell;

typedef boost::shared_ptr< ::perception_msgs::ObstacleCell > ObstacleCellPtr;
typedef boost::shared_ptr< ::perception_msgs::ObstacleCell const> ObstacleCellConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::perception_msgs::ObstacleCell_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::perception_msgs::ObstacleCell_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::perception_msgs::ObstacleCell_<ContainerAllocator1> & lhs, const ::perception_msgs::ObstacleCell_<ContainerAllocator2> & rhs)
{
  return lhs.idc == rhs.idc &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.xg == rhs.xg &&
    lhs.yg == rhs.yg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::perception_msgs::ObstacleCell_<ContainerAllocator1> & lhs, const ::perception_msgs::ObstacleCell_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace perception_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::ObstacleCell_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::ObstacleCell_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::ObstacleCell_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::ObstacleCell_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::ObstacleCell_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::ObstacleCell_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::perception_msgs::ObstacleCell_<ContainerAllocator> >
{
  static const char* value()
  {
    return "808fcd23ffbb5d2b132baf88e48ddc52";
  }

  static const char* value(const ::perception_msgs::ObstacleCell_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x808fcd23ffbb5d2bULL;
  static const uint64_t static_value2 = 0x132baf88e48ddc52ULL;
};

template<class ContainerAllocator>
struct DataType< ::perception_msgs::ObstacleCell_<ContainerAllocator> >
{
  static const char* value()
  {
    return "perception_msgs/ObstacleCell";
  }

  static const char* value(const ::perception_msgs::ObstacleCell_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::perception_msgs::ObstacleCell_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 idc\n"
"float64 x\n"
"float64 y\n"
"float64 xg\n"
"float64 yg\n"
;
  }

  static const char* value(const ::perception_msgs::ObstacleCell_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::perception_msgs::ObstacleCell_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.idc);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.xg);
      stream.next(m.yg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObstacleCell_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::perception_msgs::ObstacleCell_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::perception_msgs::ObstacleCell_<ContainerAllocator>& v)
  {
    s << indent << "idc: ";
    Printer<int32_t>::stream(s, indent + "  ", v.idc);
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "xg: ";
    Printer<double>::stream(s, indent + "  ", v.xg);
    s << indent << "yg: ";
    Printer<double>::stream(s, indent + "  ", v.yg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PERCEPTION_MSGS_MESSAGE_OBSTACLECELL_H
