set_attack_value(AT_FSPECIAL_2_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2_AIR, AG_SPRITE, sprite_get("fspecial2_air"));
set_attack_value(AT_FSPECIAL_2_AIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSPECIAL_2_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial2_air_hurt"));

//Startup
set_window_value(AT_FSPECIAL_2_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2_AIR, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSPECIAL_2_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2_AIR, 1, AG_WINDOW_SFX, sound_get("fspecial_air"));
set_window_value(AT_FSPECIAL_2_AIR, 1, AG_WINDOW_SFX_FRAME, 17);
set_window_value(AT_FSPECIAL_2_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);

//Dash Active
set_window_value(AT_FSPECIAL_2_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2_AIR, 2, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSPECIAL_2_AIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_2_AIR, 2, AG_WINDOW_HSPEED, 9);
set_window_value(AT_FSPECIAL_2_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2_AIR, 2, AG_WINDOW_GOTO, 6);

//Connect/Rise
set_window_value(AT_FSPECIAL_2_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2_AIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_2_AIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL_2_AIR, 3, AG_WINDOW_VSPEED, -4);
set_window_value(AT_FSPECIAL_2_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);

//Descends
set_window_value(AT_FSPECIAL_2_AIR, 4, AG_WINDOW_TYPE, 10);
set_window_value(AT_FSPECIAL_2_AIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL_2_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_FSPECIAL_2_AIR, 4, AG_WINDOW_VSPEED, 15);
set_window_value(AT_FSPECIAL_2_AIR, 4, AG_WINDOW_VSPEED_TYPE, 1);

//Slam
set_window_value(AT_FSPECIAL_2_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2_AIR, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_2_AIR, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_FSPECIAL_2_AIR, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2_AIR, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2_AIR, 5, AG_WINDOW_GOTO, 8);

//Endlag
set_window_value(AT_FSPECIAL_2_AIR, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL_2_AIR, 6, AG_WINDOW_LENGTH, 29);
set_window_value(AT_FSPECIAL_2_AIR, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL_2_AIR, 6, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSPECIAL_2_AIR, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2_AIR, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_FSPECIAL_2_AIR, 2);

//Grab Hitbox
set_hitbox_value(AT_FSPECIAL_2_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2_AIR, 1, HG_LIFETIME, 13);
set_hitbox_value(AT_FSPECIAL_2_AIR, 1, HG_HITBOX_X, 62);
set_hitbox_value(AT_FSPECIAL_2_AIR, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSPECIAL_2_AIR, 1, HG_WIDTH, 95);
set_hitbox_value(AT_FSPECIAL_2_AIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_FSPECIAL_2_AIR, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL_2_AIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_2_AIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL_2_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2_AIR, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_2_AIR, 1, HG_HIT_SFX, sound_get("fspecial_grab"));
set_hitbox_value(AT_FSPECIAL_2_AIR, 1, HG_HITBOX_GROUP, -1);

//Slam Hitbox
set_hitbox_value(AT_FSPECIAL_2_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2_AIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2_AIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2_AIR, 2, HG_HITBOX_X, 15);
set_hitbox_value(AT_FSPECIAL_2_AIR, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FSPECIAL_2_AIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2_AIR, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL_2_AIR, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL_2_AIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL_2_AIR, 2, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL_2_AIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2_AIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2_AIR, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL_2_AIR, 2, HG_HIT_SFX, sound_get("fspecial_hit"));
set_hitbox_value(AT_FSPECIAL_2_AIR, 2, HG_HITBOX_GROUP, -1);