# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from navi_msgs/VehStatus.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import navi_msgs.msg

class VehStatus(genpy.Message):
  _md5sum = "385f807662e68b44b2d006b0602e2751"
  _type = "navi_msgs/VehStatus"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """VehHeader v_header
int32 status
================================================================================
MSG: navi_msgs/VehHeader
uint16 veh_id
TimeStamp time
================================================================================
MSG: navi_msgs/TimeStamp
uint64 s
uint64 ns"""
  __slots__ = ['v_header','status']
  _slot_types = ['navi_msgs/VehHeader','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       v_header,status

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VehStatus, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.v_header is None:
        self.v_header = navi_msgs.msg.VehHeader()
      if self.status is None:
        self.status = 0
    else:
      self.v_header = navi_msgs.msg.VehHeader()
      self.status = 0

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
      buff.write(_get_struct_H2Qi().pack(_x.v_header.veh_id, _x.v_header.time.s, _x.v_header.time.ns, _x.status))
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
      if self.v_header is None:
        self.v_header = navi_msgs.msg.VehHeader()
      end = 0
      _x = self
      start = end
      end += 22
      (_x.v_header.veh_id, _x.v_header.time.s, _x.v_header.time.ns, _x.status,) = _get_struct_H2Qi().unpack(str[start:end])
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
      buff.write(_get_struct_H2Qi().pack(_x.v_header.veh_id, _x.v_header.time.s, _x.v_header.time.ns, _x.status))
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
      if self.v_header is None:
        self.v_header = navi_msgs.msg.VehHeader()
      end = 0
      _x = self
      start = end
      end += 22
      (_x.v_header.veh_id, _x.v_header.time.s, _x.v_header.time.ns, _x.status,) = _get_struct_H2Qi().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_H2Qi = None
def _get_struct_H2Qi():
    global _struct_H2Qi
    if _struct_H2Qi is None:
        _struct_H2Qi = struct.Struct("<H2Qi")
    return _struct_H2Qi
