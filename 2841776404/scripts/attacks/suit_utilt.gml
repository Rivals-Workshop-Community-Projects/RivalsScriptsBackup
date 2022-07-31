//Suit UTilt
set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("suit_utilt"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("suit_utilt_hurt"));

set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UTHROW, 5);
//send in hitbox
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 50);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_EFFECT, 19);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_UTHROW, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 1, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_Y, -136);
set_hitbox_value(AT_UTHROW, 2, HG_WIDTH, 120);
set_hitbox_value(AT_UTHROW, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_UTHROW, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UTHROW, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTHROW, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_UTHROW, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UTHROW, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTHROW, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_UTHROW, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_UTHROW, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 2, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTHROW, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_UTHROW, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_Y, -124);

set_hitbox_value(AT_UTHROW, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTHROW, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTHROW, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 4, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_UTHROW, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_UTHROW, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 4, HG_HITBOX_Y, -100);

set_hitbox_value(AT_UTHROW, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTHROW, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 5, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_UTHROW, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_UTHROW, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 5, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTHROW, 5, HG_WIDTH, 120);
set_hitbox_value(AT_UTHROW, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_UTHROW, 5, HG_SHAPE, 2);
set_hitbox_value(AT_UTHROW, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_UTHROW, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTHROW, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTHROW, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTHROW, 5, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_UTHROW, 5, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_UTHROW, 5, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 5, HG_SDI_MULTIPLIER, 1);