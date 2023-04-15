meta:
  id: enum__climate_source_type
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
    enum: climate_source_type
enums:
  climate_source_type:
    0: none
    1: climate
    2: other
    3: all
