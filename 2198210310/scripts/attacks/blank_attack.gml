//old attacks
/*
set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);

//startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_hit_light1"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 5);

//scrape
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("compact"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 15);

//compact
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);

//release
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 0);

//tap endlag
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NSPECIAL, 1);

//command grab hit
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 75);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, 1);

//aerial cube hitbox
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 1000);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("block"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0.06);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 0);

//hit cube explosion
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 140);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 140);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_ell_uspecial_explode"));
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 0);

//command grab launcher
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, 2);
*/




/*
// THIS FILE CONTAINS EXAMPLES FOR ALL ATTACK, WINDOW, AND HITBOX INDEXES

//attack properties
set_attack_value(attack, AG_CATEGORY, 0);
set_attack_value(attack, AG_SPRITE, 0);
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 0);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);

//attack window properties
set_window_value(attack, window_num, AG_WINDOW_TYPE, 0);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 0);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_WHIFFLAG, 0);
set_window_value(attack, window_num, AG_WINDOW_INVINCIBILITY, 0);
set_window_value(attack, window_num, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(attack, window_num, AG_WINDOW_CANCEL_TYPE, 0);
set_window_value(attack, window_num, AG_WINDOW_CANCEL_FRAME, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 0);
set_window_value(attack, window_num, AG_WINDOW_SFX, 0);
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 0);

//attack hitbox properties
set_num_hitboxes(attack, HG_NUM_HITBOXES, 0);

//individual hitbox properties
set_hitbox_value(attack, hitbox_num, HG_PARENT_HITBOX, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 0);
set_hitbox_value(attack, hitbox_num, HG_WINDOW, 0);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, 0);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 0);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 0);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 0);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 0);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_EFFECT, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 0);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, 0);
set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(attack, hitbox_num, HG_GROUNDEDNESS, 0);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(attack, hitbox_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(attack, hitbox_num, HG_HIT_LOCKOUT, 0);
set_hitbox_value(attack, hitbox_num, HG_EXTENDED_PARRY_STUN, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 0);
set_hitbox_value(attack, hitbox_num, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(attack, hitbox_num, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(attack, hitbox_num, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(attack, hitbox_num, HG_TECHABLE, 0);
set_hitbox_value(attack, hitbox_num, HG_FORCE_FLINCH, 0);
set_hitbox_value(attack, hitbox_num, HG_FINAL_BASE_KNOCKBACK , 0);
set_hitbox_value(attack, hitbox_num, HG_THROWS_ROCK, 0);

//projectile properties
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_SPRITE, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_MASK, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, 0);
*/