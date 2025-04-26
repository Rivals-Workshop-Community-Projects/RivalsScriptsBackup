set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 8);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

// """startup"""
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 4);

// throw shell
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);

// inbetween
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);

// catch shell
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 9);

// inbetween catch and pose
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 11);

// pose
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAME_START, 12);

// pose 2 (hold this frame)
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_LENGTH, 45);
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_ANIM_FRAME_START, 13);

// go back to idle
set_window_value(AT_TAUNT_2, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT_2, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 8, AG_WINDOW_ANIM_FRAME_START, 14);

/*
// 
set_window_value(AT_TAUNT_2, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 10, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT_2, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 10, AG_WINDOW_ANIM_FRAME_START, 12);
*/