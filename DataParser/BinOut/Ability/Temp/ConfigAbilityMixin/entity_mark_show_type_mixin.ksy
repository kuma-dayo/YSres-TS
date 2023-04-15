meta:
  id: entity_mark_show_type_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../EnumType/enum__entity_mark_type
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: mark_type
    type: enum__entity_mark_type
    if: has_field_mark_type
instances:
  has_field_mark_type: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
