set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 14);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 6);


set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DATTACK, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_DATTACK, 4);


set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 28);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 45);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, -20);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, 0);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 66);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 95);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 2, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DATTACK, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 9);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 46);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 115);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 52);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DATTACK, 3, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 9);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 46);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 115);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 52);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DATTACK, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 4, HG_HITSTUN_MULTIPLIER, 0.9);