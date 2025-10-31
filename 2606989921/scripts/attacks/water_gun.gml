set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//prestartup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

//charge
//set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9); //BROKEN BY OMNICHARGE MECHANIC: cannot coexist with the hidden strong charge window... urgh
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1); //manual. see animation.gml

//startup
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

//active
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_watergun_fire"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_GOTO, 6);

//ghost arrow glitch window
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_GOTO, 6);

//endlag
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_FSPECIAL, 2);

//Water Gun
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 500);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 32);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("watergun_spr"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, asset_get("watergun_spr"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0.1);

//Dry melee shot
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, -0.6);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1);

//===================================================================================
//Gust (Rune)
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, noone);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 500);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .0);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("bird_proj_spr"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, asset_get("bird_proj_spr"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 15);

//===================================================================================
//Bubblebeam
set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//prestartup
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

//startup
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//active (spawns 2 bubbles per frame)
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_bubblespray"));

//endlag
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_FSPECIAL_2, 1);

//Bubblebeam
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 60);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.02);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_bubblepop"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("bubble_sprites"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 6.5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_VSPEED, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_GRAVITY, -0.05);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_AIR_FRICTION, 0.125);

//===================================================================================
//Ember (Rune)
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, noone);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, HFX_ZET_FIRE);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("zet_proj_large_spr"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_MASK, asset_get("zet_proj_large_spr"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, HFX_ZET_FIRE);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 9);

//===================================================================================
//Hydro Pump
set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//prestartup
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);

//startup
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//active
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED, -3);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_SFX, asset_get("sfx_orcane_dsmash"));

//endlag
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_FSPECIAL_AIR, 2);

//Hydro Pump
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("orca_fsmash_puddle"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_MASK, sprite_get("orca_fsmash_puddle_hurt"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 30); //active for 2/3 only
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_ANIM_SPEED, 6.0 / get_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_AIR_FRICTION, 0.3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_UNBASHABLE, 1);

//RUNE: Hydro Cannon
//Keep stats mostly in sync with Hydropump
//needs rotation; see hitbox_init
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, asset_get("water_pipe_fire_spr"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_MASK, asset_get("water_pipe_fire_mask"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 40); //active for 1/2 only
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_ANIM_SPEED, 12.0 / get_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_AIR_FRICTION, 0.3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PROJECTILE_UNBASHABLE, 1);

//=================================================================================
// Fissure
set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//prestartup
set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);

//startup
set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//active
set_window_value(AT_FTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FTHROW, 3, AG_WINDOW_HSPEED, -3);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_pillar"));

//endlag
set_window_value(AT_FTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_FTHROW, 1);

//Fissure, lol
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_SPRITE, asset_get("rock_pillar_spr"));
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_MASK, asset_get("rock_pillar_spr"));
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 900);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, 200);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FTHROW, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTHROW, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_VSPEED, -22);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_UNBASHABLE, 1);