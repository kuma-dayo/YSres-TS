types:
  context_condition_main_quest_visible:
    seq:
      - id: base
        type: context_condition
      - id: bit_field
        type: u1
      - id: main_quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_main_quest_id
      - id: visible
        type: u1
        if: has_field_visible
    instances:
      has_field_main_quest_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_visible: # Field №1
        value: (bit_field & 0b10) != 0
