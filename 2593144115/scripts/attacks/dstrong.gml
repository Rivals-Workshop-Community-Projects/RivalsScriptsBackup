set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 5);

//1
set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 7);

//2
set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX_FRAME, 7);

//3
set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 10);

set_window_value(AT_DSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_DSTRONG, 5);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -56);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 120);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 9.4);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DRIFT_MULTIPLIER, 0.6);

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 27);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 190);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 180);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DRIFT_MULTIPLIER, 0.6);

set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 94);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 56);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 177);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 16);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSTRONG, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DRIFT_MULTIPLIER, 0.6);

set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -60);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 75);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 75);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_LOCKOUT, 4);

set_hitbox_value(AT_DSTRONG, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -18);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 120);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_LOCKOUT, 4);