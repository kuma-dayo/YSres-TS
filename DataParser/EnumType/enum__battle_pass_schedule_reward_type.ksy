meta:
  id: enum__battle_pass_schedule_reward_type
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
    enum: battle_pass_schedule_reward_type
enums:
  battle_pass_schedule_reward_type:
    0: battle_pass_schedule_reward_weapon
    1: battle_pass_schedule_reward_wing
