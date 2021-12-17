set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 4);

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);


set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_SFX, sound_get("dash"));
//set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 12);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_INVINCIBILITY, 2);


set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 32);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_INVINCIBILITY, 2);