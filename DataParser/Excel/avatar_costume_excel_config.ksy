meta:
  id: avatar_costume_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
- id: bit_field
  type: aux_types::length_prefixed_bitfield
- id: skin_id
  type: aux_types::vlq_base128_le_u
  if: has_field_skin_id
- id: index_id
  type: aux_types::vlq_base128_le_u
  if: has_field_index_id
- id: name
  type: aux_types::vlq_base128_le_u
  if: has_field_name
- id: desc
  type: aux_types::vlq_base128_le_u
  if: has_field_desc
- id: item_id
  type: aux_types::vlq_base128_le_u
  if: has_field_item_id
- id: character_id
  type: aux_types::vlq_base128_le_u
  if: has_field_character_id
- id: json_name
  type: aux_types::string
  if: has_field_json_name
- id: prefab_path_hash_suffix
  type: aux_types::vlq_base128_le_u
  if: has_field_prefab_path_hash
- id: prefab_remote_path_hash_suffix
  type: aux_types::vlq_base128_le_u
  if: has_field_prefab_remote_path_hash
- id: prefab_npc_path_hash_suffix
  type: aux_types::vlq_base128_le_u
  if: has_field_prefab_npc_path_hash
- id: animator_config_path_hash_suffix
  type: aux_types::vlq_base128_le_u
  if: has_field_animator_config_path_hash
- id: prefab_manekin_path_hash_suffix
  type: aux_types::vlq_base128_le_u
  if: has_field_prefab_manekin_path_hash
- id: controller_path_hash_suffix
  type: aux_types::vlq_base128_le_u
  if: has_field_controller_path_hash
- id: controller_remote_path_hash_suffix
  type: aux_types::vlq_base128_le_u
  if: has_field_controller_remote_path_hash
- id: is_default
  type: u1
  if: has_field_is_default
- id: is_default_unlock
  type: u1
  if: has_field_is_default_unlock
- id: quality
  type: aux_types::vlq_base128_le_u
  if: has_field_quality
- id: hide
  type: u1
  if: has_field_hide
- id: front_icon_name
  type: aux_types::string
  if: has_field_front_icon_name
- id: side_icon_name
  type: aux_types::string
  if: has_field_side_icon_name
- id: image_name_hash_suffix
  type: aux_types::vlq_base128_le_u
  if: has_field_image_name_hash
- id: domestic_hide_in_art_preview
  type: u1
  if: has_field_domestic_hide_in_art_preview
- id: oversea_hide_in_art_preview
  type: u1
  if: has_field_oversea_hide_in_art_preview
instances:
  has_field_skin_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_index_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_name: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_desc: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_item_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_character_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_json_name: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_prefab_path_hash: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_prefab_remote_path_hash: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_prefab_npc_path_hash: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_animator_config_path_hash: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_prefab_manekin_path_hash: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_controller_path_hash: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_controller_remote_path_hash: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_is_default: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_is_default_unlock: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_quality: # Field №16
    value: (bit_field.length.value >= (0b00000010 + 1)) and ((bit_field.bitfield[0b00000010] & 0b00000001) != 0)
  has_field_hide: # Field №17
    value: (bit_field.length.value >= (0b00000010 + 1)) and ((bit_field.bitfield[0b00000010] & 0b00000010) != 0)
  has_field_front_icon_name: # Field №18
    value: (bit_field.length.value >= (0b00000010 + 1)) and ((bit_field.bitfield[0b00000010] & 0b00000100) != 0)
  has_field_side_icon_name: # Field №19
    value: (bit_field.length.value >= (0b00000010 + 1)) and ((bit_field.bitfield[0b00000010] & 0b00001000) != 0)
  has_field_image_name_hash: # Field №20
    value: (bit_field.length.value >= (0b00000010 + 1)) and ((bit_field.bitfield[0b00000010] & 0b00010000) != 0)
  has_field_domestic_hide_in_art_preview: # Field №21
    value: (bit_field.length.value >= (0b00000010 + 1)) and ((bit_field.bitfield[0b00000010] & 0b00100000) != 0)
  has_field_oversea_hide_in_art_preview: # Field №22
    value: (bit_field.length.value >= (0b00000010 + 1)) and ((bit_field.bitfield[0b00000010] & 0b01000000) != 0)