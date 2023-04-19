set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("_uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 8);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 90);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -58);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .20);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -168);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 110);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -128);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 110);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .20);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_UAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_X, 60);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_Y, -128);
set_hitbox_value(AT_UAIR, 7, HG_WIDTH, 100);
set_hitbox_value(AT_UAIR, 7, HG_HEIGHT, 100);
set_hitbox_value(AT_UAIR, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 7, HG_ANGLE, 110);
set_hitbox_value(AT_UAIR, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 7, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_UAIR, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 7, HG_HITPAUSE_SCALING, .20);
set_hitbox_value(AT_UAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, -68);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -158);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 150);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 5, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, -44);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -118);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 150);
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, .20);
set_hitbox_value(AT_UAIR, 6, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_UAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 8, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_X, -29);
set_hitbox_value(AT_UAIR, 8, HG_HITBOX_Y, -148);
set_hitbox_value(AT_UAIR, 8, HG_WIDTH, 80);
set_hitbox_value(AT_UAIR, 8, HG_HEIGHT, 100);
set_hitbox_value(AT_UAIR, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 8, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 8, HG_ANGLE, 150);
set_hitbox_value(AT_UAIR, 8, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 8, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_UAIR, 8, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 8, HG_HITPAUSE_SCALING, .20);
set_hitbox_value(AT_UAIR, 8, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_UAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_medium2"));