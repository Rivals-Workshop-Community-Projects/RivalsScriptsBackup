set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("nspecialthrw3"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("nspecialthrw3_hurt"));

//Right
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, sound_get("plux_throw"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED, -12);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_num_hitboxes(AT_DTHROW, 0);

set_attack_value(AT_DTHROW, AG_MUNO_ATTACK_EXCLUDE, 1);