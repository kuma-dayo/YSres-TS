meta:
  id: enum__exclusive_rule_type
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
    enum: exclusive_rule_type
enums:
  exclusive_rule_type:
    0: exclusive_rule_none
    1: exclusive_rule_weapon_affix
    2: exclusive_rule_flycloak
