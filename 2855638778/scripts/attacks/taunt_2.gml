set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_mirror"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("soldier_hurtbox"));

// "startup"
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_land"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 14);

// "part 2"
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 2);

// "hold pose"
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 1);

// "startup 2"
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX, sound_get("soldier_taunt"));
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX_FRAME, 5);

// "active"
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 1);

// "endlag"
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAMES, 2);

// sfx_shovel_dig
// sfx_shovel_swing_heavy1
// sfx_shovel_swing_light