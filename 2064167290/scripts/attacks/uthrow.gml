set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("uthrow_hurt"));

set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 2);



set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);


set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX_FRAME, 0);