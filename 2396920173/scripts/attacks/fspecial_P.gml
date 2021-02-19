set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("Pfspecial"));
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("Pfspecial_hurt"));
set_attack_value(AT_DTHROW, AG_OFF_LEDGE, 1);

set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 3);

set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_abyss_hazard_start"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_SFX, asset_get("mfx_levelup"));
set_window_value(AT_DTHROW, 3, AG_WINDOW_SFX_FRAME, 9);