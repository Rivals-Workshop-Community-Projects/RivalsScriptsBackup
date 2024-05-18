set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 2);

//jab 1
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//jab 2
set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8);

//jab 3
set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_JAB, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 13);

set_num_hitboxes(AT_JAB, 5);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 55);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 1, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 55);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 85);
set_hitbox_value(AT_JAB, 2, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 46);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, 3);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 11);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 290);
set_hitbox_value(AT_JAB, 3, HG_EFFECT, 15);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 48);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -14);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 66);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 4, HG_EFFECT, 0);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_JAB, 4, HG_ANGLE_FLIPPER, 6);

//weak jab 1
set_hitbox_value(AT_JAB, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, -28);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -17);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 48);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 42);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 120);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 5, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 5, HG_ANGLE_FLIPPER, 0);