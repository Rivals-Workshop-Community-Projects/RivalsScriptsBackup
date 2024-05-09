set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 40);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));

//Startup
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("dbd_weapon_swing01"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_CANCEL_FRAME, -99);

//Active
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -4);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CANCEL_FRAME, -99);
set_window_value(AT_FSPECIAL_AIR, 2, AG_ACTIVE_WINDOW, 1);

//Cancel Endlag
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_GOTO, 6);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//Landing Lag
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 0);

set_num_hitboxes(AT_FSPECIAL_AIR, 3);

//Main Hitbox
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 292);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 78);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .9)
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("dbd_weapon_hit3"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, hfx_sword_medium);
