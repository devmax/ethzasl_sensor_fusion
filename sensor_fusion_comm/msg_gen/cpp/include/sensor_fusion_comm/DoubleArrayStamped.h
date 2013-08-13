/* Auto-generated by genmsg_cpp for file /home/dev/ros/stacks/ethzasl_sensor_fusion/sensor_fusion_comm/msg/DoubleArrayStamped.msg */
#ifndef SENSOR_FUSION_COMM_MESSAGE_DOUBLEARRAYSTAMPED_H
#define SENSOR_FUSION_COMM_MESSAGE_DOUBLEARRAYSTAMPED_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "std_msgs/Header.h"

namespace sensor_fusion_comm
{
template <class ContainerAllocator>
struct DoubleArrayStamped_ {
  typedef DoubleArrayStamped_<ContainerAllocator> Type;

  DoubleArrayStamped_()
  : header()
  , data()
  {
  }

  DoubleArrayStamped_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , data(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _data_type;
  std::vector<double, typename ContainerAllocator::template rebind<double>::other >  data;


  typedef boost::shared_ptr< ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct DoubleArrayStamped
typedef  ::sensor_fusion_comm::DoubleArrayStamped_<std::allocator<void> > DoubleArrayStamped;

typedef boost::shared_ptr< ::sensor_fusion_comm::DoubleArrayStamped> DoubleArrayStampedPtr;
typedef boost::shared_ptr< ::sensor_fusion_comm::DoubleArrayStamped const> DoubleArrayStampedConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace sensor_fusion_comm

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator> > {
  static const char* value() 
  {
    return "fb60495edd59d3fcf90e173153ae8a9a";
  }

  static const char* value(const  ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xfb60495edd59d3fcULL;
  static const uint64_t static_value2 = 0xf90e173153ae8a9aULL;
};

template<class ContainerAllocator>
struct DataType< ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator> > {
  static const char* value() 
  {
    return "sensor_fusion_comm/DoubleArrayStamped";
  }

  static const char* value(const  ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Header    header\n\
float64[] data\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
";
  }

  static const char* value(const  ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.data);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct DoubleArrayStamped_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::sensor_fusion_comm::DoubleArrayStamped_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.data[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // SENSOR_FUSION_COMM_MESSAGE_DOUBLEARRAYSTAMPED_H

