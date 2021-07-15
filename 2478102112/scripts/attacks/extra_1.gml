set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);

set_num_hitboxes(AT_EXTRA_1,0);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2); //candy heal
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_FORCE_FLINCH, 1)
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, .1);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_orca_crunch"));

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 2) //onion
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 2, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_obstacle_hit"));

set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 2) //torch
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 60);
set_hitbox_value(AT_EXTRA_1, 3, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_SFX, asset_get("sfx_burnapplied"));

set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_TYPE, 2) //bomb
set_hitbox_value(AT_EXTRA_1, 4, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 4, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_1, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_1, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 4, HG_DAMAGE, 20);
set_hitbox_value(AT_EXTRA_1, 4, HG_ANGLE, 46);
set_hitbox_value(AT_EXTRA_1, 4, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_EFFECT, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_EXTRA_1, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 4, HG_HIT_SFX, asset_get("sfx_ell_explosion_medium"));

set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_TYPE, 2) //8ball
set_hitbox_value(AT_EXTRA_1, 5, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 5, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_1, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_1, 5, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 5, HG_ANGLE, 60);
set_hitbox_value(AT_EXTRA_1, 5, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 5, HG_EFFECT, 11);
set_hitbox_value(AT_EXTRA_1, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_VISUAL_EFFECT, 149);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 5, HG_HIT_SFX, asset_get("sfx_fish_collect"));

set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_TYPE, 2) //glue
set_hitbox_value(AT_EXTRA_1, 6, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 6, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_1, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_1, 6, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 6, HG_ANGLE, 60);
set_hitbox_value(AT_EXTRA_1, 6, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 6, HG_EFFECT, 5);
set_hitbox_value(AT_EXTRA_1, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 6, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 6, HG_HIT_SFX, asset_get("sfx_ice_shatter_big"));

set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_TYPE, 2) //dart
set_hitbox_value(AT_EXTRA_1, 7, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 7, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_1, 7, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_1, 7, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 7, HG_ANGLE, 60);
set_hitbox_value(AT_EXTRA_1, 7, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 7, HG_EFFECT, 10);
set_hitbox_value(AT_EXTRA_1, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 7, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 7, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_VISUAL_EFFECT, 117);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 7, HG_HIT_SFX, asset_get("sfx_ice_shatter_big"));

set_hitbox_value(AT_EXTRA_1, 8, HG_HITBOX_TYPE, 2) //turron
set_hitbox_value(AT_EXTRA_1, 8, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 8, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_1, 8, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_1, 8, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 8, HG_DAMAGE, -3);
set_hitbox_value(AT_EXTRA_1, 8, HG_ANGLE, 60);
set_hitbox_value(AT_EXTRA_1, 8, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 8, HG_EFFECT, 0);
set_hitbox_value(AT_EXTRA_1, 8, HG_BASE_KNOCKBACK, .1);
set_hitbox_value(AT_EXTRA_1, 8, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 8, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 8, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 8, HG_HIT_SFX, asset_get("sfx_ice_shatter_big"));

set_hitbox_value(AT_EXTRA_1, 9, HG_HITBOX_TYPE, 2) //balloon
set_hitbox_value(AT_EXTRA_1, 9, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 9, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_1, 9, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_1, 9, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 9, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_1, 9, HG_ANGLE, 46);
set_hitbox_value(AT_EXTRA_1, 9, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 9, HG_EFFECT, 0);
set_hitbox_value(AT_EXTRA_1, 9, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 9, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 9, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_1, 9, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_EXTRA_1, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 9, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 9, HG_VISUAL_EFFECT, 195);
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 9, HG_HIT_SFX, asset_get("sfx_orca_absorb"));

set_hitbox_value(AT_EXTRA_1, 10, HG_HITBOX_TYPE, 2) //heart
set_hitbox_value(AT_EXTRA_1, 10, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 10, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_1, 10, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_1, 10, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 10, HG_DAMAGE, -20);
set_hitbox_value(AT_EXTRA_1, 10, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 10, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 10, HG_EFFECT, 0);
set_hitbox_value(AT_EXTRA_1, 10, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 10, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 10, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 10, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 10, HG_VISUAL_EFFECT, 159);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 10, HG_HIT_SFX, asset_get("sfx_coin_capture"));

set_hitbox_value(AT_EXTRA_1, 11, HG_HITBOX_TYPE, 1) //GUN
set_hitbox_value(AT_EXTRA_1, 11, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 11, HG_WIDTH, 1080);
set_hitbox_value(AT_EXTRA_1, 11, HG_HEIGHT, 8);
set_hitbox_value(AT_EXTRA_1, 11, HG_HITBOX_X, 540);
set_hitbox_value(AT_EXTRA_1, 11, HG_HITBOX_Y, -46);
set_hitbox_value(AT_EXTRA_1, 11, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 11, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 11, HG_ANGLE, 40);
set_hitbox_value(AT_EXTRA_1, 11, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 11, HG_EFFECT, 0);
set_hitbox_value(AT_EXTRA_1, 11, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 11, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_EXTRA_1, 11, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 11, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_EXTRA_1, 11, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 11, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 11, HG_HIT_SFX, asset_get("sfx_dust_knuckle"));

set_hitbox_value(AT_EXTRA_1, 12, HG_HITBOX_TYPE, 2) //NUKE
set_hitbox_value(AT_EXTRA_1, 12, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 12, HG_WIDTH, 1920);
set_hitbox_value(AT_EXTRA_1, 12, HG_HEIGHT, 1080);
set_hitbox_value(AT_EXTRA_1, 12, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 12, HG_DAMAGE, 50);
set_hitbox_value(AT_EXTRA_1, 12, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 12, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 12, HG_EFFECT, 0);
set_hitbox_value(AT_EXTRA_1, 12, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 12, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_EXTRA_1, 12, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_1, 12, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 12, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 12, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 12, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 12, HG_HIT_SFX, asset_get("sfx_ell_uspecial_explode"));

set_hitbox_value(AT_EXTRA_1, 13, HG_HITBOX_TYPE, 2) //egg
set_hitbox_value(AT_EXTRA_1, 13, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 13, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_1, 13, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_1, 13, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 13, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_1, 13, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 13, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 13, HG_EFFECT, 0);
set_hitbox_value(AT_EXTRA_1, 13, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 13, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_1, 13, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 13, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 13, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 13, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 13, HG_VISUAL_EFFECT, 26);
set_hitbox_value(AT_EXTRA_1, 13, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 13, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 13, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 13, HG_HIT_SFX, asset_get("sfx_ice_shatter"));

set_hitbox_value(AT_EXTRA_1, 14, HG_HITBOX_TYPE, 2) //dumbell
set_hitbox_value(AT_EXTRA_1, 14, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 14, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_1, 14, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_1, 14, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 14, HG_DAMAGE, 15);
set_hitbox_value(AT_EXTRA_1, 14, HG_ANGLE, 240);
set_hitbox_value(AT_EXTRA_1, 14, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 14, HG_EFFECT, 0);
set_hitbox_value(AT_EXTRA_1, 14, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 14, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_1, 14, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 14, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 14, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 14, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 14, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));

set_hitbox_value(AT_EXTRA_1, 15, HG_HITBOX_TYPE, 2) //NOFUN
set_hitbox_value(AT_EXTRA_1, 15, HG_LIFETIME, 1000);
set_hitbox_value(AT_EXTRA_1, 15, HG_WIDTH, 600);
set_hitbox_value(AT_EXTRA_1, 15, HG_HEIGHT, 600);
set_hitbox_value(AT_EXTRA_1, 15, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 15, HG_DAMAGE, 0);
set_hitbox_value(AT_EXTRA_1, 15, HG_ANGLE, 240);
set_hitbox_value(AT_EXTRA_1, 15, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 15, HG_EFFECT, 0);
set_hitbox_value(AT_EXTRA_1, 15, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 15, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 15, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 15, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 15, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_EXTRA_1, 15, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 15, HG_HIT_SFX, asset_get("sfx_ell_explosion_medium"));

set_hitbox_value(AT_EXTRA_1, 16, HG_HITBOX_TYPE, 1) //BGUN
set_hitbox_value(AT_EXTRA_1, 16, HG_WINDOW, 1)
set_hitbox_value(AT_EXTRA_1, 16, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 16, HG_WIDTH, 1080);
set_hitbox_value(AT_EXTRA_1, 16, HG_HEIGHT, 8);
set_hitbox_value(AT_EXTRA_1, 16, HG_HITBOX_X, -540);
set_hitbox_value(AT_EXTRA_1, 16, HG_HITBOX_Y, -46);
set_hitbox_value(AT_EXTRA_1, 16, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 16, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 16, HG_ANGLE, 130);
set_hitbox_value(AT_EXTRA_1, 16, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 16, HG_EFFECT, 0);
set_hitbox_value(AT_EXTRA_1, 16, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 16, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_EXTRA_1, 16, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 16, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_EXTRA_1, 16, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 16, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 16, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 16, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 16, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 16, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 16, HG_HIT_SFX, asset_get("sfx_dust_knuckle"));

set_hitbox_value(AT_EXTRA_1, 17, HG_HITBOX_TYPE, 2) //Masti
set_hitbox_value(AT_EXTRA_1, 17, HG_LIFETIME, 18);
set_hitbox_value(AT_EXTRA_1, 17, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_1, 17, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_1, 17, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_1, 17, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 17, HG_ANGLE, 40);
set_hitbox_value(AT_EXTRA_1, 17, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 17, HG_EFFECT, 0);
set_hitbox_value(AT_EXTRA_1, 17, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 17, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_EXTRA_1, 17, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 17, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 17, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 17, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_SPRITE, sprite_get("candy_eaten"));
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 17, HG_HIT_SFX, asset_get("sfx_crunch"));