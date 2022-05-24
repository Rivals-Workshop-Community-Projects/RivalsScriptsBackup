set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dspecial_tap"));
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("dspecial_tap_hurt"));

set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 3);

set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, sound_get("blade_swing_heavy"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);


//melee
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 0);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 1000000);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_DTHROW, 1, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);

//polite
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTHROW, 2, HG_WINDOW, 0);
set_hitbox_value(AT_DTHROW, 2, HG_LIFETIME, 1000000);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DTHROW, 2, HG_WIDTH, 26);
set_hitbox_value(AT_DTHROW, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_DTHROW, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_DTHROW, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DTHROW, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DTHROW, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 2, HG_EFFECT, 9);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTHROW, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTHROW, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DTHROW, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DTHROW, 2, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DTHROW, 2, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DTHROW, 2, HG_PROJECTILE_DESTROY_EFFECT, 0);

//reflection
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTHROW, 3, HG_WINDOW, 0);
set_hitbox_value(AT_DTHROW, 3, HG_LIFETIME, 1000000);
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DTHROW, 3, HG_WIDTH, 90);
set_hitbox_value(AT_DTHROW, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DTHROW, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_DTHROW, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_DTHROW, 3, HG_ANGLE, 0);
set_hitbox_value(AT_DTHROW, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 3, HG_BASE_KNOCKBACK, 00);
set_hitbox_value(AT_DTHROW, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DTHROW, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DTHROW, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTHROW, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DTHROW, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DTHROW, 3, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DTHROW, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);

//throw hitbox
set_hitbox_value(AT_DTHROW, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTHROW, 4, HG_WINDOW, 0);
set_hitbox_value(AT_DTHROW, 4, HG_LIFETIME, 12);
set_hitbox_value(AT_DTHROW, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DTHROW, 4, HG_WIDTH, 30);
set_hitbox_value(AT_DTHROW, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_DTHROW, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DTHROW, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DTHROW, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DTHROW, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DTHROW, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DTHROW, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTHROW, 4, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DTHROW, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTHROW, 4, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DTHROW, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTHROW, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DTHROW, 4, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_DTHROW, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DTHROW, 4, HG_HITSTUN_MULTIPLIER, 0.5);

set_hitbox_value(AT_DTHROW, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTHROW, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTHROW, 4, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DTHROW, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DTHROW, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DTHROW, 4, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DTHROW, 4, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DTHROW, 4, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DTHROW, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DTHROW, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_DTHROW, 4, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_DTHROW, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);