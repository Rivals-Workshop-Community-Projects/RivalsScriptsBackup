//not actually an attack just a spot for decorative hitboxes

//tipping over and dying
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 25);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 1);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 1);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 1);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 0);
set_hitbox_value(AT_JAB, 1, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_JAB, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_JAB, 1, HG_EXTRA_CAMERA_SHAKE, -1); //none
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, hfx_error_x);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_DESTROY_EFFECT, hfx_error_b);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 2); //none
set_hitbox_value(AT_JAB, 1, HG_THROWS_ROCK, 2); //ignore
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_SPRITE, msg_substitute);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_ANIM_SPEED, (5.0 / get_hitbox_value(AT_JAB, 1, HG_LIFETIME)));
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_GRAVITY, gravity_speed);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_GROUND_FRICTION, 0.2);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_AIR_FRICTION, 0.03);

//blasting off (again!)
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 30); //variable
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 1);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 1);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 1);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 0);
set_hitbox_value(AT_JAB, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_JAB, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_JAB, 2, HG_EXTRA_CAMERA_SHAKE, -1); //none
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, hfx_error_x);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_DESTROY_EFFECT, hfx_error_b);
set_hitbox_value(AT_JAB, 2, HG_FORCE_FLINCH, 2); //none
set_hitbox_value(AT_JAB, 2, HG_THROWS_ROCK, 2); //ignore
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_SPRITE, sprite_get("substitute_hit"));
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_ANIM_SPEED, (5.0 / get_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME)));
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 2);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_GRAVITY, gravity_speed);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_GROUND_FRICTION, 0.2);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_AIR_FRICTION, 0.03);