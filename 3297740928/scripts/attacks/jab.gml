set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 7);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_FRAME, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 3, AG_WINDOW_HSPEED, 3);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_FRAME, 2);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_SFX, sound_get("sfx_jabfinal"));
set_window_value(AT_JAB, 6, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_JAB, 4);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 52);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 52);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 6);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 64);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 80);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 48);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -37);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 76);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 44);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_JAB, 4, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 3);