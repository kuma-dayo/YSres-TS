meta:
  id: enum__move_to_type
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
    enum: move_to_type
enums:
  move_to_type:
    0: none
    1: walk
    2: run
    3: noneaccurate
