meta:
  id: enum__roguelike_card_label
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
    enum: roguelike_card_label
enums:
  roguelike_card_label:
    0: roguelike_card_label_combat
    1: roguelike_card_label_level
    2: roguelike_card_label_rune
    3: roguelike_card_label_equipment
