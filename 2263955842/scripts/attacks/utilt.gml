set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);




set_num_hitboxes(AT_UTILT, 6);



set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -27);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 48);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 55);// 80
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_DRIFT_MULTIPLIER, .001)
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 1);



set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -100);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 56);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 25);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 2, HG_TECHABLE, 1);



set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -104);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 56);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 25);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 3, HG_TECHABLE, 1);



set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -104);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 56);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 56);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 25);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 4, HG_TECHABLE, 1);


set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 15);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -105);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 56);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 56);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 25);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 5, HG_TECHABLE, 1);




set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -100);
set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 58);
set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 58);
set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 6, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP, 6);


