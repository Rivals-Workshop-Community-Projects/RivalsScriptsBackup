set_attack_value(AT_USTRONG, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_USTRONG, AG_PSEUDO_DYNAMIC, 1);
set_attack_value(AT_USTRONG, AG_PD_ITEM, sprite_get("emitter"));
set_attack_value(AT_USTRONG, AG_PD_LOC_X, 39);
set_attack_value(AT_USTRONG, AG_PD_LOC_Y, -48);
set_attack_value(AT_USTRONG, AG_PD_ROT, 65);
set_attack_value(AT_USTRONG, AG_PD_NOT_FORCE_BODY_CELL, 0);
set_attack_value(AT_USTRONG, AG_PD_ALWAYS_FRONT, 0);

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 1, AG_BODY_CELL, 36);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_USTRONG, 1, AG_UP, 0);
set_window_value(AT_USTRONG, 1, AG_DOWN, 0);
set_window_value(AT_USTRONG, 1, AG_LEFT, 0);
set_window_value(AT_USTRONG, 1, AG_RIGHT, 0);
set_window_value(AT_USTRONG, 1, AG_ROTATE, 0);
set_window_value(AT_USTRONG, 1, AG_IN_FRONT, 0);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_BODY_CELL, 36);
set_window_value(AT_USTRONG, 2, AG_UP, 12);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 3, AG_BODY_CELL, 36);
set_window_value(AT_USTRONG, 3, AG_UP, 10);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USTRONG, 4, AG_BODY_CELL, 36);
set_window_value(AT_USTRONG, 4, AG_LEFT, 26);
set_window_value(AT_USTRONG, 4, AG_UP, 30);
set_window_value(AT_USTRONG, 4, AG_ROTATE, -25);
set_window_value(AT_USTRONG, 4, AG_IN_FRONT, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, sound_get("emit"));

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 5, AG_BODY_CELL, 37);
set_window_value(AT_USTRONG, 5, AG_DOWN, 18);
set_window_value(AT_USTRONG, 5, AG_IN_FRONT, 1);

set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 6, AG_BODY_CELL, 37);
set_window_value(AT_USTRONG, 6, AG_DOWN, 6);
set_window_value(AT_USTRONG, 6, AG_IN_FRONT, 1);

set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USTRONG, 7, AG_BODY_CELL, 37);
set_window_value(AT_USTRONG, 7, AG_RIGHT, 14);
set_window_value(AT_USTRONG, 7, AG_DOWN, 30);
set_window_value(AT_USTRONG, 7, AG_ROTATE, 80);
set_window_value(AT_USTRONG, 7, AG_IN_FRONT, 1);

set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 13);//8
set_window_value(AT_USTRONG, 8, AG_BODY_CELL, 20);


set_num_hitboxes(AT_USTRONG, 2); 

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 28);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 13);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("emitter_bullet"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 136);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 62);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));






