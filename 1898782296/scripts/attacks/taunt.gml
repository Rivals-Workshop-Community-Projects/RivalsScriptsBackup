set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 7);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));
set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 4);

//Taunt to left
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 50);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 10);

//Taunt to right
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 50);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 10);

//Booty time
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 50);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 20);

//Hop start
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 32);

//Hopping
set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 10);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 9999);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 37);
set_window_value(AT_TAUNT, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_TAUNT, 5, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_TAUNT, 5, AG_WINDOW_HSPEED, 8);
set_window_value(AT_TAUNT, 5, AG_WINDOW_VSPEED, -6);

//Last Dance window
set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 38);
set_window_value(AT_TAUNT, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_TAUNT, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_TAUNT, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_TAUNT, 6, AG_WINDOW_VSPEED, 0);

//Dance end
set_window_value(AT_TAUNT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 40);