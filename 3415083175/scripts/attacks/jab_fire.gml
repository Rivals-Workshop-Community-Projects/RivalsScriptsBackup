set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("jab_fire"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("jab_fire_hurt"));
set_attack_value(AT_NTHROW, AG_NO_PARRY_STUN, 1);

set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 10);

set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_CANCEL_FRAME, 4);


set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NTHROW, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NTHROW, 4, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NTHROW, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_NTHROW, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NTHROW, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NTHROW, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_NTHROW, 6, AG_WINDOW_CANCEL_FRAME, 4);

//copy of laser code
//startup
set_window_value(AT_NTHROW, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NTHROW, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NTHROW, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NTHROW, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 7, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));
set_window_value(AT_NTHROW, 7, AG_WINDOW_SFX_FRAME, 10);

//initial
set_window_value(AT_NTHROW, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 8, AG_WINDOW_ANIM_FRAME_START, 13);

//looping
set_window_value(AT_NTHROW, 9, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NTHROW, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 9, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_NTHROW, 9, AG_WINDOW_TYPE, 9);

//endlag
set_window_value(AT_NTHROW, 10, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NTHROW, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 10, AG_WINDOW_ANIM_FRAME_START, 16);

set_num_hitboxes(AT_NTHROW, 4);

set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NTHROW, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_flareo_rod"));
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, HFX_ZET_FIRE);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NTHROW, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NTHROW, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NTHROW, 2, HG_WIDTH, 50);
set_hitbox_value(AT_NTHROW, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_NTHROW, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_NTHROW, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NTHROW, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NTHROW, 2, HG_HIT_SFX, asset_get("sfx_flareo_rod"));
set_hitbox_value(AT_NTHROW, 2, HG_VISUAL_EFFECT, HFX_ZET_FIRE);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_GROUP, 2);

//laser multihit
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 3, HG_WINDOW, 0);
set_hitbox_value(AT_NTHROW, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NTHROW, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NTHROW, 3, HG_WIDTH, 20);
set_hitbox_value(AT_NTHROW, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_NTHROW, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_NTHROW, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NTHROW, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NTHROW, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NTHROW, 3, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_NTHROW, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NTHROW, 3, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_NTHROW, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NTHROW, 3, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(AT_NTHROW, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NTHROW, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NTHROW, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NTHROW, 3, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NTHROW, 3, HG_VISUAL_EFFECT, HFX_ZET_FIRE_DIR);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_PARRY_STUN, 0);
//set_hitbox_value(AT_NTHROW, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NTHROW, 3, HG_HIT_LOCKOUT, 1);

//laser launcher
set_hitbox_value(AT_NTHROW, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 4, HG_WINDOW, 0);
set_hitbox_value(AT_NTHROW, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NTHROW, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NTHROW, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NTHROW, 4, HG_WIDTH, 50);
set_hitbox_value(AT_NTHROW, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_NTHROW, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_NTHROW, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_NTHROW, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NTHROW, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NTHROW, 4, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_NTHROW, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NTHROW, 4, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NTHROW, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NTHROW, 4, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(AT_NTHROW, 4, HG_ANGLE, 45);
set_hitbox_value(AT_NTHROW, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NTHROW, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NTHROW, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NTHROW, 4, HG_VISUAL_EFFECT, HFX_SHO_FLAME_BIG);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_PARRY_STUN, 0);
//set_hitbox_value(AT_NTHROW, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NTHROW, 4, HG_HIT_LOCKOUT, 10);