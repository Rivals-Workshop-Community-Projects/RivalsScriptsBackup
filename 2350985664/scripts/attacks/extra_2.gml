// Grab miss
set_attack_value(AT_EXTRA_2, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("grab_endlag"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("grab_endlag_hurt"));
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_2, AG_LANDING_LAG, 15);

set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 1)


set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 26);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 7);