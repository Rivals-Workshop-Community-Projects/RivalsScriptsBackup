// ENTRANCE 2

set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("entrance2"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 2);


set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 50);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 9);

set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 5);