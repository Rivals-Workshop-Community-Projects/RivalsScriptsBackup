set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("nspecialthrw1"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("nspecialthrw1_hurt"));

//Right
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, sound_get("plux_throw"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_UTHROW, 0);

set_attack_value(AT_UTHROW, AG_MUNO_ATTACK_EXCLUDE, 1);