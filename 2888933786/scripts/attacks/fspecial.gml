set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 12);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("jump"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8); //12 -> 20
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

//shot 1
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("cannonball2"));

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 2); //12 -> 20
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 0);

//shot 1
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX, sound_get("cannonball2"));

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 1); //12 -> 20
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 0);

//shot 1
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_SFX, sound_get("cannonball2"));

set_window_value(AT_FSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 1);

set_num_hitboxes(AT_FSPECIAL, 6);

//shot 1
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 200);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("jabproj"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 25);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("cloud"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 0.4);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 200);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("jabproj"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .30);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 25);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -90);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("cloud"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_HSPEED, 0.4);

set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 11);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 200);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("jabproj"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, .30);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 11);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 25);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -90);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("cloud"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_HSPEED, 0.4);