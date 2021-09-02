set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

//startup
set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

//front hit
set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//up hit
set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, asset_get("sfx_buzzsaw_throw"));

//combo hit
set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);

//recovery
set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//hitboxes
set_num_hitboxes(AT_UTILT, 3);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 30);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_DRIFT_MULTIPLIER, 0.5);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 120);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_swipe_medium1"));

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 14);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -5);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 90);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_swipe_weak1"));

set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -5);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 100);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_swipe_medium2"));