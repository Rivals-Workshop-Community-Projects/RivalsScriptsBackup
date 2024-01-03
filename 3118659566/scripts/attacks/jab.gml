set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_attack_value(AT_JAB, AG_CATEGORY, 0);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 1);

//jab2
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 4);

set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 1);

//jab3
set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED, 5);

set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_JAB, 9, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 15);

set_num_hitboxes(AT_JAB, 2);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 68);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 135);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -55);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 35);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 2, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);

//Multihit
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 20);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 78);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 0);
set_hitbox_value(AT_JAB, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0)
set_hitbox_value(AT_JAB, 3, HG_DRIFT_MULTIPLIER, 1.2)
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 20);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 78);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 0);
set_hitbox_value(AT_JAB, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_JAB, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 4, HG_DRIFT_MULTIPLIER, 1.2);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 6);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 78);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 5, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 75);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_JAB, 5, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
