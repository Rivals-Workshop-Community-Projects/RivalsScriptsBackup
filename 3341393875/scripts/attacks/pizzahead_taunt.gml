set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("pizzahead_taunt"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("pizzahead_hurtbox"));

//Startup
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);


//Loop
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 60);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//Endlag
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
