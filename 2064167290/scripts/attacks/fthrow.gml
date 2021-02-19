set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fthrow"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fthrow_hurt"));

set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 2);


set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX_FRAME, 0);