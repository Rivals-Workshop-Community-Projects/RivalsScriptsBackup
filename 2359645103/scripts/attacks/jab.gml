set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 7);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);;
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 5, AG_WINDOW_CANCEL_TYPE, 1);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_JAB, 3);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 41);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 100);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 4);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 41);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 6);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 7);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 39);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -46);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 100);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 85);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);
