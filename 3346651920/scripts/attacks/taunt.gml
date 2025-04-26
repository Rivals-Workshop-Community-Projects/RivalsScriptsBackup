set_attack_value(AT_TAUNT, AG_CATEGORY, 0);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);

//start
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);

//paper appear
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 2);

//hand move
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 2);

//ripp
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 2);

//there it goes
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 29);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 3);