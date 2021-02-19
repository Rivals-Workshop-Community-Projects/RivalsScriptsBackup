set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 0);


set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("chaos_fly"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 0);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 20);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 20);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_SFX, sound_get("chaos_halt"));