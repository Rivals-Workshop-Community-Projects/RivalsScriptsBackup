set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

// startup
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);//Jab 1
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);

// active
set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// endlag
set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 6);

// startup
set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);//Jab 2
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 2);

// active
set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED_TYPE, 2);

// endlag
set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 6);

// startup
set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 1);//Jab 3
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 2);

// active
set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 8);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED_TYPE, 2);

// endlag
set_window_value(AT_JAB, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 3);

// 1st hitbox
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 31);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 82);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 2);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);

// 2nd hitbox
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 84);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 34);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 2);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_FORCE_FLINCH, 1);

// final hitbox
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 52);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);