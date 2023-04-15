meta:
  id: enum__sort_modifier_type
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
    enum: sort_modifier_type
enums:
  sort_modifier_type:
    0: none
    1: priority
    2: durability_asc
    3: durability_des
    4: all
