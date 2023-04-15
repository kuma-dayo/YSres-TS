meta:
  id: echo_shell_story_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: story_title
    type: aux_types::vlq_base128_le_u
    if: has_field_story_title
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_story_title: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
