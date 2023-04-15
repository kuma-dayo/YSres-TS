meta:
  id: enum__mist_trial_client_sync_type
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
    enum: mist_trial_client_sync_type
enums:
  mist_trial_client_sync_type:
    0: mist_trial_sync_none
    1: mist_trial_sync_progress
    2: mist_trial_sync_stat_value
    3: mist_trial_sync_challenge_left_time
