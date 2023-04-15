meta:
  id: enum__op_activity_track_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: op_activity_track_type
enums:
  op_activity_track_type:
    0: track_none
    1: track_by_city
