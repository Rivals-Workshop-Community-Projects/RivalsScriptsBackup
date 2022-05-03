#macro AT_TAUNT_3 43
set_attack_value(AT_TAUNT_3, AG_SPRITE, sprite_get("fnf"));
set_attack_value(AT_TAUNT_3, AG_NUM_WINDOWS, 6);
set_attack_value(AT_TAUNT_3, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
//Idle
set_window_value(AT_TAUNT_3, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT_3, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TAUNT_3, 1, AG_WINDOW_ANIM_FRAMES, 5);
//Up
set_window_value(AT_TAUNT_3, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT_3, 2, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TAUNT_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_3, 2, AG_WINDOW_ANIM_FRAME_START, 5);
//Right
set_window_value(AT_TAUNT_3, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT_3, 3, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TAUNT_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_3, 3, AG_WINDOW_ANIM_FRAME_START, 7);
//Down
set_window_value(AT_TAUNT_3, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT_3, 4, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TAUNT_3, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT_3, 4, AG_WINDOW_ANIM_FRAME_START, 9);
//Left
set_window_value(AT_TAUNT_3, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT_3, 5, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TAUNT_3, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_3, 5, AG_WINDOW_ANIM_FRAME_START, 14);
//Exit
set_window_value(AT_TAUNT_3, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT_3, 6, AG_WINDOW_ANIM_FRAMES, 1);