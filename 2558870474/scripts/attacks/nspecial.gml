// Stance Switching
set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

// Start-up (Same Framedata as Ranno)
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

// Charging
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 26);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HITPAUSE_FRAME, 0);

// Casting (Will just create a hitbox via attack_update)
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

// Endlag
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

// Cancel
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 3);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_cancel"));
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX_FRAME, 0);

set_num_hitboxes(AT_NSPECIAL, 8);

// No Charge Snowball
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 19);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 36);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
//set_hitbox_value(AT_NSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("snowball_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 13);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

// Charge 1, Elthunder
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 35);  // 60
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 43);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .65); // 1
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
//set_hitbox_value(AT_NSPECIAL, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("charge1_proj"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 13); //0
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE, 8);

// Charge 2, Arcthunder
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 48);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
//set_hitbox_value(AT_NSPECIAL, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("charge2_proj"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

// Charge 2 (Explosion Hit)
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 109);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 109);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 110);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, vfx_charge2_hit);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 9);
//set_hitbox_value(AT_NSPECIAL, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_NSPECIAL, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTRA_HITPAUSE, 5);

// Charge 2 (Final Hit)
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 109);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 109);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, vfx_charge2_hit);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE_FLIPPER, 0);
//set_hitbox_value(AT_NSPECIAL, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_EXTRA_HITPAUSE, 7);

// Full Charge, Thoron
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 500);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 11);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 64);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 64);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("chargefull_proj"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 12);
//set_hitbox_value(AT_NSPECIAL, 6, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTRA_HITPAUSE, 20);

//Thoron hit 2
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_NSPECIAL, 7, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 0);
//set_hitbox_value(AT_NSPECIAL, 7, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_EXTRA_HITPAUSE, 9);

//Thoron hit 3
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_WIDTH, 48);
set_hitbox_value(AT_NSPECIAL, 8, HG_HEIGHT, 48);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 8, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_NSPECIAL, 8, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE_FLIPPER, 0);
//set_hitbox_value(AT_NSPECIAL, 8, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_EXTRA_HITPAUSE, 9);
