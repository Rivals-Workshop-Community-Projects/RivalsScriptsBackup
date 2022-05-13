set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("throw"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, sound_get("throw"));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sound_get("throw"));
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_DSTRONG, 9);

//front hit
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 49);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 175);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("splat2"));
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 49);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 175);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("splat2"));
set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 67);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -7);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 72);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 175);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 1);

//back hits
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -49);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_DSTRONG, 4, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, sound_get("splat2"));
set_hitbox_value(AT_DSTRONG, 4, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -49);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_DSTRONG, 5, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, sound_get("splat2"));
set_hitbox_value(AT_DSTRONG, 5, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, -67);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -7);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 72);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 5);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, -49);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 7, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 7, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 7, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 7, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, sound_get("splat"));
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_X, -49);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DSTRONG, 8, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 8, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 8, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 8, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 8, HG_HIT_SFX, sound_get("splat"));
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 9, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 9, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_X, -67);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_Y, -7);
set_hitbox_value(AT_DSTRONG, 9, HG_WIDTH, 72);
set_hitbox_value(AT_DSTRONG, 9, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 9, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 9, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 9, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 9, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_GROUP, 3);