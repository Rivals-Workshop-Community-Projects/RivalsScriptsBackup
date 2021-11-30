set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("hover"));
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, -1);
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 6);
set_attack_value(AT_EXTRA_1, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("buzz"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_GRAVITY, .25);

set_num_hitboxes(AT_EXTRA_1,0);
