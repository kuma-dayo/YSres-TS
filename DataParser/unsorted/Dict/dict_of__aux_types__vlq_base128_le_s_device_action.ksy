types:
  dict_of__aux_types__vlq_base128_le_s_device_action:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_s_device_action
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_s_device_action:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_s
      - id: value
        type: device_action
