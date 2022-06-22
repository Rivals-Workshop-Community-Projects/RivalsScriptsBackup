set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 20);      //Startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_holy_tablet"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 6);      //Raising Book
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("snap"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 12);     //Holding Book
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 10);      //Back to idle
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);


set_num_hitboxes(AT_DSPECIAL, 6);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);    //The hitbox activation on the Block1
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2); //The hitbox activation on the Block2
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2); //The hitbox activation on the Block3
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2); //The hitbox activation on the Butterfly
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 161);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 105);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2); //launch hitbox angled (not currently in use)
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 8);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 45);//90
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 11);//8
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, .3);//.8
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL, 5, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE_FLIPPER, 7);//0
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2); //launch hitbox kill
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 8);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 90);//90
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 8);//8
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, .8);//.8
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSPECIAL, 6, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE_FLIPPER, 7);//0
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_EXTENDED_PARRY_STUN, 1);