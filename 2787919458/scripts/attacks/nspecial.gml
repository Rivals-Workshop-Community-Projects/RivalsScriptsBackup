set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
//Startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
//Throw
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 7);
//Endlag
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NSPECIAL, 4);

//Dorito
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 999);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 1.25);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("dorito"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, .01);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, .02);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 304);
//Shard 1
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_leafy_hit3"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("shard"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GRAVITY, .4);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, .2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 305);
//Shard 2
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 100);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_leafy_hit3"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("shard"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -12);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GRAVITY, .4);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, .2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 305);
//Shard 3
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -60);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_leafy_hit3"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("shard"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, -12);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GRAVITY, .4);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_AIR_FRICTION, .2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 305);

// set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
// set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 0);
// set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 9999);
// set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 80);
// set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 80);
// set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 0);
// set_hitbox_value(AT_NSPECIAL, 5, HG_EFFECT, 11);
// set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
// set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
// set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
// set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
// set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
// set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
// set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, true);
// set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, true);
// set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, true);
// set_hitbox_value(AT_NSPECIAL, 5, HG_EXTENDED_PARRY_STUN, true);
// set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 151);