set_attack_value(AT_QUICKSILVER, AG_CATEGORY, 2);
set_attack_value(AT_QUICKSILVER, AG_SPRITE, sprite_get("qs_recharge"));
set_attack_value(AT_QUICKSILVER, AG_NUM_WINDOWS, 3);
set_attack_value(AT_QUICKSILVER, AG_OFF_LEDGE, 0);
set_attack_value(AT_QUICKSILVER, AG_HURTBOX_SPRITE, asset_get("qs_recharge_hurt"));

//Startup
set_window_value(AT_QUICKSILVER, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_QUICKSILVER, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_QUICKSILVER, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_QUICKSILVER, 1, AG_WINDOW_SFX, sound_get("bloodvial"));
set_window_value(AT_QUICKSILVER, 1, AG_WINDOW_SFX_FRAME, 7);

//"Active"
set_window_value(AT_QUICKSILVER, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_QUICKSILVER, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_QUICKSILVER, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//Endlag
set_window_value(AT_QUICKSILVER, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_QUICKSILVER, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_QUICKSILVER, 3, AG_WINDOW_ANIM_FRAME_START, 7);

