set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG,2);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -36);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 38);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 10);