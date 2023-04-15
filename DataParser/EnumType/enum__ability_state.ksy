meta:
  id: enum__ability_state
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_u
instances:
  value:
    value: data.value
    enum: ability_state
enums:
  ability_state:
    0: none
    1: invincible
    2: deny_lock_on
    4: is_ghost_to_allied
    8: is_ghost_to_enemy
    16: element_burning
    32: element_wet
    64: element_grass_growing
    128: element_frozen
    256: paralyze
    512: lock_hp
    1024: ignore_trigger_bullet
    2048: element_shock
    4096: struggle
    8192: element_rock
    16384: element_conductive
    32768: element_ice
    65536: element_freeze
    131072: attack_up
    262144: defense_up
    524288: speed_up
    1048576: defense_down
    2097152: speed_down
    4194304: element_wind
    8388608: element_electric
    16777216: element_fire
    33554432: element_stick_rock
    67108864: limbo
    134217728: mute_taunt
    268435456: element_petrifaction
    1073741824: ignore_add_energy
    2147483648: no_heal
    8589934592: corruption
    17179869184: unlock_frequency_limit
