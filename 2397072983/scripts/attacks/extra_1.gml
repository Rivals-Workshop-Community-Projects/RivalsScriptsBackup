// Mc. Lazer

set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 6);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("taunt"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("empty"));




set_num_hitboxes(AT_EXTRA_1, 3);

set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, sound_get("gothit2"));

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 16);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("aproj"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 75);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_EXTRA_1, 2, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 70);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, sound_get("gothit"));

set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_EXTRA_1, 3, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 40);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 0.1);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_1, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_UNBASHABLE, 1);