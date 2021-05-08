set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("spinning_chainsaw"));
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("spinning_chainsaw_hurt"));

set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 7);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("chainsaw_end"));

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HSPEED, 2);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_DSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 7);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 15);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("chainsaw1"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -30);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 15);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("chainsaw1"));
set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_CAMERA_SHAKE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -30);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 25);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, sound_get("chainsaw1"));
set_hitbox_value(AT_DSTRONG, 3, HG_EXTRA_CAMERA_SHAKE, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_TECHABLE, 1);

//Back side versions

set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 165);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, sound_get("chainsaw1"));
set_hitbox_value(AT_DSTRONG, 4, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_EXTRA_CAMERA_SHAKE, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_TECHABLE, 1);

set_hitbox_value(AT_DSTRONG, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 165);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, sound_get("chainsaw1"));
set_hitbox_value(AT_DSTRONG, 5, HG_EXTRA_CAMERA_SHAKE, 10);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_TECHABLE, 1);

set_hitbox_value(AT_DSTRONG, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, sound_get("chainsaw1"));
set_hitbox_value(AT_DSTRONG, 6, HG_EXTRA_CAMERA_SHAKE, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_TECHABLE, 1);

//CHAINSAW FINAL HIT HITBOXES
set_hitbox_value(AT_DSTRONG, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSTRONG, 7, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 7, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 7, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DSTRONG, 7, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT_Y_OFFSET, -40);
set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, sound_get("chainsaw2"));
set_hitbox_value(AT_DSTRONG, 7, HG_EFFECT, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_EXTRA_CAMERA_SHAKE, 10);