meta:
  id: enum__qte_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: qte_type
enums:
  qte_type:
    0: qte_type_none
    1: qte_type_any_step_fail_to_fail
    2: qte_type_never_fail
