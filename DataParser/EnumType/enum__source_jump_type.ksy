meta:
  id: enum__source_jump_type
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
    enum: source_jump_type
enums:
  source_jump_type:
    0: jump_none
    1: jump_mall
