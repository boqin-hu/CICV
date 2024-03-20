# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from navi_msgs/SysInfo.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SysInfo(genpy.Message):
  _md5sum = "32c91a41efe8d7f00d4b592a7b9c6532"
  _type = "navi_msgs/SysInfo"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32  cpu_occupied
float32  mem_occupied
float64  cur_mileage
float64  history_mileage
"""
  __slots__ = ['cpu_occupied','mem_occupied','cur_mileage','history_mileage']
  _slot_types = ['float32','float32','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cpu_occupied,mem_occupied,cur_mileage,history_mileage

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SysInfo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.cpu_occupied is None:
        self.cpu_occupied = 0.
      if self.mem_occupied is None:
        self.mem_occupied = 0.
      if self.cur_mileage is None:
        self.cur_mileage = 0.
      if self.history_mileage is None:
        self.history_mileage = 0.
    else:
      self.cpu_occupied = 0.
      self.mem_occupied = 0.
      self.cur_mileage = 0.
      self.history_mileage = 0.

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
      buff.write(_get_struct_2f2d().pack(_x.cpu_occupied, _x.mem_occupied, _x.cur_mileage, _x.history_mileage))
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
      end = 0
      _x = self
      start = end
      end += 24
      (_x.cpu_occupied, _x.mem_occupied, _x.cur_mileage, _x.history_mileage,) = _get_struct_2f2d().unpack(str[start:end])
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
      buff.write(_get_struct_2f2d().pack(_x.cpu_occupied, _x.mem_occupied, _x.cur_mileage, _x.history_mileage))
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
      end = 0
      _x = self
      start = end
      end += 24
      (_x.cpu_occupied, _x.mem_occupied, _x.cur_mileage, _x.history_mileage,) = _get_struct_2f2d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2f2d = None
def _get_struct_2f2d():
    global _struct_2f2d
    if _struct_2f2d is None:
        _struct_2f2d = struct.Struct("<2f2d")
    return _struct_2f2d
