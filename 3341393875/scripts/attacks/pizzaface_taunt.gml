set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("pizzaface_laugh"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("pizzaface_hurtbox"));

//Startup/Hold
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 7);

//Transition
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 7);

//Laugh Loop
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);

//Endlag
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 11);
