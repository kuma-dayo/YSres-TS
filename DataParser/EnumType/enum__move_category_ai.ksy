meta:
  id: enum__move_category_ai
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
    enum: move_category_ai
enums:
  move_category_ai:
    0: land
    1: amphibious
    2: water
