set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 10);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

//Startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("nspecial_charge"));

//Charge Animation
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_GOTO, 6);

//Magic Weapon Startup
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_rise"));

//Magic Weapon Rise
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -13);

//Magic Weapon Endlag
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_GOTO, 12);

//Crystal Weapon Startup 
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_rise"));

//Crystal Weapon Rise 
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED, 3);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED, -18);

//Crystal Weapon Transition 
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_SFX, asset_get("sfx_ice_back_air"));

//Crystal Weapon Finisher 
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_HSPEED, 1);

//Crystal Weapon Endlag 
set_window_value(AT_USPECIAL, 10, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 24);

set_num_hitboxes(AT_USPECIAL, 7);

//Magic Weapon Hitbox 1
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -59);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 66);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 105);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);

//Magic Weapon Hitbox 2
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -85);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 78);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);

//Crystal Weapon Hitbox 1
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 41);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 64);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 118);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 1);

//Crystal Weapon Hitbox 2
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 41);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 64);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 118);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 2);

//Crystal Weapon Hitbox 3
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 41);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 64);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 118);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 3);

//Crystal Weapon Hitbox 4
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 41);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 64);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 118);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 7);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 4);

//Crystal Weapon Final Hit
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 44);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 160);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 130);
set_hitbox_value(AT_USPECIAL, 7, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL, 7, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 5);