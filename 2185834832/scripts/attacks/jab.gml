set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 7);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 0);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_bite"));
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 4);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, asset_get("sfx_bite"));

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_JAB, 6, AG_WINDOW_SFX, asset_get("sfx_bite"));

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_num_hitboxes(AT_JAB, 7);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 43);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 30);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0)

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 85);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 25);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 0)
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 6);

set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0)

set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 65);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 4, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 0)

set_hitbox_value(AT_JAB, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 6);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 65);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 5, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 5, HG_SHAPE, 0)

set_hitbox_value(AT_JAB, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 6);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 32);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 6, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 6, HG_HEIGHT, 65);
set_hitbox_value(AT_JAB, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 6, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 6, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 6, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 6, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 6, HG_SHAPE, 0)

set_hitbox_value(AT_JAB, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 7, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_JAB, 7, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_X, 16);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_Y, -45);
set_hitbox_value(AT_JAB, 7, HG_WIDTH, 85);
set_hitbox_value(AT_JAB, 7, HG_HEIGHT, 85);
set_hitbox_value(AT_JAB, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 7, HG_ANGLE, 105);
set_hitbox_value(AT_JAB, 7, HG_BASE_KNOCKBACK, 9.3);
set_hitbox_value(AT_JAB, 7, HG_KNOCKBACK_SCALING, 0.52);
set_hitbox_value(AT_JAB, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 7, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_JAB, 7, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 7, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 7, HG_SHAPE, 0)

