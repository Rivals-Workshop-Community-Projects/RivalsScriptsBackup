set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

//STARTUP
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);

//SPEEEN
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 4);

//FINISHER
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));


//ENDLAG
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);




set_num_hitboxes(AT_DSPECIAL, 5);

//Flipper 10  - Hitbox 1
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 24);				//_UPDATED
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 24);				//_UPDATED
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_SDI_MULTIPLIER, .6);
set_hitbox_value(AT_DSPECIAL, 1, HG_DRIFT_MULTIPLIER, .6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .8);

//Flipper 9  - Hitbox 1
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 68);				//_UPDATED
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 68);				//_UPDATED
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_SDI_MULTIPLIER, .6);
set_hitbox_value(AT_DSPECIAL, 2, HG_DRIFT_MULTIPLIER, .6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, .8);
			
//Flipper 10  - Hitbox 2
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, -2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 24);				//_UPDATED
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 24);				//_UPDATED
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_SDI_MULTIPLIER, .6);
set_hitbox_value(AT_DSPECIAL, 3, HG_DRIFT_MULTIPLIER, .6);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITSTUN_MULTIPLIER, .8);
		
//Flipper 9  - Hitbox 2
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, -2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 68);				//_UPDATED
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 68);				//_UPDATED
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_SDI_MULTIPLIER, .6);
set_hitbox_value(AT_DSPECIAL, 4, HG_DRIFT_MULTIPLIER, .6);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITSTUN_MULTIPLIER, .8);

//Finisher Hitbox
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 76);				//_UPDATED
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 72);				//_UPDATED
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, sound_get("melee_wack"));
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 254);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_LOCKOUT, 8);
set_hitbox_value(AT_DSPECIAL, 5, HG_DRIFT_MULTIPLIER, 1.2);

