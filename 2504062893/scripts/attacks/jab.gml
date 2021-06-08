set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 5);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 1, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_CANCEL_FRAME, 10);

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_FRAME, 10);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 6 , AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6 , AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 6 , AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6 , AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_JAB, 4);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 72);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE,4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
// set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 72);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 0);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
// set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 4);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 72);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 0);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
// set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_JAB, 3, HG_TECHABLE, 1);

set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 36);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 72);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 56);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 0);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
// set_hitbox_value(AT_JAB, 4, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_JAB, 4, HG_TECHABLE, 1);