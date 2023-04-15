meta:
  id: enum__quest_exec_type
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
    enum: quest_exec_type
enums:
  quest_exec_type:
    0: quest_exec_none
    1: quest_exec_del_pack_item
    2: quest_exec_unlock_point
    3: quest_exec_unlock_area
    4: quest_exec_unlock_force
    5: quest_exec_lock_force
    6: quest_exec_change_avatar_elemet
    7: quest_exec_refresh_group_monster
    8: quest_exec_set_is_flyable
    9: quest_exec_set_is_weather_locked
    10: quest_exec_set_is_game_time_locked
    11: quest_exec_set_is_transferable
    12: quest_exec_grant_trial_avatar
    13: quest_exec_open_bored
    14: quest_exec_rollback_quest
    15: quest_exec_notify_group_lua
    16: quest_exec_set_open_state
    17: quest_exec_lock_point
    18: quest_exec_del_pack_item_batch
    19: quest_exec_refresh_group_suite
    20: quest_exec_remove_trial_avatar
    21: quest_exec_set_game_time
    22: quest_exec_set_weather_gadget
    23: quest_exec_add_quest_progress
    24: quest_exec_notify_daily_task
    25: quest_exec_create_pattern_group
    26: quest_exec_remove_pattern_group
    27: quest_exec_refresh_group_suite_random
    28: quest_exec_active_item_giving
    29: quest_exec_del_all_specific_pack_item
    30: quest_exec_rollback_parent_quest
    31: quest_exec_lock_avatar_team
    32: quest_exec_unlock_avatar_team
    33: quest_exec_update_parent_quest_reward_index
    34: quest_exec_set_daily_task_var
    35: quest_exec_inc_daily_task_var
    36: quest_exec_dec_daily_task_var
    37: quest_exec_active_activity_cond_state
    38: quest_exec_inactive_activity_cond_state
    39: quest_exec_add_cur_avatar_energy
    41: quest_exec_start_bargain
    42: quest_exec_stop_bargain
    43: quest_exec_set_quest_global_var
    44: quest_exec_inc_quest_global_var
    45: quest_exec_dec_quest_global_var
    46: quest_exec_register_dynamic_group
    47: quest_exec_unregister_dynamic_group
    48: quest_exec_set_quest_var
    49: quest_exec_inc_quest_var
    50: quest_exec_dec_quest_var
    51: quest_exec_random_quest_var
    52: quest_exec_activate_scanning_pic
    53: quest_exec_reload_scene_tag
    54: quest_exec_register_dynamic_group_only
    55: quest_exec_change_skill_depot
    56: quest_exec_add_scene_tag
    57: quest_exec_del_scene_tag
    58: quest_exec_init_time_var
    59: quest_exec_clear_time_var
    60: quest_exec_modify_climate_area
    61: quest_exec_grant_trial_avatar_and_lock_team
    62: quest_exec_change_map_area_state
    63: quest_exec_deactive_item_giving
