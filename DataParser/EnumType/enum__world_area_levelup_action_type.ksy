meta:
  id: enum__world_area_levelup_action_type
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
    enum: world_area_levelup_action_type
enums:
  world_area_levelup_action_type:
    0: world_area_action_none
    1: world_area_action_reward
    2: world_area_action_improve_stamina
    3: world_area_action_unlock_force
    4: world_area_action_unlock_dungeon_entrance
    5: world_area_action_activate_item
    6: world_area_action_unlock_dynamic_hard
    7: world_area_action_unlock_air_portal
    8: world_area_action_notify_group
