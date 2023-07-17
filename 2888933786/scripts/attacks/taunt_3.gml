set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt3"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 8); //12 -> 20
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("backfire"));

//shot 1
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("cannonball2"));

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("laugh"));

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 1);

set_num_hitboxes(AT_TAUNT, 5);

//shot 1
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 80);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 60);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_ori_dtilt_perform"));
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("fish"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 25);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 40);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 0);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_SPRITE, sprite_get("cloud"));
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_HSPEED, 0.4);

set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_TAUNT, 3, HG_LIFETIME, 100);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_TAUNT, 3, HG_WIDTH, 80);
set_hitbox_value(AT_TAUNT, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_TAUNT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT, 3, HG_ANGLE, 60);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 3, HG_HIT_SFX, asset_get("sfx_ori_dtilt_perform"));
set_hitbox_value(AT_TAUNT, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_SPRITE, sprite_get("fish"));
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 2);

set_hitbox_value(AT_TAUNT, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 4, HG_LIFETIME, 100);
set_hitbox_value(AT_TAUNT, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_TAUNT, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_TAUNT, 4, HG_WIDTH, 80);
set_hitbox_value(AT_TAUNT, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_TAUNT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT, 4, HG_ANGLE, 60);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 4, HG_HIT_SFX, asset_get("sfx_ori_dtilt_perform"));
set_hitbox_value(AT_TAUNT, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_SPRITE, sprite_get("fish"));
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 2);

set_hitbox_value(AT_TAUNT, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 5, HG_WINDOW, 3);
set_hitbox_value(AT_TAUNT, 5, HG_LIFETIME, 100);
set_hitbox_value(AT_TAUNT, 5, HG_HITBOX_X, 10);
set_hitbox_value(AT_TAUNT, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_TAUNT, 5, HG_WIDTH, 80);
set_hitbox_value(AT_TAUNT, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_TAUNT, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT, 5, HG_ANGLE, 60);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 5, HG_HIT_SFX, asset_get("sfx_ori_dtilt_perform"));
set_hitbox_value(AT_TAUNT, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_SPRITE, sprite_get("fish"));
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 2);