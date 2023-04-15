meta:
  id: enum__effect_type
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
    enum: effect_type
enums:
  effect_type:
    0: wind_effect
