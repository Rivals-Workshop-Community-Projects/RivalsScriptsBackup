set_attack_value(AT_FSTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//Startup
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 36);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_FSTRONG_2, 0 );