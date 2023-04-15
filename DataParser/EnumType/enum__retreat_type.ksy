meta:
  id: enum__retreat_type
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
    enum: retreat_type
enums:
  retreat_type:
    0: by_attacker
    1: by_hit_direction
    2: by_tangent
    3: by_origin_owner
    4: by_hit_direction_inverse
