meta:
  id: enum__actor_evt_target_type
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
    enum: actor_evt_target_type
enums:
  actor_evt_target_type:
    0: single
    1: all
