set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 23);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_SFX, asset_get("sfx_may_whip2"));
set_window_value(AT_UTILT, 5, AG_WINDOW_SFX_FRAME, 16);

set_window_value(AT_UTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_UTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT,3);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 22);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, 1);

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 52);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));	//sfx_blow_heavy1
set_hitbox_value(AT_UTILT, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 305);		//305
set_hitbox_value(AT_UTILT, 2, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 58);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_UTILT, 3, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_UTILT, 3, HG_HIT_LOCKOUT, 5);