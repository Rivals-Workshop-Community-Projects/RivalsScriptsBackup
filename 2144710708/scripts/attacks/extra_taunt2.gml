// down taunt

set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("sit"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 200); // hmm
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("owen_crouchbox_copy"));

// start sitting down
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);

// sitting
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// get up
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 0);