meta:
  id: enum__battle_pass_mission_refresh_type
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
    enum: battle_pass_mission_refresh_type
enums:
  battle_pass_mission_refresh_type:
    0: battle_pass_mission_refresh_daily
    1: battle_pass_mission_refresh_cycle
    2: battle_pass_mission_refresh_schedule
