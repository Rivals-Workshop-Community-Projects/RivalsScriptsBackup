set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UTILT, 4);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -88);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 105); // 20
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2); // 3
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTILT, 1, HG_DRIFT_MULTIPLIER, 1);


set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 35); // 20
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 2); // 3
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTILT, 2, HG_DRIFT_MULTIPLIER, 1);

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -98);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 85); // 20
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 5); // 3
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UTILT, 3, HG_DRIFT_MULTIPLIER, 1);

set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 35);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 35); // 20
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 5); // 3
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.5)
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UTILT, 4, HG_DRIFT_MULTIPLIER, 1);