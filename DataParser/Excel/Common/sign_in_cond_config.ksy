meta:
  id: sign_in_cond_config
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__sign_in_cond_type
    - ../../ArrayType/array_of__aux_types__vlq_base128_le_s__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: type
    type: enum__sign_in_cond_type
    if: has_field_type
  - id: param_list
    type: array_of__aux_types__vlq_base128_le_s__length_u
    if: has_field_param_list
instances:
  has_field_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_param_list: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
