types:
  array_of__config_music_camera__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_music_camera
        repeat: expr
        repeat-expr: length.value
