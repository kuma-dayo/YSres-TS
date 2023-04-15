meta:
  id: enum__entity_collider_type
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
    enum: entity_collider_type
enums:
  entity_collider_type:
    0: move_collider
    1: scene_prop_collider
