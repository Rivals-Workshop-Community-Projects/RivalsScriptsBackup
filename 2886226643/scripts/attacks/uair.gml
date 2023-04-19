set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

//endlag
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 4);

//active
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//endlag
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 10);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 100);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -4);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -4);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, -3);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -75);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 120);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 45);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -57);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 45);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 75);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_Y, -57);
set_hitbox_value(AT_UAIR, 7, HG_WIDTH, 45);
set_hitbox_value(AT_UAIR, 7, HG_HEIGHT, 75);
set_hitbox_value(AT_UAIR, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 7, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 7, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 7, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 7, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_UAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 8, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_Y, -57);
set_hitbox_value(AT_UAIR, 8, HG_WIDTH, 45);
set_hitbox_value(AT_UAIR, 8, HG_HEIGHT, 75);
set_hitbox_value(AT_UAIR, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 8, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 8, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 8, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 8, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_UAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 9, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 9, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_Y, -57);
set_hitbox_value(AT_UAIR, 9, HG_WIDTH, 45);
set_hitbox_value(AT_UAIR, 9, HG_HEIGHT, 75);
set_hitbox_value(AT_UAIR, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 9, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 9, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 9, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 9, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_UAIR, 9, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_UAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 10, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 10, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UAIR, 10, HG_HITBOX_X, -1);
set_hitbox_value(AT_UAIR, 10, HG_HITBOX_Y, -52);
set_hitbox_value(AT_UAIR, 10, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 10, HG_HEIGHT, 82);
set_hitbox_value(AT_UAIR, 10, HG_PRIORITY, 5);
set_hitbox_value(AT_UAIR, 10, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 10, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 10, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 10, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_UAIR, 10, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 10, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 10, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_UAIR, 10, HG_HITBOX_GROUP, 5);