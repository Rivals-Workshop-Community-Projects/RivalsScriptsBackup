set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("turntable_grab"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("turntable_grab_hurt"));

set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);


// trying to grab
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

// Miss
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// catch the turnatable
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);

