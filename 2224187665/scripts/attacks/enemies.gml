//The bodies of the enemies

//Green Koopa Shell
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 16);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, 50);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_DTILT, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HIT_LOCKOUT, 30);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("shell"));

set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_MASK, sprite_get("gshell"));
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_VSPEED, 0);

//Red Koopa Shell
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 16);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 16);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, 50);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 2, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 2, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, sound_get("shell"));

set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_MASK, sprite_get("rshell"));
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_VSPEED, 0);

//Bob-omb Explosion
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, 50);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 25);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 40);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DTILT, 3, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 0);

set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_VSPEED, 0);

//Bomb (Astrosmash)
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 4, HG_WIDTH, 16);
set_hitbox_value(AT_DTILT, 4, HG_HEIGHT, 16);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 50);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, 50);
set_hitbox_value(AT_DTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DTILT, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 40);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTILT, 4, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DTILT, 4, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, sound_get("astrosmashbreak"));

set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_MASK, sprite_get("bombbig"));
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_VSPEED, 0);

//Seal (Thin Ice)
set_hitbox_value(AT_DTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 5, HG_WIDTH, 16);
set_hitbox_value(AT_DTILT, 5, HG_HEIGHT, 16);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_X, 50);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_Y, 50);
set_hitbox_value(AT_DTILT, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 5, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 5, HG_ANGLE, 130);
//set_hitbox_value(AT_DTILT, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DTILT, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTILT, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DTILT, 5, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_DTILT, 5, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DTILT, 5, HG_HIT_SFX, sound_get("thinicemove"));

set_hitbox_value(AT_DTILT, 5, HG_PROJECTILE_MASK, sprite_get("sealt"));
set_hitbox_value(AT_DTILT, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DTILT, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DTILT, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DTILT, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DTILT, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DTILT, 5, HG_PROJECTILE_VSPEED, 0);



set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DTILT, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);

