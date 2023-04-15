meta:
  id: enum__monster_size_type
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
    enum: monster_size_type
enums:
  monster_size_type:
    0: normal_humanoid_type
    1: stoop_type
    2: strong_humanoid_type
    3: slime_type
    99: other_type
