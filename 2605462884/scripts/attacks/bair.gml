set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 8);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_BAIR, AG_PSEUDO_DYNAMIC, 1);
set_attack_value(AT_BAIR, AG_PD_ITEM, sprite_get("epicgun"));
set_attack_value(AT_BAIR, AG_PD_LOC_X, 30);
set_attack_value(AT_BAIR, AG_PD_LOC_Y, -36);
set_attack_value(AT_BAIR, AG_PD_ROT, 50);
set_attack_value(AT_BAIR, AG_PD_ALWAYS_FRONT, 0);

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 1, AG_BODY_CELL, 41);
set_window_value(AT_BAIR, 1, AG_LEFT, 4);
set_window_value(AT_BAIR, 1, AG_DOWN, 4);
set_window_value(AT_BAIR, 1, AG_ROTATE, 6);
set_window_value(AT_BAIR, 1, AG_DIR, -1); //0 will be interpreted as 1

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_BODY_CELL, 41);
set_window_value(AT_BAIR, 2, AG_LEFT, 8);
set_window_value(AT_BAIR, 2, AG_DOWN, 4);
set_window_value(AT_BAIR, 2, AG_ROTATE, 14);
set_window_value(AT_BAIR, 2, AG_DIR, -1); //0 will be interpreted as 1

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_BAIR, 3, AG_BODY_CELL, 41);
set_window_value(AT_BAIR, 3, AG_LEFT, 40);
set_window_value(AT_BAIR, 3, AG_UP, 2);
set_window_value(AT_BAIR, 3, AG_ROTATE, 30);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 4, AG_BODY_CELL, 42);
set_window_value(AT_BAIR, 4, AG_RIGHT, 12);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_SFX, asset_get("sfx_boss_fireball"));
set_window_value(AT_BAIR, 4, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 5, AG_BODY_CELL, 42);
set_window_value(AT_BAIR, 5, AG_RIGHT, 4);

set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 6, AG_BODY_CELL, 42);
set_window_value(AT_BAIR, 6, AG_RIGHT, 2);

set_window_value(AT_BAIR, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 7, AG_BODY_CELL, 42);

set_window_value(AT_BAIR, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 8, AG_BODY_CELL, 42);


set_num_hitboxes(AT_BAIR, 1); 

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -40);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 40);//etalus
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 26);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 26);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 0);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 9);//elliana
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("epicgun_bullet"));
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 136);






