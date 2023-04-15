meta:
  id: set_system_value_to_override_map
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../aux_types
    - ../../../../EnumType/enum__system_valuer_type
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: key
    type: aux_types::string
    if: has_field_key
  - id: type
    type: enum__system_valuer_type
    if: has_field_type
instances:
  has_field_key: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_type: # Field №1
    value: (bit_field & 0b10) != 0
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
