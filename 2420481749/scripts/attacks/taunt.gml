set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 8);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

//startup
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);

//jump
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 26);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 13);

//land
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);

//hat
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 19);

//anticipation
set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 22);

//thumbsupovershoot
set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 25);

//inbetween
set_window_value(AT_TAUNT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 26);

//thumbsup
set_window_value(AT_TAUNT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 8, AG_WINDOW_LENGTH, 14);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAME_START, 27);