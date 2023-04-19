set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);

//Startup
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 30);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 33);

set_num_hitboxes(AT_EXTRA_1, 0 );