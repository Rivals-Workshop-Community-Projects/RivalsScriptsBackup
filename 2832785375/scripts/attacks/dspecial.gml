set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 1);

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_syl_dspecial_growth"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_DSPECIAL, 0);

//homing proj
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 300);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 100);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, vfx_flower_large);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("seed_proj"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_COLLISION_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, vfx_wood_small);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);

//launcher hitbox
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_crunch"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.6);

set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("seed_proj"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_COLLISION_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 135);

//double vine
