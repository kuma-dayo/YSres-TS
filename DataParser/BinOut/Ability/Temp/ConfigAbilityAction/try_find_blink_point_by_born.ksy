meta:
  id: try_find_blink_point_by_born
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../Common/Disp/disp__config_born_type
    - ../../../../EnumType/enum__blink_hit_scene_test_type
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: born
    type: disp__config_born_type
    if: has_field_born
  - id: hit_scene_test
    type: u1
    if: has_field_hit_scene_test
  - id: hit_scene_type
    type: enum__blink_hit_scene_test_type
    if: has_field_hit_scene_type
  - id: limit_y
    type: aux_types::dynamic_float
    if: has_field_limit_y
  - id: ignore_water
    type: u1
    if: has_field_ignore_water
instances:
  has_field_born: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_hit_scene_test: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_hit_scene_type: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_limit_y: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_ignore_water: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  token:
    value: base.token
  target:
    value: base.target
  other_targets:
    value: base.other_targets
  do_off_stage:
    value: base.do_off_stage
  do_after_die:
    value: base.do_after_die
  can_be_handled_on_recover:
    value: base.can_be_handled_on_recover
  mute_remote_action:
    value: base.mute_remote_action
  predicates:
    value: base.predicates
  predicates_foreach:
    value: base.predicates_foreach
