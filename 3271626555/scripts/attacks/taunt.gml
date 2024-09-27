set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("taunt_hurt"));

//Startup
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 66);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("taunt_sfx"));

//Hold
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 11);

//Endlag
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 12);