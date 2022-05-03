set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get(string(plate_state) + "_got_parried"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("got_parried_hurt"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTHROW, AG_CATEGORY, 0);

set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, sound_get("nspecial_parried"));

set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 40);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);