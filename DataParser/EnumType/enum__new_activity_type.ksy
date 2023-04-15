meta:
  id: enum__new_activity_type
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
    enum: new_activity_type
enums:
  new_activity_type:
    0: new_activity_general
    1: new_activity_sea_lamp
    2: new_activity_crucible
    3: new_activity_salesman
    4: new_activity_trial_avatar
    5: new_activity_signin
    6: new_activity_bonus
    7: new_activity_newbeebonus
    8: new_activity_personal_liine
    9: new_activity_delivery
    10: new_activity_flight
    1100: new_activity_aster
    1200: new_activity_dragonspine
    1201: new_activity_reunion
    1202: new_activity_effigy
    1203: new_activity_tower_reset
    1204: new_activity_treasure_map
    99: new_activity_temp
    1205: new_activity_salesman_mp
    1300: new_activity_blessing
    1301: new_activity_expedition
    1302: new_activity_sea_lamp_new
    1401: new_activity_operations_bonus
    1501: new_activity_monster_banner_drake_primo_rock
    1400: new_activity_fleur_fair
    1402: new_activity_arena_challenge
    1403: new_activity_water_spirit_challenge
    1404: new_activity_signin_companion
    1405: new_activity_coop
    1502: new_activity_channeler_slab
    1503: new_activity_misttrial
    1504: new_activity_hideandseek
    1505: new_activity_find_hilichurl
    1506: new_activity_monster_banner_effigy_ice
    1507: new_activity_homeworld
    1508: new_activity_h5
    1600: new_activity_summer_time
    1601: new_activity_buoyant_combat
    1602: new_activity_echo_shell
    1603: new_activity_bounce_conjuring
    1604: new_activity_daoqi_advertisement
    2001: new_activity_blitz_rush
    2002: new_activity_chess
    2003: new_activity_monster_banner_effigy_fire
    2004: new_activity_monster_banner_perpetual
    2005: new_activity_personal_liine_2
    2100: new_activity_general_banner
    2101: new_activity_luna_rite
    2102: new_activity_sumo
    2103: new_activity_moonfin_trial
    2104: new_activity_monster_banner_effigy_water
    2105: new_activity_monster_banner_raijin
    2200: new_activity_plant_flower
    2201: new_activity_roguelike_dungeon
    2202: new_activity_music_game
    2203: new_activity_dig
    2204: new_activity_moonfin_banner
