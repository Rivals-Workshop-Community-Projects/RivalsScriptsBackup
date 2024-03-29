set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 10);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_burnapplied"));

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_GOTO, 6);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_GOTO, 8);

set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 10);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_VSPEED, 12);

set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_NSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 13);

// 1 charge

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1); 
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, hfx_eruption_large);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 202);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .9);

// 2 charge strong

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1); 
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, hfx_eruption_large);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, 202);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, .9);

// 2 charge weak

set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1); 
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, hfx_eruption_large);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT, 202);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, .9);

// 3 charge strong

set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1); 
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, hfx_eruption_large);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_EFFECT, 202);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, .9);

// 3 charge med

set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1); 
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, hfx_eruption_large);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_EFFECT, 202);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, .9);

// 3 charge weak

set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, -1); 
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, hfx_eruption_large);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_EFFECT, 202);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, .9);


// Full charge strong

set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 20);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, -1); 
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, hfx_eruption_large);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_EFFECT, 202);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_LOCKOUT, 24);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITSTUN_MULTIPLIER, .9);

// Full charge med

set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 8, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 8, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 20);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 8, HG_KNOCKBACK_SCALING, 1.4);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_MASK, -1); 
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_SFX, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT, hfx_eruption_large);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_EFFECT, 202);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITSTUN_MULTIPLIER, .9);

// Full charge weak

set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 9, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 9, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 18);
set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 9, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_MASK, -1); 
set_hitbox_value(AT_NSPECIAL, 9, HG_HIT_SFX, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_VISUAL_EFFECT, hfx_eruption_large);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_EFFECT, 202);
set_hitbox_value(AT_NSPECIAL, 9, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITSTUN_MULTIPLIER, .9);

// Lingering weak hit

set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 10, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 10, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 10, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 10, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 10, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_MASK, -1); 
set_hitbox_value(AT_NSPECIAL, 10, HG_HIT_SFX, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_VISUAL_EFFECT, small_quick);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_EFFECT, 9);
set_hitbox_value(AT_NSPECIAL, 10, HG_EFFECT, 203);
set_hitbox_value(AT_NSPECIAL, 10, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_NSPECIAL, 10, HG_SDI_MULTIPLIER, 1.5);

set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 11, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 11, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 11, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 11, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 11, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_MASK, -1); 
set_hitbox_value(AT_NSPECIAL, 11, HG_HIT_SFX, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_VISUAL_EFFECT, small_quick);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_EFFECT, 9);
set_hitbox_value(AT_NSPECIAL, 11, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_NSPECIAL, 11, HG_SDI_MULTIPLIER, 1.5);