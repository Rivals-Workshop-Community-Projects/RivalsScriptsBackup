set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 3);

set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 3, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);



set_window_value(AT_DTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DTILT,3);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 87);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 1, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 1);


set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 74);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 2, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_DTILT, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 84);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 0.2)
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 3, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, -1);