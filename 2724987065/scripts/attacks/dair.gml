set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 7); // 4
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9); // 9
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("lunge2"));
//set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, -4);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -3);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 7);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 2);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -9);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 46);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 7); // 2
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 320);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_CAMERA_SHAKE, 9);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -9);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 46);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 5); // 2
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 75);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);

/* old dair...
set_num_hitboxes(AT_DAIR, 7);

//sweet1 (early)
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 61);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 2);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 32);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 7); // 18
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6); // 10
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .6); // 1.0
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);

//sweet2 (down)
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 14);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 22);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 8); // 18
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 7); // 10
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .7); // 1.0
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);

//sweet3 (side)
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -53);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 25);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 86);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 7); // 18
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 9); // 10
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .8); // 1.0
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 1);

//sour1 (early)
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 25);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 36);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 43);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 8);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 4); // 18
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 5); // 10
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .5); // 1.0
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 1);

//sour2 (down)
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 12);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -19);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 63);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 23);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 9);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 4); // 18
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 5); // 10
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, .5); // 1.0
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 1);

//sour3 (side)
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, -15);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 26);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 4); // 18
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 5); // 10
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, .5); // 1.0
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 1);

//sweet4 (side again)
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, -33);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, -1);
set_hitbox_value(AT_DAIR, 7, HG_WIDTH, 36);
set_hitbox_value(AT_DAIR, 7, HG_HEIGHT, 33);
set_hitbox_value(AT_DAIR, 7, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 7, HG_PRIORITY, 6);
set_hitbox_value(AT_DAIR, 7, HG_DAMAGE, 7); // 18
set_hitbox_value(AT_DAIR, 7, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 7, HG_BASE_KNOCKBACK, 9); // 10
set_hitbox_value(AT_DAIR, 7, HG_KNOCKBACK_SCALING, .8); // 1.0
set_hitbox_value(AT_DAIR, 7, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DAIR, 7, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 1);
*/