set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong_3"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 6);
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial"));

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_SFX, asset_get("sfx_absa_champ_loop"));
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 32);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_VSPEED, -2);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USTRONG_2, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_VSPEED, -1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_USTRONG_2, 15);

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, -55);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -65);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("ustrong_2_proj"));
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("-1"));
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));

set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, 30);
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 160);
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));

set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_Y, 40);
set_hitbox_value(AT_USTRONG_2, 3, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG_2, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG_2, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG_2, 3, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));

set_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 4, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_Y, 40);
set_hitbox_value(AT_USTRONG_2, 4, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG_2, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG_2, 4, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG_2, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG_2, 4, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));

set_hitbox_value(AT_USTRONG_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 5, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG_2, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG_2, 5, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG_2, 5, HG_HITBOX_Y, 20);
set_hitbox_value(AT_USTRONG_2, 5, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG_2, 5, HG_HEIGHT, 150);
set_hitbox_value(AT_USTRONG_2, 5, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG_2, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG_2, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG_2, 5, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));

set_hitbox_value(AT_USTRONG_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 6, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 6, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG_2, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG_2, 6, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG_2, 6, HG_HITBOX_Y, 20);
set_hitbox_value(AT_USTRONG_2, 6, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG_2, 6, HG_HEIGHT, 150);
set_hitbox_value(AT_USTRONG_2, 6, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 6, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG_2, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG_2, 6, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG_2, 6, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));

set_hitbox_value(AT_USTRONG_2, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 7, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 7, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 7, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USTRONG_2, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 7, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG_2, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USTRONG_2, 7, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG_2, 7, HG_HEIGHT, 200);
set_hitbox_value(AT_USTRONG_2, 7, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 7, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG_2, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG_2, 7, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG_2, 7, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));

set_hitbox_value(AT_USTRONG_2, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 8, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 8, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 8, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USTRONG_2, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 8, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG_2, 8, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USTRONG_2, 8, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG_2, 8, HG_HEIGHT, 200);
set_hitbox_value(AT_USTRONG_2, 8, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 8, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG_2, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG_2, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 8, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG_2, 8, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));

set_hitbox_value(AT_USTRONG_2, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 9, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 9, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 9, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USTRONG_2, 9, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 9, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG_2, 9, HG_HITBOX_Y, 4);
set_hitbox_value(AT_USTRONG_2, 9, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG_2, 9, HG_HEIGHT, 200);
set_hitbox_value(AT_USTRONG_2, 9, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 9, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG_2, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG_2, 9, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG_2, 9, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));

set_hitbox_value(AT_USTRONG_2, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 10, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 10, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 10, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_USTRONG_2, 10, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 10, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG_2, 10, HG_HITBOX_Y, 14);
set_hitbox_value(AT_USTRONG_2, 10, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG_2, 10, HG_HEIGHT, 200);
set_hitbox_value(AT_USTRONG_2, 10, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 10, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG_2, 10, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG_2, 10, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG_2, 10, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));

set_hitbox_value(AT_USTRONG_2, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 11, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 11, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 11, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_USTRONG_2, 11, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 11, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG_2, 11, HG_HITBOX_Y, 20);
set_hitbox_value(AT_USTRONG_2, 11, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG_2, 11, HG_HEIGHT, 200);
set_hitbox_value(AT_USTRONG_2, 11, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 11, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 11, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG_2, 11, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 11, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG_2, 11, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG_2, 11, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));

set_hitbox_value(AT_USTRONG_2, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 12, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 12, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 12, HG_WINDOW_CREATION_FRAME, 28);
set_hitbox_value(AT_USTRONG_2, 12, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 12, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG_2, 12, HG_HITBOX_Y, 30);
set_hitbox_value(AT_USTRONG_2, 12, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG_2, 12, HG_HEIGHT, 200);
set_hitbox_value(AT_USTRONG_2, 12, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 12, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 12, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG_2, 12, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 12, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG_2, 12, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG_2, 12, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));

set_hitbox_value(AT_USTRONG_2, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 13, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG_2, 13, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 13, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG_2, 13, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG_2, 13, HG_HITBOX_Y, 40);
set_hitbox_value(AT_USTRONG_2, 13, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG_2, 13, HG_HEIGHT, 200);
set_hitbox_value(AT_USTRONG_2, 13, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 13, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 13, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG_2, 13, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 13, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG_2, 13, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG_2, 13, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));

set_hitbox_value(AT_USTRONG_2, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 14, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG_2, 14, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 14, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG_2, 14, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG_2, 14, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG_2, 14, HG_HITBOX_Y, 46);
set_hitbox_value(AT_USTRONG_2, 14, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG_2, 14, HG_HEIGHT, 200);
set_hitbox_value(AT_USTRONG_2, 14, HG_PRIORITY, 9);
set_hitbox_value(AT_USTRONG_2, 14, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG_2, 14, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG_2, 14, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 14, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_USTRONG_2, 14, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG_2, 14, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG_2, 14, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));