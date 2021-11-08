set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("nodispenser_dstrong"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("nodispenser_dstrong_hurt"));

set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG_2,2);

set_hitbox_value(AT_DSTRONG_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSTRONG_2, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_X, -54);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_DSTRONG_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG_2, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG_2, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_LOCKOUT, 10);