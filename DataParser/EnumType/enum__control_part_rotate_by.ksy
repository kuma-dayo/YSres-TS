meta:
  id: enum__control_part_rotate_by
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
    enum: control_part_rotate_by
enums:
  control_part_rotate_by:
    0: world_xz
    1: forward_trans_local
