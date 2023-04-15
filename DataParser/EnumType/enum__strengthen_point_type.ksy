meta:
  id: enum__strengthen_point_type
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
    enum: strengthen_point_type
enums:
  strengthen_point_type:
    0: strengthen_point_none
    1: strengthen_point_avatar
    2: strengthen_point_weapon
    3: strengthen_point_reliquary
    4: strengthen_point_talent
