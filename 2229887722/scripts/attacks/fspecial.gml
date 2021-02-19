set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

//Windows
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//sfx_ori_sein_strong_start

//Charging window
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 90);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
//set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 30);
//set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.025);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.45);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ori_sein_strong_start"));

//Transition to lunge window
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 20); // 30 if fully charged, 20 for normal
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_ori_grenade_launch"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

//Looping attack window
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 20); //Modified from attack_update. Ranges from 10-20, based on charge rate
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_ori_dsmash_skitter_alone"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

//Finisher attack window
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 0); //Modified from attack_update. Ranges from 15-60, based on charge rate
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

//Recovery window
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 7); //Modified both by hit_player and attack_update. Becomes 1 if an enemy is hit. (This doesn't work due to number of windows bug)
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CANCEL_FRAME, 1);

//Pre Active Critical Finisher Window
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 10);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 0); //Modified from attack_update. Ranges from 15-60, based on charge rate
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, 1); //Sound doesn't play for some reason
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, asset_get("sfx_charge_blade_swing"));
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

//Critical Finisher Active Window
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 12);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 0); //Modified from attack_update. Ranges from 15-60, based on charge rate
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, 1); //Sound doesn't play for some reason
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, asset_get("sfx_charge_blade_swing"));
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

//Critical Finisher Recovery
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 7); //Modified both by hit_player and attack_update. Becomes 1 if an enemy is hit
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 32);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

//Dummy window to properly force pratfall state and update hurtboxes
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 22);

//Hitboxes
set_num_hitboxes(AT_FSPECIAL, 5);

//Looping attack hitbox (spawned from attack_update)
set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_LOCKOUT, 1); //2 for super, 4 for normal
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0 );
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1); //Becomes 2 if fully charged
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSPECIAL, 1, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 10 );
set_hitbox_value(AT_FSPECIAL, 1, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("amber_magic_hit_weak1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 9 ); //modified from attack_update. Becomes 0 if fully charged or almost fully charged
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, -1 );
//set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Finisher hitbox.
set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 56);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 5); //Modified from attack_update. Ranges from 5-10, based on charge length
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 4); //modified from attack_update. Ranges from 4-8
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.25); //modified from attack_update. Ranges from 0.25-0.75
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 6); //modified from attack_update and hit_player
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 112 );
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_FSPECIAL, 2, HG_GROUNDEDNESS, 0 );


//Critical hit hitbox
set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 8);
//set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 12);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 70); //was 56. Put at 500 for testing
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 74);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 20); 
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 25);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 112 );
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 3, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
//modified values from attack_update
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 25); 

//Lunge hitbox. Spawned at the initial lunge frame of the attack
set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 3);
//set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 75);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, -6);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 0 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_TECHABLE, 1);
//set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 5); //Modified from attack_update
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSPECIAL, 4, HG_SDI_MULTIPLIER, 0.1);
//set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 9 );
set_hitbox_value(AT_FSPECIAL, 4, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 305 );
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));

//Extra looping hitbox attack spawned on top of enemy in case the main hitbox doesn't hit them
/*
set_hitbox_value(AT_FSPECIAL, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 20);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 20);
set_hitbox_value(AT_FSPECIAL, 5, HG_SHAPE, 0 );
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 1); //Becomes 2 if fully charged
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSPECIAL, 5, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSPECIAL, 5, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 302 );
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
*/
