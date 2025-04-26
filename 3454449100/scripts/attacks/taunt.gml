set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

// """startup"""
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);

// bah!
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// inbetween
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 6);

// bah!
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 9);

// return to idle
set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 12);
