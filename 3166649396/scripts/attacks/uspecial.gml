set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);

set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3)

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);

//set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

//shadow
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_grenade_hit"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_EFFECT, 22);
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, HFX_ABY_PROJ_HIT);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);

//lightning
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_USPECIAL, 2, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_jab1"));
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, HFX_ORI_ORANGE_BIG);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_LOCKOUT, 8);

//moon 1
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_ori_seinhit_weak"));
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);

//moon 2
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 100);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL, 4, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);

//earth
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL, 5, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, HFX_ORI_ORANGE_BIG);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);

//fire
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 16);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 6, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 6, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, HFX_ZET_FIRE_DIR);
set_hitbox_value(AT_USPECIAL, 6, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1);

//ice
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 180);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_USPECIAL, 7, HG_SDI_MULTIPLIER, 2.5);
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, HFX_ETA_ICE_SMALL);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_EXTENDED_PARRY_STUN, 1);

//water
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL, 8, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_USPECIAL, 8, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_EFFECT, 24);
set_hitbox_value(AT_USPECIAL, 8, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT, HFX_ORC_WATER_BIG);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_DOES_NOT_REFLECT, 1);