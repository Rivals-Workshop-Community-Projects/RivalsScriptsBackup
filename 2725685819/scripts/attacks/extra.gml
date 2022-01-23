set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("fair_stick"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 0);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("slicel"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_EXTRA_1, 0);