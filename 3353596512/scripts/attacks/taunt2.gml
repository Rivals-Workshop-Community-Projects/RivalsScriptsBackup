set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt2"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("1_idlehbox"));

//startup
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

//point
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//endlag
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
