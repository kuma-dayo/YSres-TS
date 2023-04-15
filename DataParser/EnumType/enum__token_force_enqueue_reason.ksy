meta:
  id: enum__token_force_enqueue_reason
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
    enum: token_force_enqueue_reason
enums:
  token_force_enqueue_reason:
    0: element_reaction
    1: ability_state
