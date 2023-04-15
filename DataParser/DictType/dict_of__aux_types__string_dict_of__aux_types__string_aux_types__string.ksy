meta:
  id: dict_of__aux_types__string_dict_of__aux_types__string_aux_types__string
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - dict_of__aux_types__string_aux_types__string
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: items
    type: kvp_of_aux_types__string_dict_of__aux_types__string_aux_types__string
    repeat: expr
    repeat-expr: length.value
types:
  kvp_of_aux_types__string_dict_of__aux_types__string_aux_types__string:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: dict_of__aux_types__string_aux_types__string
