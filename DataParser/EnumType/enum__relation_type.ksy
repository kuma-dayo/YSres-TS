meta:
  id: enum__relation_type
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
    enum: relation_type
enums:
  relation_type:
    0: equal
    1: more_than
    2: less_and_equal
    3: between
    4: more_than_and_equal
    5: none_or_equal
