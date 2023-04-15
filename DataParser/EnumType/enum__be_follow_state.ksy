meta:
  id: enum__be_follow_state
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
    enum: be_follow_state
enums:
  be_follow_state:
    0: ing
    1: waiting
    2: trans
    3: pre_failed
    4: failed
    5: success
