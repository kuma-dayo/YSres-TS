types:
  dungeon_exit:
    seq:
      - id: base
        type: config_scene_point
      - id: bit_field
        type: u1
      - id: entry_point_id
        type: aux_types::vlq_base128_le_u
        if: has_field_entry_point_id
    instances:
      has_field_entry_point_id: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      type:
        value: base.type
      gadget_id:
        value: base.gadget_id
      area_id:
        value: base.area_id
      pos:
        value: base.pos
      rot:
        value: base.rot
      tran_pos:
        value: base.tran_pos
      tran_rot:
        value: base.tran_rot
      unlocked:
        value: base.unlocked
      alias:
        value: base.alias
      group_limit:
        value: base.group_limit
      is_model_hidden:
        value: base.is_model_hidden
