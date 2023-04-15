meta:
  id: enum__logic_type
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
    enum: logic_type
enums:
  logic_type:
    0: logic_none
    1: logic_and
    2: logic_or
    3: logic_not
    4: logic_a_and_etcor
    5: logic_a_and_b_and_etcor
    6: logic_a_or_etcand
    7: logic_a_or_b_or_etcand
    8: logic_a_and_b_or_etcand
