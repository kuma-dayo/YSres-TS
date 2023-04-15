meta:
  id: enum__config_ai_combat_role
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
    enum: config_ai_combat_role
enums:
  config_ai_combat_role:
    0: unclassified
    1: fighter
    2: mage
    3: sup
    4: combatrole_count
