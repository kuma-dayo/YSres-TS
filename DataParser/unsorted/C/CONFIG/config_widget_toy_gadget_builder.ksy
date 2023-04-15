types:
  config_widget_toy_gadget_builder:
    seq:
      - id: base
        type: config_base_widget_toy
      - id: bit_field
        type: u1
      - id: lasting_time
        type: aux_types::vlq_base128_le_u
        if: has_field_lasting_time
      - id: max_count_in_scene
        type: aux_types::vlq_base128_le_u
        if: has_field_max_count_in_scene
      - id: max_count_by_player
        type: aux_types::vlq_base128_le_u
        if: has_field_max_count_by_player
      - id: gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_gadget_id
      - id: distance_to_avatar
        type: f4
        if: has_field_distance_to_avatar
      - id: height_to_avatar
        type: f4
        if: has_field_height_to_avatar
      - id: radius
        type: f4
        if: has_field_radius
      - id: check_collision
        type: u1
        if: has_field_check_collision
    instances:
      has_field_lasting_time: # Field №0
        value: (bit_field & 0b00000001) != 0
      has_field_max_count_in_scene: # Field №1
        value: (bit_field & 0b00000010) != 0
      has_field_max_count_by_player: # Field №2
        value: (bit_field & 0b00000100) != 0
      has_field_gadget_id: # Field №3
        value: (bit_field & 0b00001000) != 0
      has_field_distance_to_avatar: # Field №4
        value: (bit_field & 0b00010000) != 0
      has_field_height_to_avatar: # Field №5
        value: (bit_field & 0b00100000) != 0
      has_field_radius: # Field №6
        value: (bit_field & 0b01000000) != 0
      has_field_check_collision: # Field №7
        value: (bit_field & 0b10000000) != 0
      # Base class fields
      is_consume_material:
        value: base.is_consume_material
      cd_group:
        value: base.cd_group
      tags:
        value: base.tags
      business_type:
        value: base.business_type