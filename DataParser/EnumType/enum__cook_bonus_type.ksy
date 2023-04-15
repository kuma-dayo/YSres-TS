meta:
  id: enum__cook_bonus_type
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
    enum: cook_bonus_type
enums:
  cook_bonus_type:
    0: cook_bonus_none
    1: cook_bonus_replace
    2: cook_bonus_proficiency
