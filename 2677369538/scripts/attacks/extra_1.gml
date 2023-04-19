// extra 1

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 300);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("bubble_frog"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, -4);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GRAVITY, gravity_speed*2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_FRICTION, ground_friction);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_AIR_FRICTION, air_friction);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1); //NSpecial touchy hitbox
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 100);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 9000);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, 9000);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_EFFECT, 9);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, nothing);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_obstacle_hit"));
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, 5);