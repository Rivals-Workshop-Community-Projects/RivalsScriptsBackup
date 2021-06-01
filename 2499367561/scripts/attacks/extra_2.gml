set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("shieldbreak"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_2, AG_LANDING_LAG, 8);
set_attack_value(AT_EXTRA_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.2);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 200);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, asset_get("sfx_dizzy"));
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 25);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.2);

set_num_hitboxes(AT_EXTRA_2, 0);
