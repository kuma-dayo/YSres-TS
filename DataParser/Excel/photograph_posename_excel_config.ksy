meta:
  id: photograph_posename_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - Common/array_of__fetter_condition_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: pose_file
    type: aux_types::string
    if: has_field_pose_file
  - id: animatorstate_id
    type: aux_types::vlq_base128_le_u
    if: has_field_animatorstate_id
  - id: pose_icon
    type: aux_types::string
    if: has_field_pose_icon
  - id: pose_name
    type: aux_types::vlq_base128_le_u
    if: has_field_pose_name
  - id: unlock_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_desc
  - id: fetter_id
    type: aux_types::vlq_base128_le_u
    if: has_field_fetter_id
  - id: avatar_id
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_id
  - id: open_conds
    type: array_of__fetter_condition_config__length_s
    if: has_field_open_conds
  - id: finish_conds
    type: array_of__fetter_condition_config__length_s
    if: has_field_finish_conds
instances:
  has_field_pose_file: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_animatorstate_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_pose_icon: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_pose_name: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_unlock_desc: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_fetter_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_avatar_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_open_conds: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_finish_conds: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
