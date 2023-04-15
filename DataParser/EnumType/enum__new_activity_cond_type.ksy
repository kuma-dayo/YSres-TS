meta:
  id: enum__new_activity_cond_type
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
    enum: new_activity_cond_type
enums:
  new_activity_cond_type:
    0: new_activity_cond_none
    1: new_activity_cond_time_greater
    2: new_activity_cond_time_less
    3: new_activity_cond_player_level_greater
    4: new_activity_cond_quest_finish
    5: new_activity_cond_finish_talk
    6: new_activity_cond_create_npc
    7: new_activity_cond_not_finish_talk
    8: new_activity_cond_salesman_can_deliver
    9: new_activity_cond_salesman_can_get_reward
    10: new_activity_cond_aster_mid_camp_refreshable
    11: new_activity_cond_finish_watcher
    12: new_activity_cond_days_great_equal
    13: new_activity_cond_days_less
    14: new_activity_cond_player_level_great_equal
    15: new_activity_cond_scene_mp_play_activated
    16: new_activity_cond_sea_lamp_popularit
    17: new_activity_cond_sea_lamp_phase
    18: new_activity_cond_mechanicus_open
    19: new_activity_cond_finish_region_search_logic
    20: new_activity_cond_finish_region_search
    21: new_activity_cond_finish_water_spirit_phase
    22: new_activity_cond_finish_find_hilichurl_level_equal
    23: new_activity_cond_finish_find_hilichurl_level_less
    24: new_activity_cond_finish_channeller_slab_oneoff_dungeon_in_stage
    25: new_activity_cond_finish_channeller_slab_any_oneoff_dungeon
    26: new_activity_cond_sepcified_activity_end
    27: new_activity_cond_unlocked_all_listed_scene_points
    28: new_activity_cond_treasure_map_bonus_spot_got_any_fragment
    29: new_activity_cond_item_count_greater
    30: new_activity_cond_quest_global_var_greater
    31: new_activity_cond_quest_global_var_less
    32: new_activity_cond_quest_global_var_equal
    33: new_activity_cond_finish_dig_activity
    34: new_activity_cond_group_bundle_finished
    35: new_activity_cond_plant_flower_can_deliver
    36: new_activity_cond_luna_rite_atmosphere
