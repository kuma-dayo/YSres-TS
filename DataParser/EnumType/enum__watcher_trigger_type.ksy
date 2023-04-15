meta:
  id: enum__watcher_trigger_type
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
    enum: watcher_trigger_type
enums:
  watcher_trigger_type:
    0: trigger_none
    1: trigger_combat_config_common
    2: trigger_element_view
    5: trigger_enter_airflow
    6: trigger_new_monster
    8: trigger_new_affix
    9: trigger_change_input_device_type
    10: trigger_paimon_angry_voice_easter_egg
    11: trigger_wind_crystal
    101: trigger_element_ball
    102: trigger_world_level_up
    103: trigger_dungeon_entry_to_be_explored
    104: trigger_unlock_gate_temple
    105: trigger_unlock_area
    106: trigger_unlock_trans_point
    107: trigger_open_chest_with_gadget_id
    108: trigger_city_level_up
    109: trigger_monster_die
    110: trigger_platform_start_move
    111: trigger_group_notify
    112: trigger_element_type_change
    113: trigger_gadget_interactable
    114: trigger_collect_set_of_readings
    115: trigger_teleport_with_certain_portal
    116: trigger_world_gather
    117: trigger_take_general_reward
    118: trigger_battle_for_monster_die_or
    119: trigger_battle_for_monster_die_and
    120: trigger_open_world_chest
    121: trigger_enter_climate_area
    122: trigger_unlock_scene_point
    201: trigger_obtain_avatar
    202: trigger_player_level
    203: trigger_avatar_upgrade
    204: trigger_avatar_promote
    205: trigger_weapon_upgrade
    206: trigger_weapon_promote
    207: trigger_reliquary_upgrade
    208: trigger_wear_reliquary
    209: trigger_upgrade_talent
    210: trigger_unlock_recipe
    211: trigger_reliquary_set_num
    212: trigger_obtain_material_num
    213: trigger_obtain_reliquary_num
    214: trigger_gacha_num
    215: trigger_any_reliquary_upgrade
    216: trigger_fetter_level_avatar_num
    217: trigger_skilled_at_recipe
    218: trigger_reliquary_upgrade_equal_rank_level
    219: trigger_specified_weapon_upgrade
    220: trigger_specified_weapon_awaken
    221: trigger_unlock_specific_recipe_or
    222: trigger_possess_material_num
    223: trigger_exhibition_accumulable_value
    224: trigger_exhibition_replaceable_value_settle_num
    225: trigger_any_weapon_upgrade_num
    226: trigger_any_reliquary_upgrade_num
    227: trigger_activity_score_exceed_value
    228: trigger_unlock_specific_forge_or
    229: trigger_unlock_specific_animal_codex
    230: trigger_obtain_item_num
    301: trigger_daily_task
    302: trigger_rand_task
    303: trigger_avatar_expedition
    304: trigger_finish_tower_level
    306: trigger_world_boss_reward
    307: trigger_finish_dungeon
    308: trigger_start_avatar_expedition
    309: trigger_open_blossom_chest
    310: trigger_finish_blossom_progress
    311: trigger_done_tower_gadget_unhurt
    312: trigger_done_tower_stars
    313: trigger_done_tower_unhurt
    314: trigger_steal_food_times
    315: trigger_done_dungeon_with_same_element_avatars
    316: trigger_group_flight_challenge_reach_points
    317: trigger_finish_daily_delivery_num
    318: trigger_tower_stars_num
    319: trigger_finish_specifed_type_blossom_num
    320: trigger_finish_specifed_type_blossom_climate_meter
    321: trigger_finish_blossom_group_variable_gt
    322: trigger_effigy_challenge_score
    323: trigger_finish_routine
    324: trigger_activity_expedition_finish
    325: trigger_activity_channeller_slab_finish_all_camp
    326: trigger_activity_channeller_slab_finish_all_oneoff_dungeon
    327: trigger_activity_channeller_slab_loop_dungeon_total_score
    328: trigger_group_summer_time_sprint_boat_reach_points
    329: trigger_weekly_boss_kill
    330: trigger_bounce_conjuring_finish_count
    331: trigger_bounce_conjuring_score
    332: trigger_group_variable_set_value_to
    333: trigger_kill_gadgets_by_specific_skill
    334: trigger_kill_monsters_without_vehicle
    335: trigger_kill_monster_in_area
    336: trigger_enter_vehicle
    337: trigger_vehicle_duration
    338: trigger_vehicle_friends
    339: trigger_vehicle_killed_by_monster
    340: trigger_vehicle_dash
    401: trigger_do_cook
    402: trigger_do_forge
    403: trigger_do_compound
    404: trigger_do_combine
    405: trigger_buy_shop_goods
    406: trigger_forge_weapon
    421: trigger_mp_play_battle_win
    422: trigger_kill_group_monster
    423: trigger_crucible_element_score
    424: trigger_mp_dungeon_times
    425: trigger_mp_kill_monster_num
    426: trigger_crucible_max_ball
    427: trigger_crucible_max_score
    428: trigger_crucible_submit_ball
    429: trigger_crucible_world_level_score
    430: trigger_mp_play_group_statistic
    431: trigger_kill_group_specific_monster
    432: trigger_reach_mp_play_score
    433: trigger_reach_mp_play_record
    434: trigger_treasure_map_done_region
    435: trigger_sea_lamp_mini_quest
    436: trigger_finish_find_hilichurl_level
    437: trigger_combine_item
    438: trigger_finish_challenge_in_duration
    439: trigger_finish_challenge_left_time
    440: trigger_mp_kill_monster_id_num
    501: trigger_login
    502: trigger_cost_material
    503: trigger_deliver_item_to_salesman
    504: trigger_use_item
    505: trigger_accumulate_daily_login
    601: trigger_finish_challenge
    602: trigger_mechanicus_unlock_gear
    603: trigger_mechanicus_levelup_gear
    604: trigger_mechanicus_difficult
    605: trigger_mechanicus_difficult_score
    606: trigger_mechanicus_kill_monster
    607: trigger_mechanicus_building_point
    608: trigger_mechanicus_difficult_eq
    609: trigger_mechanicus_battle_end
    610: trigger_mechanicus_battle_end_excaped_less_than
    611: trigger_mechanicus_battle_end_points_more_than
    612: trigger_mechanicus_battle_end_gear_more_than
    613: trigger_mechanicus_battle_end_pure_gear_damage
    614: trigger_mechanicus_battle_end_card_pick_more_than
    615: trigger_mechanicus_battle_end_card_target_more_than
    616: trigger_mechanicus_battle_end_build_gear_more_than
    617: trigger_mechanicus_battle_end_gear_kill_more_than
    618: trigger_mechanicus_battle_end_round_more_than
    619: trigger_mechanicus_battle_end_round
    620: trigger_mechanicus_battle_fin_challenge_more_than
    621: trigger_mechanicus_battle_watcher_finish_count
    622: trigger_mechanicus_battle_interact_count
    623: trigger_mechanicus_battle_difficult_escape
    624: trigger_mechanicus_battle_difficult_gear_num
    625: trigger_mechanicus_battle_difficult_gear_id_num
    626: trigger_fleur_fair_dungeon_finish_in_limit_time
    627: trigger_fleur_fair_dungeon_finish_keep_energy
    628: trigger_fleur_fair_dungeon_finish_with_group_variable
    629: trigger_fleur_fair_dungeon_finish_with_buff_num
    630: trigger_fleur_fair_dungeon_mission_finish
    631: trigger_finish_dungeon_and_challenge_remain_time_greater_than
    632: trigger_finish_dungeon_with_mist_trial_stat
    633: trigger_dungeon_mist_trial_stat
    634: trigger_dungeon_element_reaction_num
    635: trigger_level_avatar_finish_dungeon_count
    636: trigger_chess_reach_level
    637: trigger_chess_dungeon_add_score
    638: trigger_chess_dungeon_succ_with_escaped_monsters_less_than
    639: trigger_chess_dungeon_succ_with_tower_count_less_or_equal
    640: trigger_chess_dungeon_succ_with_card_count_less_or_equal
    641: trigger_chess_dungeon_succ_with_card_count_greater_than
    642: trigger_chess_kill_monsters
    643: trigger_chess_cost_building_points
    644: trigger_sumo_stage_score_reach
    645: trigger_sumo_total_max_score_reach
    646: trigger_rogue_destroy_gadget_num
    647: trigger_rogue_kill_monster_num
    649: trigger_rogue_finish_without_using_spring_cell
    650: trigger_rogue_finish_all_challenge_cell
    651: trigger_rogue_finish_with_avatar_element_type_num_less_than
    652: trigger_rogue_finish_with_avatar_num_less_than
    653: trigger_rogue_finish_no_avatar_dead
    654: trigger_rogue_shikigami_upgrade
    655: trigger_rogue_curse_num
    656: trigger_rogue_select_card_num
    700: trigger_finish_quest_and
    701: trigger_finish_quest_or
    702: trigger_daily_task_var_equal
    703: trigger_quest_global_var_equal
    704: trigger_talk_num
    705: trigger_finish_parent_quest_and
    706: trigger_finish_parent_quest_or
    800: trigger_element_reaction_timelimit_num
    801: trigger_element_reaction_timelimit_kill_num
    802: trigger_element_reaction_timelimit_damage_num
    803: trigger_ability_state_pass_time
    804: trigger_max_critical_damage
    805: trigger_full_satiation_team_avatar_num
    806: trigger_killed_by_certain_monster
    807: trigger_cur_avatar_hurt
    808: trigger_cur_avatar_ability_state
    809: trigger_use_energy_skill_num_timelimit
    810: trigger_shield_source_num
    811: trigger_cur_avatar_hurt_by_specific_ability
    812: trigger_killed_by_specific_ability
    900: trigger_max_dash_time
    901: trigger_max_fly_time
    902: trigger_max_fly_map_distance
    903: trigger_sit_down_in_point
    904: trigger_dash
    905: trigger_climb
    906: trigger_fly
    930: trigger_city_reputation_level
    931: trigger_city_reputation_finish_request
    932: trigger_hunting_finish_num
    933: trigger_hunting_fail_num
    934: trigger_offering_level
    935: trigger_miracle_ring_deliver_item
    936: trigger_miracle_ring_take_reward
    937: trigger_blessing_exchange_pic_num
    938: trigger_blessing_redeem_reward_num
    939: trigger_gallery_balloon_reach_score
    940: trigger_gallery_fall_reach_score
    941: trigger_fleur_fair_music_game_reach_score
    942: trigger_main_coop_save_point_and
    943: trigger_main_coop_save_point_or
    944: trigger_main_coop_var_equal
    945: trigger_finish_all_arena_challenge_watcher_in_schedule
    946: trigger_gallery_buoyant_combat_reach_score
    947: trigger_buoyant_combat_reach_new_score_level
    948: trigger_place_miracle_ring
    949: trigger_luna_rite_search
    950: trigger_gallery_fish_reach_score
    1000: trigger_obtain_wood_type
    1001: trigger_obtain_wood_count
    1002: trigger_unlock_furniture_count
    1003: trigger_furniture_make
    1004: trigger_home_level
    1005: trigger_home_coin
    1006: trigger_home_comfort_level
    1007: trigger_home_limited_shop_buy
    1008: trigger_furniture_suite_type
    1009: trigger_arrangement_furniture_count
    1010: trigger_enter_self_home
    1011: trigger_home_module_comfort_value
    1012: trigger_home_enter_room
    1013: trigger_home_avatar_in
    1014: trigger_home_avatar_reward_event_count
    1015: trigger_home_avatar_talk_finish_count
    1016: trigger_home_avatar_reward_event_all_count
    1017: trigger_home_avatar_talk_finish_all_count
    1018: trigger_home_avatar_fetter_get
    1019: trigger_home_avatar_in_count
    1020: trigger_home_do_plant
    1021: trigger_arrangement_furniture
    1022: trigger_home_gather_count
    1023: trigger_home_field_gather_count
    1100: trigger_fishing_succ_num
    1101: trigger_fishing_keep_bonus
    1102: trigger_empty_fish_pool
    1103: trigger_fishing_fail_num
    1104: trigger_shock_fish_num
    1105: trigger_plant_flower_set_wish
    1106: trigger_plant_flower_give_flower
    1107: trigger_plant_flower_obtain_flower_type
    1108: trigger_plant_flower_common_obtain_flower_type
