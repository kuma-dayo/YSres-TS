meta:
  id: enum__dungeon_cond_type
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
    enum: dungeon_cond_type
enums:
  dungeon_cond_type:
    0: dungeon_cond_none
    3: dungeon_cond_kill_monster
    5: dungeon_cond_kill_group_monster
    7: dungeon_cond_kill_type_monster
    9: dungeon_cond_finish_quest
    11: dungeon_cond_kill_monster_count
    13: dungeon_cond_in_time
    14: dungeon_cond_finish_challenge
    15: dungeon_cond_end_multistage_play
