set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 5);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);


set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);


set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 4);


set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, -2);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 5, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_CANCEL_FRAME, 2);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 6, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 30);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED, 3);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);


set_num_hitboxes(AT_JAB, 2);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 39);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 88);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("slice"));


set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 4);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 114);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);



set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 80);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 80);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 3, HG_HITSTUN_MULTIPLIER, .76);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 17);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -65);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 75);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 75);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 4, HG_HITSTUN_MULTIPLIER, .76);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, 303);

set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 5, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 17);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -65);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 75);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 75);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 5, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 5, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.4)
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, 303);

