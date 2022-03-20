// ENTRANCE

set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("entrance"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);


set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 5);