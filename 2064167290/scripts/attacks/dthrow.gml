set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dthrow_air"));
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("dthrow_air_hurt"));

set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 2);


set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED, -7);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX_FRAME, 0);