set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("idle_hurtbox"));

//Startup
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);

//Loop (Nah-huh)
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//Endlag
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 17);