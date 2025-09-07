set_num_hitboxes(AT_JAB, 1);

//Cloud Puff Trail
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 63);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, -12);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 0);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 0);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_SPRITE, sprite_get("cloud_trail"));
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_ANIM_SPEED, .11);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

//Chomp Fall
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 320);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 320);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 2, HG_THROWS_ROCK, 0);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_PLASMA_SAFE, 1);