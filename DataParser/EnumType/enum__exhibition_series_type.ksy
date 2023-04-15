meta:
  id: enum__exhibition_series_type
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
    enum: exhibition_series_type
enums:
  exhibition_series_type:
    0: exhibition_series_none
    1: exhibition_series_activity
    2: exhibition_series_dungeon
