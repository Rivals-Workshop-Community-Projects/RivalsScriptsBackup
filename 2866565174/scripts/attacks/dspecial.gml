set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light2"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_DSPECIAL, 10);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 180);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, 70);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecial_clock1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("dspecial_clock1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_clock1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, sc_destroy);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0.1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 540);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, 70);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_SDI_MULTIPLIER, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_DRIFT_MULTIPLIER, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("dspecial_clock2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("dspecial_clock2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_clock2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, sc_destroy);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 1/3);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 42);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, 70);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_DSPECIAL, 3, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.3);
set_hitbox_value(AT_DSPECIAL, 3, HG_SDI_MULTIPLIER, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_DRIFT_MULTIPLIER, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("dspecial_sound"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("dspecial_sound"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_sound"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, asset_get("empty_spr"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 1/3);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 180);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 42);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, 70);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("dspecial_box1"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, sprite_get("dspecial_box1"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_box1"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, sc_destroy);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_GRAVITY, 0.2);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_AIR_FRICTION, 0.1);

set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 480);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 42);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, 70);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_SDI_MULTIPLIER, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_DRIFT_MULTIPLIER, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("dspecial_box2"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, sprite_get("dspecial_box2"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_box2"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, sc_destroy);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0.1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 180);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 42);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, 70);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("dspecial_music1"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, sprite_get("dspecial_music1"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_music1"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, asset_get("empty_spr"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 180);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, 42);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, 70);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("dspecial_music2"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_MASK, sprite_get("dspecial_music2"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_music2"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, asset_get("empty_spr"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 180);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_X, 42);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_Y, 70);
set_hitbox_value(AT_DSPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 8, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 8, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("dspecial_bomb1"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_MASK, sprite_get("dspecial_bomb1"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_bomb1"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, sc_destroy);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_GRAVITY, 0.2);
//set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_AIR_FRICTION, 0.1);

set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 9, HG_LIFETIME, 540);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_X, 42);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_Y, 70);
set_hitbox_value(AT_DSPECIAL, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 9, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 9, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_SPRITE, sprite_get("dspecial_bomb2"));
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_MASK, sprite_get("dspecial_bomb2"));
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_bomb2"));
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_DESTROY_EFFECT, sc_destroy);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_ANIM_SPEED, 0.4);
//set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 10, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 10, HG_LIFETIME, 15);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_X, 42);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_Y, 70);
set_hitbox_value(AT_DSPECIAL, 10, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 10, HG_DAMAGE, 13);
set_hitbox_value(AT_DSPECIAL, 10, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 10, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 10, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 10, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_SPRITE, sprite_get("dspecial_explosion"));
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_MASK, sprite_get("dspecial_explosion"));
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_explosion"));
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_DESTROY_EFFECT, asset_get("empty_spr"));
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_ANIM_SPEED, 1/3);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);