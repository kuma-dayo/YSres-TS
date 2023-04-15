types:
  config_widget_toy_clint_detector:
    seq:
      - id: base
        type: config_base_widget_toy
      - id: bit_field
        type: u1
      - id: gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_gadget_id
      - id: allow_city_id
        type: aux_types::vlq_base128_le_u
        if: has_field_allow_city_id
      - id: hint_group
        type: aux_types::vlq_base128_le_u
        if: has_field_hint_group
      - id: distance_to_avatar
        type: f4
        if: has_field_distance_to_avatar
      - id: height
        type: f4
        if: has_field_height
    instances:
      has_field_gadget_id: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_allow_city_id: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_hint_group: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_distance_to_avatar: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_height: # Field №4
        value: (bit_field & 0b10000) != 0
      # Base class fields
      is_consume_material:
        value: base.is_consume_material
      cd_group:
        value: base.cd_group
      tags:
        value: base.tags
      business_type:
        value: base.business_type
