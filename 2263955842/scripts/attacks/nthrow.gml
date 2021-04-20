// ENTRANCE

set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("entrance"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 2);


set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 58);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 10);