meta:
  id: dungeon_map_area_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: dungeon_id
    type: aux_types::vlq_base128_le_u
    if: has_field_dungeon_id
  - id: area_id
    type: aux_types::vlq_base128_le_u
    if: has_field_area_id
instances:
  has_field_dungeon_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_area_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
