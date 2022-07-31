//Suit DTilt
set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("suit_dtilt"));
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("suit_dtilt_hurt"));

set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 3);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DTHROW, 6);

set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_DTHROW, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DTHROW, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DTHROW, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DTHROW, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_DTHROW, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTHROW, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DTHROW, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DTHROW, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_DTHROW, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DTHROW, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DTHROW, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_DTHROW, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DTHROW, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTHROW, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DTHROW, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTHROW, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTHROW, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DTHROW, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DTHROW, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 4, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DTHROW, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTHROW, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTHROW, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DTHROW, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DTHROW, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 5, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DTHROW, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTHROW, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTHROW, 6, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DTHROW, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DTHROW, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 6, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DTHROW, 6, HG_HITBOX_GROUP, -1);