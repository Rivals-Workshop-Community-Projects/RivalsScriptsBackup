set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 14);
set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
//set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 1);
//set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);

//Charging window
set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_absa_new_whip1"));

//Preparing to pounce window
set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_ori_dsmash_skitter_alone"));

//Pounce 1
set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HSPEED, 10);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_ori_dsmash_skitter_alone"));

set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 6);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 6);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 14);

//Pounce 2
set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HSPEED, -20);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_ori_dsmash_skitter_alone"));
//set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 10);

set_window_value(AT_DSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 10);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 10);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 21);

//Pounce 3
set_window_value(AT_DSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_HSPEED, 20);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_SFX, asset_get("sfx_ori_dsmash_skitter_alone"));
//set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 10);

set_window_value(AT_DSTRONG, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_CUSTOM_GROUND_FRICTION, 10);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, 10);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 28);

//Pounce 4
set_window_value(AT_DSTRONG, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_HSPEED, -20);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_SFX, asset_get("sfx_ori_dsmash_skitter_alone"));
//set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 10);

set_window_value(AT_DSTRONG, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 11, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 11, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 11, AG_WINDOW_CUSTOM_GROUND_FRICTION, 10);
set_window_value(AT_DSTRONG, 11, AG_WINDOW_CUSTOM_AIR_FRICTION, 10);
set_window_value(AT_DSTRONG, 11, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 11, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSTRONG, 11, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 35);

//End lag transition 
set_window_value(AT_DSTRONG, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 12, AG_WINDOW_LENGTH, 4);
//set_window_value(AT_DSTRONG, 10, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_DSTRONG, 10, AG_WINDOW_HSPEED, -5);
set_window_value(AT_DSTRONG, 12, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 12, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSTRONG, 12, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 12, AG_WINDOW_ANIM_FRAME_START, 39);
//set_window_value(AT_DSTRONG, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

//End lag
set_window_value(AT_DSTRONG, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 13, AG_WINDOW_LENGTH, 10);
//set_window_value(AT_DSTRONG, 10, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_DSTRONG, 10, AG_WINDOW_HSPEED, -5);
set_window_value(AT_DSTRONG, 13, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 13, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSTRONG, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 13, AG_WINDOW_ANIM_FRAME_START, 41);
set_window_value(AT_DSTRONG, 13, AG_WINDOW_HAS_WHIFFLAG, 1);

//Recovery
set_window_value(AT_DSTRONG, 14, AG_WINDOW_TYPE, 1); //Modified from attack_update if Amber is in the air
set_window_value(AT_DSTRONG, 14, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 14, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 14, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DSTRONG, 14, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DSTRONG, 14, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 14, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSTRONG, 14, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 14, AG_WINDOW_ANIM_FRAME_START, 42);


set_num_hitboxes(AT_DSTRONG, 10);

//Laser hitbox (pre-charge)
set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 72);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -9);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 28);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 23);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 4);
//set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 1);
//set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
//set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);

//Pounce 1 hitboxes
set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 1 );
set_hitbox_value(AT_DSTRONG, 2, HG_FORCE_FLINCH, 1 );
//set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 1);
//set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
//set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 2);

set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 40);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_TECHABLE, 1 );
set_hitbox_value(AT_DSTRONG, 3, HG_FORCE_FLINCH, 1 );
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 180);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_EXTRA_HITPAUSE, 6);
//set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
//set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);

//Pounce 2
set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 40);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 180);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_TECHABLE, 1 );
set_hitbox_value(AT_DSTRONG, 2, HG_FORCE_FLINCH, 1 );
//set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 1);
//set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT_X_OFFSET, 10);
//set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DSTRONG, 4, HG_HITSTUN_MULTIPLIER, 2);

set_hitbox_value(AT_DSTRONG, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 40);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_TECHABLE, 1 );
set_hitbox_value(AT_DSTRONG, 5, HG_FORCE_FLINCH, 1 );
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_EXTRA_HITPAUSE, 6);
//set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
//set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);

//Pounce 3
set_hitbox_value(AT_DSTRONG, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 8);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -20);

set_hitbox_value(AT_DSTRONG, 7, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 9);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 7, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_PRIORITY, 2);


//Pounce 4
set_hitbox_value(AT_DSTRONG, 8, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW, 10);
set_hitbox_value(AT_DSTRONG, 8, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_Y, -20);

set_hitbox_value(AT_DSTRONG, 9, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 9, HG_WINDOW, 11);
set_hitbox_value(AT_DSTRONG, 9, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 9, HG_WIDTH, 40);
set_hitbox_value(AT_DSTRONG, 9, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 9, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 9, HG_DAMAGE, 5);
//set_hitbox_value(AT_DSTRONG, 6, HG_TECHABLE, 1 );
//set_hitbox_value(AT_DSTRONG, 6, HG_FORCE_FLINCH, 1 );
set_hitbox_value(AT_DSTRONG, 9, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 9, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DSTRONG, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 9, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_DSTRONG, 9, HG_BASE_HITPAUSE, 20);
//set_hitbox_value(AT_DSTRONG, 9, HG_EXTRA_HITPAUSE, 10);
//set_hitbox_value(AT_DSTRONG, 9, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_DSTRONG, 9, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 9, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DSTRONG, 9, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 9, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));

//Laser pointer spawn hitbox
set_hitbox_value(AT_DSTRONG, 10, HG_PARENT_HITBOX, 10);
set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 10, HG_WINDOW, 1);
set_hitbox_value(AT_DSTRONG, 10, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSTRONG, 10, HG_LIFETIME, 8);
set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_X, -15);
set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_Y, -100);
set_hitbox_value(AT_DSTRONG, 10, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 10, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 10, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 10, HG_ANGLE, -45);
set_hitbox_value(AT_DSTRONG, 10, HG_BASE_KNOCKBACK, 4);
//set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSTRONG, 10, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 10, HG_EFFECT, 9);
//set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
//set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSTRONG, 10, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 10, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 10, HG_HITSTUN_MULTIPLIER, 1.0);

// RUNE C PROJECTILE

//Projectile hitbox (spawned manually from article3_update)
set_hitbox_value(AT_DSTRONG, 11, HG_PARENT_HITBOX, 11);
set_hitbox_value(AT_DSTRONG, 11, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_DSTRONG, 11, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 11, HG_WIDTH, 125);
set_hitbox_value(AT_DSTRONG, 11, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 11, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 11, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 11, HG_SHAPE, 2 );
set_hitbox_value(AT_DSTRONG, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 11, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 11, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 11, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 11, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_DSTRONG, 11, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 11, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_DSTRONG, 11, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_DSTRONG, 11, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_DSTRONG, 11, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_DSTRONG, 11, HG_TECHABLE, 0 );
set_hitbox_value(AT_DSTRONG, 11, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_DSTRONG, 11, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_DSTRONG, 11, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 11, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_DSTRONG, 11, HG_VISUAL_EFFECT, 20 );
set_hitbox_value(AT_DSTRONG, 11, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSTRONG, 11, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 11, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
set_hitbox_value(AT_DSTRONG, 11, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSTRONG, 11, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DSTRONG, 11, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DSTRONG, 11, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_DSTRONG, 11, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_DSTRONG, 11, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(AT_DSTRONG, 11, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(AT_DSTRONG, 11, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_DSTRONG, 11, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_DSTRONG, 11, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_DSTRONG, 11, HG_PROJECTILE_DESTROY_EFFECT, 1); // was 109
set_hitbox_value(AT_DSTRONG, 11, HG_FORCE_FLINCH, 2 );
set_hitbox_value(AT_DSTRONG, 11, HG_TECHABLE, 1 );
set_hitbox_value(AT_DSTRONG, 11, HG_EFFECT, 98 );

//Projectile hitbox (spawned manually from article3_update)
set_hitbox_value(AT_DSTRONG, 12, HG_PARENT_HITBOX, 12);
set_hitbox_value(AT_DSTRONG, 12, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_DSTRONG, 12, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 12, HG_WIDTH, 125);
set_hitbox_value(AT_DSTRONG, 12, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 12, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 12, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 12, HG_SHAPE, 2 );
set_hitbox_value(AT_DSTRONG, 12, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 12, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 12, HG_ANGLE, 140);
set_hitbox_value(AT_DSTRONG, 12, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 12, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_DSTRONG, 12, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 12, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_DSTRONG, 12, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_DSTRONG, 12, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_DSTRONG, 12, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_DSTRONG, 12, HG_TECHABLE, 0 );
set_hitbox_value(AT_DSTRONG, 12, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_DSTRONG, 12, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_DSTRONG, 12, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 12, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_DSTRONG, 12, HG_VISUAL_EFFECT, 20 );
set_hitbox_value(AT_DSTRONG, 12, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_DSTRONG, 12, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 12, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
set_hitbox_value(AT_DSTRONG, 12, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSTRONG, 12, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DSTRONG, 12, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DSTRONG, 12, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_DSTRONG, 12, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_DSTRONG, 12, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(AT_DSTRONG, 12, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(AT_DSTRONG, 12, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_DSTRONG, 12, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_DSTRONG, 12, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_DSTRONG, 12, HG_PROJECTILE_DESTROY_EFFECT, 1); // was 109
set_hitbox_value(AT_DSTRONG, 12, HG_FORCE_FLINCH, 2 );
set_hitbox_value(AT_DSTRONG, 12, HG_TECHABLE, 1 );
set_hitbox_value(AT_DSTRONG, 12, HG_EFFECT, 98 );
