set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_DSPECIAL, 0);


set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 900);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("blank"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 115);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE,  sprite_get("trashExplode"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 115);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);










/*
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, 20);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 115);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("blank"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, 20);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 100);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_EFFECT, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .9)
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
set_hitbox_value(AT_DSPECIAL, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("blank"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 19);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 88);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 25);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 40);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 35);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 4, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("blake_projectile4"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, sprite_get("blake_projectile4"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 157);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));

set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 80);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, 20);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_EFFECT, 9);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("blank"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
*/


