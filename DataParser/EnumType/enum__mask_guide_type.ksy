meta:
  id: enum__mask_guide_type
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
    enum: mask_guide_type
enums:
  mask_guide_type:
    0: normal
    1: black
    2: transparent
