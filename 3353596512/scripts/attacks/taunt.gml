set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("1_idlehbox"));

//startup
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);

//loop
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 160);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 32);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//endlag
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 0);
