set_attack_value(AT_JAB, AG_SPRITE, sprite_get(string(plate_state) + "_jab"));
set_attack_value(AT_JAB, AG_CATEGORY, 2);
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_CANCEL_TYPE, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_JAB, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_TYPE, 1);

set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 5, AG_WINDOW_CANCEL_TYPE, 0);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 22);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 0);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));
set_window_value(AT_JAB, 6, AG_WINDOW_SFX_FRAME, 8);

set_num_hitboxes(AT_JAB, 6);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 62);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 140);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2 + (anger_state * 2));
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 120);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 44);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 120);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2 + (anger_state * 2));
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 120);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 75);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1 + anger_state);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 75);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 75);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 1 + anger_state);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 5, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 75);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 75);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 1 + anger_state);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 6);
set_hitbox_value(AT_JAB, 6, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -45);
set_hitbox_value(AT_JAB, 6, HG_WIDTH, 130);
set_hitbox_value(AT_JAB, 6, HG_HEIGHT, 90);
set_hitbox_value(AT_JAB, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 6, HG_DAMAGE, 4 + (anger_state * 2));
set_hitbox_value(AT_JAB, 6, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 6, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_JAB, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_JAB, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));


