set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("nspecial_fail"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("nspecial_fail_hurt"));

//Failing at life
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("clover_nspecial_miss"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 0)
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 60);