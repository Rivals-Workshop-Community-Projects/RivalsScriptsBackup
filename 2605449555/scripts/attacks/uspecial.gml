set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

// Startup

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ell_eject"));

// Yeet

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_upbcharge"));

// Kaboom

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));

// Endlag

set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);

// Hitboxes

set_num_hitboxes(AT_USPECIAL, 8);

// Recovery Boom

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 21);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("recoveryboom"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("recoveryboom"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);

// Burning Spin Hit (1)

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 110);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.05);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));

// Burning Spin Hit (2)

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 110);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.05);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));

// Burning Spin Hit (3)

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 110);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.05);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));

// Burning Spin Hit (4)

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 110);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.05);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));

// Burning Spin Final

set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 130);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 130);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));

// Burning Spin Suck In

set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 110);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_TECHABLE, 1);

// Teleport Stun Hitbox

set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 25);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_shovel_swing_med1"));
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("cannonball_empty"));
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_PLASMA_SAFE, true);

/*
// Startup

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);

// Charging

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);

// Fire Cannnon Ball

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);

// Become Cannon + Old Cann Destruction

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 9);
//set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 28);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);

// Beomce Cannon Again

set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);

// Hitboxes

set_num_hitboxes(AT_USPECIAL, 2);

// Cannon Ball Hitbox

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_USPECIAL, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("cannonball_empty"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, false);
//set_hitbox_value(AT_USPECIAL, 1, HG_HIT_LOCKOUT, 5);

// Exploding Cannon

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 105);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 105);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 18);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 16);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 9);
//set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("cannonball_empty"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_PARRY_STUN, false);
//set_hitbox_value(AT_USPECIAL, 2, HG_HIT_LOCKOUT, 10);

// Cannon Ball Final Hit

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_USPECIAL, 3, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("cannonball_empty"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_LOCKOUT, 5);