set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("stand_box"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_INVINCIBILITY, 2);


set_num_hitboxes(AT_TAUNT, 1);


set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 70);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_TAUNT, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_ANIM_SPEED, 0.1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 90);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 0.1);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 86);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 2, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_TAUNT, 2, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_PLASMA_SAFE, true);