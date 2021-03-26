set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);


set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1); // startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_energyhit_weak"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1); // throw
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1); // endlag
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_FSPECIAL, 0);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ice_shieldup"));
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);