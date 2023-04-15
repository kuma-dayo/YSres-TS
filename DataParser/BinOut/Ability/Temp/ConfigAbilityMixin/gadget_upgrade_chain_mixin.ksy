meta:
  id: gadget_upgrade_chain_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: global_value_key
    type: aux_types::string
    if: has_field_global_value_key
instances:
  has_field_global_value_key: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  is_unique:
    value: base.is_unique