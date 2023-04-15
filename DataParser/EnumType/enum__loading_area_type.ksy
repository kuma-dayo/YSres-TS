meta:
  id: enum__loading_area_type
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
    enum: loading_area_type
enums:
  loading_area_type:
    0: loading_area_none
    1: loading_area_city
    2: loading_area_outdoor
