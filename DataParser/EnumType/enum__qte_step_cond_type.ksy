meta:
  id: enum__qte_step_cond_type
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
    enum: qte_step_cond_type
enums:
  qte_step_cond_type:
    0: qte_step_cond_none
    1: qte_step_cond_power_bar_value
