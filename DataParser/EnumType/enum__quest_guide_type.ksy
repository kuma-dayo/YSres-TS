meta:
  id: enum__quest_guide_type
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
    enum: quest_guide_type
enums:
  quest_guide_type:
    0: quest_guide_none
    1: quest_guide_location
    2: quest_guide_npc
    3: quest_guide_gadget
