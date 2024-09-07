set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial_act"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial_act"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_act_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 11);
//set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("whistle"));

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_DSPECIAL_2, 0);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 999);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 45);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("mb_proj_lv3"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_VSPEED, -12);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DRIFT_MULTIPLIER, 0);

set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 25);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 140);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 140);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("spawnmask"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DRIFT_MULTIPLIER, 1);

//LVL 1 Proj
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 999);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_SPRITE, sprite_get("mb_proj_lv1"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DRIFT_MULTIPLIER, 1);

//LVL 2 Proj
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW, 10);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME, 35);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_SPRITE, sprite_get("mb_proj_lv2"));
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_ANIM_SPEED, .2)
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_VSPEED, -12);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSPECIAL_2, 4, HG_DRIFT_MULTIPLIER, 1);

set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW, 10);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE, 85);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_SPRITE, sprite_get("spawnmask"));
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL_2, 5, HG_DRIFT_MULTIPLIER, 0);

set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WINDOW, 10);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_ANGLE, 85);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_SPRITE, sprite_get("spawnmask"));
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSPECIAL_2, 6, HG_DRIFT_MULTIPLIER, 0);

set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_WINDOW, 10);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_ANGLE, 85);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_SPRITE, sprite_get("spawnmask"));
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL_2, 7, HG_DRIFT_MULTIPLIER, 0);

set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_LIFETIME, 25);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_WIDTH, 100);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HEIGHT, 100);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_ANGLE, 115);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_SPRITE, sprite_get("spawnmask"));
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_2, 8, HG_DRIFT_MULTIPLIER, 1);

