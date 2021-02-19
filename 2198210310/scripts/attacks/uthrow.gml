set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_UTHROW, AG_AIR_SPRITE, sprite_get("uthrow_air"));
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UTHROW, AG_LANDING_LAG, 6);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("uthrow_hurt"));
set_attack_value(AT_UTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("uthrow_air_hurt"));

set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);

set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);