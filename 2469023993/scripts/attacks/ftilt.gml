set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_birdclap"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_FTILT,2);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 30);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 35);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_ice_shatter"));
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_CAMERA_SHAKE, 2);

set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 33);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FTILT, 2, HG_EXTRA_CAMERA_SHAKE, 2);