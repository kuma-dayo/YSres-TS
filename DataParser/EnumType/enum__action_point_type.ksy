meta:
  id: enum__action_point_type
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
    enum: action_point_type
enums:
  action_point_type:
    0: invalid_point
    1: sleep_point
    2: sit_point
    3: landing_point
    4: extraction_point
    5: dvalin_special_point
    6: lupi_colosseum_point
    7: dancing_point
    8: making_point
    9: building_point
    10: search_point
    11: supervise_point
    12: threat_point
    13: preach_point
    14: surround_point
    15: training_point
    16: mole_hole_point
    17: aureae_point
    18: standby_point
    19: sit_on_chair_point
    20: pray_point
    21: guard_point
    22: forge_point
    23: fishing_point
    24: kid_play_point
    25: drinking_point
    26: multi_talk_point
    27: multi_talk_prim_point
    28: shop_owner_point
    29: feeding_point
    30: watering_point
    31: sweeping_point
    32: shelter_point
    33: hiding_point
    34: oceanid_move_point
    35: afraid_point
    36: investigate_point
    37: operation_point
    38: arrange_point
    39: splash_point
    40: repair_point
    41: performing_point
    42: cat_feed_point
    43: dog_feed_point
    44: tanuki_target_point
