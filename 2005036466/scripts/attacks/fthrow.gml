set_attack_value(AT_FTHROW, AG_CATEGORY, 0);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fthrow"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("penny_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 6);

set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 80);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 8);