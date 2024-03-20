// Generated by gencpp from file msg_gen/EBrakeMode.msg
// DO NOT EDIT!


#ifndef MSG_GEN_MESSAGE_EBRAKEMODE_H
#define MSG_GEN_MESSAGE_EBRAKEMODE_H


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
struct EBrakeMode_
{
  typedef EBrakeMode_<ContainerAllocator> Type;

  EBrakeMode_()
    : BrakeMode(0)  {
    }
  EBrakeMode_(const ContainerAllocator& _alloc)
    : BrakeMode(0)  {
  (void)_alloc;
    }



   typedef uint32_t _BrakeMode_type;
  _BrakeMode_type BrakeMode;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(EBrakeMode_Percent)
  #undef EBrakeMode_Percent
#endif
#if defined(_WIN32) && defined(EBrakeMode_MasterCylinderPressure)
  #undef EBrakeMode_MasterCylinderPressure
#endif
#if defined(_WIN32) && defined(EBrakeMode_PedalForce)
  #undef EBrakeMode_PedalForce
#endif
#if defined(_WIN32) && defined(EBrakeMode_WheelCylinderPressure)
  #undef EBrakeMode_WheelCylinderPressure
#endif
#if defined(_WIN32) && defined(EBrakeMode_WheelTorque)
  #undef EBrakeMode_WheelTorque
#endif

  enum {
    EBrakeMode_Percent = 0u,
    EBrakeMode_MasterCylinderPressure = 1u,
    EBrakeMode_PedalForce = 2u,
    EBrakeMode_WheelCylinderPressure = 3u,
    EBrakeMode_WheelTorque = 4u,
  };


  typedef boost::shared_ptr< ::msg_gen::EBrakeMode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msg_gen::EBrakeMode_<ContainerAllocator> const> ConstPtr;

}; // struct EBrakeMode_

typedef ::msg_gen::EBrakeMode_<std::allocator<void> > EBrakeMode;

typedef boost::shared_ptr< ::msg_gen::EBrakeMode > EBrakeModePtr;
typedef boost::shared_ptr< ::msg_gen::EBrakeMode const> EBrakeModeConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msg_gen::EBrakeMode_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msg_gen::EBrakeMode_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msg_gen::EBrakeMode_<ContainerAllocator1> & lhs, const ::msg_gen::EBrakeMode_<ContainerAllocator2> & rhs)
{
  return lhs.BrakeMode == rhs.BrakeMode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msg_gen::EBrakeMode_<ContainerAllocator1> & lhs, const ::msg_gen::EBrakeMode_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msg_gen

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msg_gen::EBrakeMode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msg_gen::EBrakeMode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msg_gen::EBrakeMode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msg_gen::EBrakeMode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msg_gen::EBrakeMode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msg_gen::EBrakeMode_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msg_gen::EBrakeMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "67ffe388c7cf958c89169d819c8e9ace";
  }

  static const char* value(const ::msg_gen::EBrakeMode_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x67ffe388c7cf958cULL;
  static const uint64_t static_value2 = 0x89169d819c8e9aceULL;
};

template<class ContainerAllocator>
struct DataType< ::msg_gen::EBrakeMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msg_gen/EBrakeMode";
  }

  static const char* value(const ::msg_gen::EBrakeMode_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msg_gen::EBrakeMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 EBrakeMode_Percent = 0\n"
"uint8 EBrakeMode_MasterCylinderPressure = 1\n"
"uint8 EBrakeMode_PedalForce = 2\n"
"uint8 EBrakeMode_WheelCylinderPressure = 3\n"
"uint8 EBrakeMode_WheelTorque = 4\n"
"uint32 BrakeMode\n"
;
  }

  static const char* value(const ::msg_gen::EBrakeMode_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msg_gen::EBrakeMode_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.BrakeMode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EBrakeMode_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msg_gen::EBrakeMode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msg_gen::EBrakeMode_<ContainerAllocator>& v)
  {
    s << indent << "BrakeMode: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.BrakeMode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSG_GEN_MESSAGE_EBRAKEMODE_H
