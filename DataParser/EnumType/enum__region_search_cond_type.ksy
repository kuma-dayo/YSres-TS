meta:
  id: enum__region_search_cond_type
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
    enum: region_search_cond_type
enums:
  region_search_cond_type:
    0: region_search_cond_none
    1: region_search_cond_activity_cond
    2: region_search_cond_finish_search
