set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dthrow"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_DTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 4);

set_num_hitboxes(AT_DTHROW, 0);
