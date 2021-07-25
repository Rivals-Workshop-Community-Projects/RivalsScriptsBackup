set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("arc_taunt"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("arc_taunt_hurt"));

set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);

set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 57);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 19);

set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 19);

set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_SFX, asset_get("sfx_waterwarp_start"));
set_window_value(AT_FTHROW, 3, AG_WINDOW_SFX_FRAME, 3);