set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));


//backward dash cancel
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 419);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("olym_dash2"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED, -8);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);