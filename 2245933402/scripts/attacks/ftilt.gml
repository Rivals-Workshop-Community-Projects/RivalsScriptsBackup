set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_window_value(AT_FTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT,1);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 54);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 110);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 305);