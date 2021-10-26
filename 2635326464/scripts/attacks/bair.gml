set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 16);

set_hitbox_value(AT_BAIR, 1, HG_MUNO_HITBOX_NAME, "Every boomerang hitbox (there's 16 of them)");

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -52);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 52);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 22);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 1, HG_HITSTUN_MULTIPLIER, .85);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -66);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -80);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -31);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_BAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -94);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -31);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_BAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, -106);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -31);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_BAIR, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_BAIR, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_X, -114);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_Y, -31);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_BAIR, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 7, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_BAIR, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_X, -122);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_Y, -31);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_BAIR, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 8, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_BAIR, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 8, HG_HITBOX_X, -130);
set_hitbox_value(AT_BAIR, 8, HG_HITBOX_Y, -31);
set_hitbox_value(AT_BAIR, 8, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_BAIR, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 9, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 9, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_BAIR, 9, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 9, HG_HITBOX_X, -130);
set_hitbox_value(AT_BAIR, 9, HG_HITBOX_Y, -31);
set_hitbox_value(AT_BAIR, 9, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_BAIR, 10, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 10, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 10, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_BAIR, 10, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 10, HG_HITBOX_X, -122);
set_hitbox_value(AT_BAIR, 10, HG_HITBOX_Y, -31);
set_hitbox_value(AT_BAIR, 10, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_BAIR, 11, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 11, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 11, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_BAIR, 11, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 11, HG_HITBOX_X, -114);
set_hitbox_value(AT_BAIR, 11, HG_HITBOX_Y, -31);
set_hitbox_value(AT_BAIR, 11, HG_HITBOX_GROUP, 4);


set_hitbox_value(AT_BAIR, 12, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 12, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 12, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_BAIR, 12, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 12, HG_HITBOX_X, -106);
set_hitbox_value(AT_BAIR, 12, HG_HITBOX_Y, -31);
set_hitbox_value(AT_BAIR, 12, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_BAIR, 13, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 13, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 13, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_BAIR, 13, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 13, HG_HITBOX_X, -94);
set_hitbox_value(AT_BAIR, 13, HG_HITBOX_Y, -31);
set_hitbox_value(AT_BAIR, 13, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_BAIR, 14, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 14, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 14, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_BAIR, 14, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 14, HG_HITBOX_X, -80);
set_hitbox_value(AT_BAIR, 14, HG_HITBOX_Y, -31);
set_hitbox_value(AT_BAIR, 14, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_BAIR, 15, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 15, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 15, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 15, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_BAIR, 15, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 15, HG_HITBOX_X, -66);
set_hitbox_value(AT_BAIR, 15, HG_HITBOX_Y, -31);
set_hitbox_value(AT_BAIR, 15, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_BAIR, 16, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 16, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 16, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 16, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_BAIR, 16, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 16, HG_HITBOX_X, -52);
set_hitbox_value(AT_BAIR, 16, HG_HITBOX_Y, -31);
set_hitbox_value(AT_BAIR, 16, HG_HITBOX_GROUP, 6);

set_attack_value(AT_BAIR, AG_MUNO_ATTACK_MISC_ADD, "Multihit. Also, not a projectile. Has 10 frames of cooldown.");
set_attack_value(AT_BAIR, AG_MUNO_ATTACK_ENDLAG, string(get_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH)));