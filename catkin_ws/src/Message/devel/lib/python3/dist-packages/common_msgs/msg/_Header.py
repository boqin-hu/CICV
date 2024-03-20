# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from common_msgs/Header.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import common_msgs.msg

class Header(genpy.Message):
  _md5sum = "e31935db661363d21d899876e48cac39"
  _type = "common_msgs/Header"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 sequence_num
float64 time_stamp
string 	module_name
string 	version
FaultVec 	fault_vec
TimeStatistics 	time_statistics
================================================================================
MSG: common_msgs/FaultVec
FaultInfo[] 	info_vec
int32 	module_fault_level

================================================================================
MSG: common_msgs/FaultInfo
float64 	timestamp_sec
string 	module_name
string 	version
int32 	error_code
string 	msg
int8 	fault_level
int8 	fault_type
================================================================================
MSG: common_msgs/TimeStatistics
TimeStatus[] 	dev_time_status_msg
float64 	sending_timestamp
================================================================================
MSG: common_msgs/TimeStatus
float64 	dtime
string 	source_node_name
string 	destination_node_name"""
  __slots__ = ['sequence_num','time_stamp','module_name','version','fault_vec','time_statistics']
  _slot_types = ['int32','float64','string','string','common_msgs/FaultVec','common_msgs/TimeStatistics']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       sequence_num,time_stamp,module_name,version,fault_vec,time_statistics

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Header, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.sequence_num is None:
        self.sequence_num = 0
      if self.time_stamp is None:
        self.time_stamp = 0.
      if self.module_name is None:
        self.module_name = ''
      if self.version is None:
        self.version = ''
      if self.fault_vec is None:
        self.fault_vec = common_msgs.msg.FaultVec()
      if self.time_statistics is None:
        self.time_statistics = common_msgs.msg.TimeStatistics()
    else:
      self.sequence_num = 0
      self.time_stamp = 0.
      self.module_name = ''
      self.version = ''
      self.fault_vec = common_msgs.msg.FaultVec()
      self.time_statistics = common_msgs.msg.TimeStatistics()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_id().pack(_x.sequence_num, _x.time_stamp))
      _x = self.module_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.version
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.fault_vec.info_vec)
      buff.write(_struct_I.pack(length))
      for val1 in self.fault_vec.info_vec:
        _x = val1.timestamp_sec
        buff.write(_get_struct_d().pack(_x))
        _x = val1.module_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.version
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.error_code
        buff.write(_get_struct_i().pack(_x))
        _x = val1.msg
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2b().pack(_x.fault_level, _x.fault_type))
      _x = self.fault_vec.module_fault_level
      buff.write(_get_struct_i().pack(_x))
      length = len(self.time_statistics.dev_time_status_msg)
      buff.write(_struct_I.pack(length))
      for val1 in self.time_statistics.dev_time_status_msg:
        _x = val1.dtime
        buff.write(_get_struct_d().pack(_x))
        _x = val1.source_node_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.destination_node_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.time_statistics.sending_timestamp
      buff.write(_get_struct_d().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.fault_vec is None:
        self.fault_vec = common_msgs.msg.FaultVec()
      if self.time_statistics is None:
        self.time_statistics = common_msgs.msg.TimeStatistics()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.sequence_num, _x.time_stamp,) = _get_struct_id().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.module_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.module_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.version = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.version = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.fault_vec.info_vec = []
      for i in range(0, length):
        val1 = common_msgs.msg.FaultInfo()
        start = end
        end += 8
        (val1.timestamp_sec,) = _get_struct_d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.module_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.module_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.version = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.version = str[start:end]
        start = end
        end += 4
        (val1.error_code,) = _get_struct_i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.msg = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.msg = str[start:end]
        _x = val1
        start = end
        end += 2
        (_x.fault_level, _x.fault_type,) = _get_struct_2b().unpack(str[start:end])
        self.fault_vec.info_vec.append(val1)
      start = end
      end += 4
      (self.fault_vec.module_fault_level,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.time_statistics.dev_time_status_msg = []
      for i in range(0, length):
        val1 = common_msgs.msg.TimeStatus()
        start = end
        end += 8
        (val1.dtime,) = _get_struct_d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.source_node_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.source_node_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.destination_node_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.destination_node_name = str[start:end]
        self.time_statistics.dev_time_status_msg.append(val1)
      start = end
      end += 8
      (self.time_statistics.sending_timestamp,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_id().pack(_x.sequence_num, _x.time_stamp))
      _x = self.module_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.version
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.fault_vec.info_vec)
      buff.write(_struct_I.pack(length))
      for val1 in self.fault_vec.info_vec:
        _x = val1.timestamp_sec
        buff.write(_get_struct_d().pack(_x))
        _x = val1.module_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.version
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.error_code
        buff.write(_get_struct_i().pack(_x))
        _x = val1.msg
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2b().pack(_x.fault_level, _x.fault_type))
      _x = self.fault_vec.module_fault_level
      buff.write(_get_struct_i().pack(_x))
      length = len(self.time_statistics.dev_time_status_msg)
      buff.write(_struct_I.pack(length))
      for val1 in self.time_statistics.dev_time_status_msg:
        _x = val1.dtime
        buff.write(_get_struct_d().pack(_x))
        _x = val1.source_node_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.destination_node_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.time_statistics.sending_timestamp
      buff.write(_get_struct_d().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.fault_vec is None:
        self.fault_vec = common_msgs.msg.FaultVec()
      if self.time_statistics is None:
        self.time_statistics = common_msgs.msg.TimeStatistics()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.sequence_num, _x.time_stamp,) = _get_struct_id().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.module_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.module_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.version = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.version = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.fault_vec.info_vec = []
      for i in range(0, length):
        val1 = common_msgs.msg.FaultInfo()
        start = end
        end += 8
        (val1.timestamp_sec,) = _get_struct_d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.module_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.module_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.version = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.version = str[start:end]
        start = end
        end += 4
        (val1.error_code,) = _get_struct_i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.msg = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.msg = str[start:end]
        _x = val1
        start = end
        end += 2
        (_x.fault_level, _x.fault_type,) = _get_struct_2b().unpack(str[start:end])
        self.fault_vec.info_vec.append(val1)
      start = end
      end += 4
      (self.fault_vec.module_fault_level,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.time_statistics.dev_time_status_msg = []
      for i in range(0, length):
        val1 = common_msgs.msg.TimeStatus()
        start = end
        end += 8
        (val1.dtime,) = _get_struct_d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.source_node_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.source_node_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.destination_node_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.destination_node_name = str[start:end]
        self.time_statistics.dev_time_status_msg.append(val1)
      start = end
      end += 8
      (self.time_statistics.sending_timestamp,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2b = None
def _get_struct_2b():
    global _struct_2b
    if _struct_2b is None:
        _struct_2b = struct.Struct("<2b")
    return _struct_2b
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_id = None
def _get_struct_id():
    global _struct_id
    if _struct_id is None:
        _struct_id = struct.Struct("<id")
    return _struct_id
