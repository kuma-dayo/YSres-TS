meta:
  id: enum__route_type
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
    enum: route_type
enums:
  route_type:
    0: one_way
    1: reciprocate
    2: loop
