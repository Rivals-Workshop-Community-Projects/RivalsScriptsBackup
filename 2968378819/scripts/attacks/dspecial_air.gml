set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));

//Startup
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_ori_grenade_launch"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 11);

//Active (Sweetspot)
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 9);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

//Active (Sourspot)
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 9);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);

//Endlag 
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_HSPEED, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_VSPEED, 5);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_GOTO, 7);

//Landing lag 
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_DSPECIAL_AIR, 2);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 42);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 280);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("HitMed2"));

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 42);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("HitMed"));