set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("ambitaunt"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("hodan_hurt_box"));

// Startup
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 42);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 13);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH) - 1);

// Eat Banan
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_orca_bite"));
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, get_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH) - 1);

// Endlag
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 19);