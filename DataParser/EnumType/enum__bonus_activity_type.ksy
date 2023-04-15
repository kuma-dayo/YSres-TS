meta:
  id: enum__bonus_activity_type
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
    enum: bonus_activity_type
enums:
  bonus_activity_type:
    0: bonus_common
    1: bonus_xiangling
    2: bonus_babala
