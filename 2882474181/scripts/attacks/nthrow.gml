set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("pogo_deploy"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("pogo_hurt"));

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 7);

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_SFX, sound_get("throw"));

set_num_hitboxes(AT_NTHROW, 3);

set_hitbox_value(AT_NTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 150);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 36);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, sound_get("litwick_dies"));
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NTHROW, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("litwick_fall"));
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, litboom);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_VSPEED, -12);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_GRAVITY, 1.3);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_GROUND_FRICTION, 0.6);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_NTHROW, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NTHROW, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NTHROW, 2, HG_WIDTH, 36);
set_hitbox_value(AT_NTHROW, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_NTHROW, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NTHROW, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NTHROW, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NTHROW, 2, HG_HIT_SFX, sound_get("litwick_dies"));
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NTHROW, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_SPRITE, sprite_get("litwick_getup"));
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NTHROW, 2, HG_VISUAL_EFFECT, litboom);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_GRAVITY, 1.3);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_GROUND_FRICTION, 0.6);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_NTHROW, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NTHROW, 3, HG_LIFETIME, 173);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NTHROW, 3, HG_WIDTH, 36);
set_hitbox_value(AT_NTHROW, 3, HG_HEIGHT, 46);
set_hitbox_value(AT_NTHROW, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NTHROW, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_NTHROW, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NTHROW, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NTHROW, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NTHROW, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NTHROW, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NTHROW, 3, HG_HIT_SFX, sound_get("litwick_dies"));
set_hitbox_value(AT_NTHROW, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NTHROW, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_SPRITE, sprite_get("litwick_walk"));
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NTHROW, 3, HG_VISUAL_EFFECT, litboom);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_GRAVITY, 1.3);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_NTHROW, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NTHROW, 4, HG_LIFETIME, 14);
set_hitbox_value(AT_NTHROW, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NTHROW, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NTHROW, 4, HG_WIDTH, 36);
set_hitbox_value(AT_NTHROW, 4, HG_HEIGHT, 46);
set_hitbox_value(AT_NTHROW, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_SPRITE, sprite_get("litwick_explode"));
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_UNBASHABLE, 1);