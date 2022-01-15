set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_num_hitboxes(AT_UTILT, 5);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 58);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 110);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -76);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 90);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_UTILT, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 88);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_UTILT, 3, HG_TECHABLE, 1);

set_hitbox_value(AT_UTILT, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -78);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 94);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 4, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UTILT, 4, HG_TECHABLE, 1);

set_hitbox_value(AT_UTILT, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 26);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -74);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 5, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_UTILT, 5, HG_TECHABLE, 1);