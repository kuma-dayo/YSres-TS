meta:
  id: array_of__aux_types__dynamic_float__length_u
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: data
    type: aux_types::dynamic_float
    repeat: expr
    repeat-expr: length.value
