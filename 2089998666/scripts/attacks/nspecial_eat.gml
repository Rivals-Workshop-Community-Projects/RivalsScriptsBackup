//eat the cookie
set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, sound_get("smw_yoshi_swallow_no_coin"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 9);


set_num_hitboxes(AT_DTHROW,0);