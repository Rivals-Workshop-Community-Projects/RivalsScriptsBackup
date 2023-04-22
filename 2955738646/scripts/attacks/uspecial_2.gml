//Ground laser scanner follow-up missle
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_ground2"));
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("utilt2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 3);
//set_attack_value(AT_USPECIAL_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_ground2_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1); //Start up
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sound_get("ARC_MENU_SYS_Cursor_Random2"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1); //Scanning
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, sound_get("ARC_MENU_SYS_Cursor_Random2"));
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1); //Missed
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 50);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_ell_fist_fire"));
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_GOTO, 10);

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 1); //Target locked
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_ell_fist_fire"));
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_SFX_FRAME, 19);

set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 1); //Tartgeting Grounded Opponent
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 38);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 24);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_SFX, sound_get("Charge"));
//set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_GOTO, 10);

set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_TYPE, 1); //Targeting Aerial Opponent (rocket lawnchair)
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_LENGTH, 65);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 20);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_SFX, asset_get("sfx_ell_fist_fire"));
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_GOTO, 10);

set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_TYPE, 1); //Endlag
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);

set_num_hitboxes(AT_USPECIAL_2, 7);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1); //Scanner for air
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 159);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -205);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 230);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 210);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 0); 
set_hitbox_value(AT_USPECIAL_2, 1, HG_GROUNDEDNESS, 2);
//set_hitbox_value(AT_USPECIAL_2, 1, HG_EFFECT, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_TECHABLE, 1);
//set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 255);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 25);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -50);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, sound_get("ScouterFound"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1); //Scanner for ground
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 159);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -205);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 230);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 210);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 0); 
set_hitbox_value(AT_USPECIAL_2, 2, HG_GROUNDEDNESS, 1);
//set_hitbox_value(AT_USPECIAL_2, 2, HG_EFFECT, 9);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_TECHABLE, 1);
//set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, 255);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 25);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -50);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, sound_get("ScouterFound"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_LOCKOUT, 2);

/*
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1); //Attacking air 1
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USPECIAL_2, 3, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, 2); 
set_hitbox_value(AT_USPECIAL_2, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_USPECIAL_2, 3, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(AT_USPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_SFX, sound_get("ARC_BTL_GBR_SwordShot_Hit"));

set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 1); //Attacking air 2
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PRIORITY, 9);
set_hitbox_value(AT_USPECIAL_2, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL_2, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE, 361);
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_2, 4, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITSTUN_MULTIPLIER, 0); 
set_hitbox_value(AT_USPECIAL_2, 4, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL_2, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL_2, 4, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(AT_USPECIAL_2, 4, HG_VISUAL_EFFECT_Y_OFFSET, -5);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_ori_ustrong_launch"));
*/

set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_TYPE, 2); //Blinking quick Mecha
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_LIFETIME, 60);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_X, -900);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_Y, -900);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE, 361);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 5, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITPAUSE_SCALING, .1); 
set_hitbox_value(AT_USPECIAL_2, 5, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HIT_SFX, sound_get("ARC_BTL_HTN_Kyusho_Hit"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_SPRITE, sprite_get("utilt2"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_VSPEED, 0);
//set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_DESTROY_EFFECT, 197);

set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 2); //First missile
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 200);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, -20);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL_2, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITPAUSE_SCALING, .1); 
set_hitbox_value(AT_USPECIAL_2, 3, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_SFX, sound_get("ARC_BTL_GNN_GnyFrc_RKN2_Expl"));
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_SPRITE, sprite_get("uspecial2_proj"));
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_ANIM_SPEED, .9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_DESTROY_EFFECT, 197);

set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 2); //Second missile
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 200);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL_2, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 4, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITPAUSE_SCALING, .1); 
set_hitbox_value(AT_USPECIAL_2, 4, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HIT_SFX, sound_get("ARC_BTL_GNN_GnyFrc_RKN2_Expl"));
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_SPRITE, sprite_get("uspecial2_proj"));
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_ANIM_SPEED, .9);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_DESTROY_EFFECT, 197);
/*
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 2); //First missile 2
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 200);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_X, -20);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL_2, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 4, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITPAUSE_SCALING, .1); 
set_hitbox_value(AT_USPECIAL_2, 4, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HIT_SFX, sound_get("ARC_BTL_GNN_GnyFrc_RKN2_Expl"));
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_SPRITE, sprite_get("uspecial2_proj"));
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_ANIM_SPEED, .9);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_VSPEED, -9);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_DESTROY_EFFECT, 197);

set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_TYPE, 2); //Second missile 2
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_USPECIAL_2, 5, HG_LIFETIME, 200);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 5, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITPAUSE_SCALING, .1); 
set_hitbox_value(AT_USPECIAL_2, 5, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HIT_SFX, sound_get("ARC_BTL_GNN_GnyFrc_RKN2_Expl"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_SPRITE, sprite_get("uspecial2_proj"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_ANIM_SPEED, .9);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_DESTROY_EFFECT, 197);

set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_TYPE, 2); //First missile 3
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL_2, 6, HG_LIFETIME, 200);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_X, -20);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL_2, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL_2, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL_2, 6, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL_2, 6, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 6, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITPAUSE_SCALING, .1); 
set_hitbox_value(AT_USPECIAL_2, 6, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HIT_SFX, sound_get("ARC_BTL_GNN_GnyFrc_RKN2_Expl"));
set_hitbox_value(AT_USPECIAL_2, 6, HG_PROJECTILE_SPRITE, sprite_get("uspecial2_proj"));
set_hitbox_value(AT_USPECIAL_2, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_PROJECTILE_ANIM_SPEED, .9);
set_hitbox_value(AT_USPECIAL_2, 6, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_USPECIAL_2, 6, HG_PROJECTILE_VSPEED, -9);
set_hitbox_value(AT_USPECIAL_2, 6, HG_PROJECTILE_DESTROY_EFFECT, 197);

set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_TYPE, 2); //Second missile 3
set_hitbox_value(AT_USPECIAL_2, 7, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL_2, 7, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_USPECIAL_2, 7, HG_LIFETIME, 200);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USPECIAL_2, 7, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL_2, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL_2, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL_2, 7, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL_2, 7, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 7, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITPAUSE_SCALING, .1); 
set_hitbox_value(AT_USPECIAL_2, 7, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HIT_SFX, sound_get("ARC_BTL_GNN_GnyFrc_RKN2_Expl"));
set_hitbox_value(AT_USPECIAL_2, 7, HG_PROJECTILE_SPRITE, sprite_get("uspecial2_proj"));
set_hitbox_value(AT_USPECIAL_2, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_PROJECTILE_ANIM_SPEED, .9);
set_hitbox_value(AT_USPECIAL_2, 7, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_USPECIAL_2, 7, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_USPECIAL_2, 7, HG_PROJECTILE_DESTROY_EFFECT, 197);
