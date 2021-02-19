set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT_2, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

//Startup
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HSPEED, 9);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("sfx_dash"));

//Active Frames
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HSPEED, 13);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HSPEED_TYPE, 1);

//Endlag
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 1);