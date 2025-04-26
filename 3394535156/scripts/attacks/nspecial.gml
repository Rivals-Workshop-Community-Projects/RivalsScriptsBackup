set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_NAME, "NSpecial: Bomb Throw");
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Can be thrown in 3 different ways by holding a direction before throwing:
- No Direction: Bounce Casing - Thrown at an arc when grounded, and thrown at a 45 degree angle downwards in the air.
- Holding Up: Lob Casing - Thrown upwards then comes crashing back down.
- Holding Down: Float Casing - Goes down initially, then rises upwards to the sky.
You can also hold the opposite direction you're facing to throw a bomb in the other direction.
Hold the Special button after throwing a Bomb to start charging a Bomb Burst.");

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_NSPECIAL, 8);

//PROJECTILE
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Bomb Projectile");
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_MISC_ADD, "Can be thrown in three directions.");
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 27);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 27);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 1);
//set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bomb_bounce"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, bomb_destroy_fx);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.7);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0.1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, bomb_bounce_fx);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 3); // allows for crouch cancelling
set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 12); // allows for crouch cancelling
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_PARTICLE_NUM, 1);

//BLACK EXPLOSION
set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_NAME, "BLACK - Explosion");
set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_MISC_ADD, "Explosion for a black powder bomb.");
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH, 3); // allows for crouch cancelling
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);

//SPARKLER
set_hitbox_value(AT_NSPECIAL, 3, HG_MUNO_HITBOX_NAME, "SPARKLER - AOE");
set_hitbox_value(AT_NSPECIAL, 3, HG_MUNO_HITBOX_MISC_ADD, "Constant hitbox surrounding a sparkler powder bomb.");
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, empty_vfx);
set_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT, 9);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);


var clusterExposionHBoxSize = 135;
// CLUSTER LINKER
set_hitbox_value(AT_NSPECIAL, 4, HG_MUNO_HITBOX_NAME, "CLUSTER - Explosion Linker");
set_hitbox_value(AT_NSPECIAL, 4, HG_MUNO_HITBOX_MISC_ADD, "Linker hitbox for a cluster powder bomb.");
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, clusterExposionHBoxSize);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, clusterExposionHBoxSize);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_NSPECIAL, 4, HG_SDI_MULTIPLIER, 1.2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, explode_medium_fx);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);

// CLUSTER LAUNCHER
set_hitbox_value(AT_NSPECIAL, 5, HG_MUNO_HITBOX_NAME, "CLUSTER - Explosion Launcher");
set_hitbox_value(AT_NSPECIAL, 5, HG_MUNO_HITBOX_MISC_ADD, "Launcher hitbox for a cluster powder bomb.");
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, clusterExposionHBoxSize);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, clusterExposionHBoxSize);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 5, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, explode_large_fx);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_NSPECIAL, 6, HG_MUNO_HITBOX_NAME, "CASCADE - Ember");
set_hitbox_value(AT_NSPECIAL, 6, HG_MUNO_HITBOX_MISC_ADD, "Ember hitbox that comes off of a cascade powder bomb.");
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 600);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 8);
//set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("cascade_ember"));
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, cascade_tiny_flame_hfx);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GRAVITY, 0.7);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 0);

set_hitbox_value(AT_NSPECIAL, 7, HG_MUNO_HITBOX_NAME, "CASCADE - Ground Flame");
set_hitbox_value(AT_NSPECIAL, 7, HG_MUNO_HITBOX_MISC_ADD, "Hitbox for the grounded flames that result when a cascade powder ember touches the ground");
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 14);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, 1);
//set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_NSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, cascade_flame_hfx);

set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 8, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL, 8, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 8, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 8, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_NSPECIAL, 8, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_LOCKOUT, 5);