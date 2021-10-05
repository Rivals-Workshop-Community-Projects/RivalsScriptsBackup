set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_FTILT,1);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 54);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 18);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("bcm_blow_med"));