meta:
  id: by_entity_is_alive
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_predicate
seq:
  - id: base
    type: config_ability_predicate
instances:
  # Base class fields
  target:
    value: base.target
