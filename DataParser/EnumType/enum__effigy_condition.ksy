meta:
  id: enum__effigy_condition
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
    enum: effigy_condition
enums:
  effigy_condition:
    0: effigy_condition_none
    1: effigy_condition_time_limit
    2: effigy_condition_level_config
    3: effigy_condition_monster_config
