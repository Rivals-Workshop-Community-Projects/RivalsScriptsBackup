set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_DAIR, AG_PSEUDO_DYNAMIC, 1);
set_attack_value(AT_DAIR, AG_PD_ITEM, sprite_get("solid"));
set_attack_value(AT_DAIR, AG_PD_LOC_X, -10);
set_attack_value(AT_DAIR, AG_PD_LOC_Y, -92);
set_attack_value(AT_DAIR, AG_PD_ROT, 0);
set_attack_value(AT_DAIR, AG_PD_ALWAYS_FRONT, 1);

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 1, AG_BODY_CELL, 43);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_BODY_CELL, 43);
set_window_value(AT_DAIR, 2, AG_DOWN, 4);
set_window_value(AT_DAIR, 2, AG_RIGHT, 4);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DAIR, 3, AG_BODY_CELL, 43);
set_window_value(AT_DAIR, 3, AG_DOWN, 78);
set_window_value(AT_DAIR, 3, AG_RIGHT, 24);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 4, AG_BODY_CELL, 44);
set_window_value(AT_DAIR, 4, AG_DOWN, 20);
set_window_value(AT_DAIR, 4, AG_LEFT, 2);

set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 5, AG_BODY_CELL, 44);
set_window_value(AT_DAIR, 5, AG_DOWN, 4);
set_window_value(AT_DAIR, 5, AG_LEFT, 2);

set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 6, AG_BODY_CELL, 44);

set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 7, AG_BODY_CELL, 44);
set_window_value(AT_DAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DAIR, 3); 

//main hit
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 84);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//sweet spot spike
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 14);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 5);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 4);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, -90);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//weak late hit
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 14);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 10);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 46);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 46);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));









