set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("idle"));
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));

set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 4);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 0);

//hold button
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 6);

//release
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 6);