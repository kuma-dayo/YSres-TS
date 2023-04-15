meta:
  id: enum__dungeon_roster_cycle_type
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
    enum: dungeon_roster_cycle_type
enums:
  dungeon_roster_cycle_type:
    0: dungeon_roster_cycle_type_none
    1: dungeon_roster_cycle_type_by_order
