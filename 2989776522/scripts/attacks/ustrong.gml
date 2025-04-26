set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);

//finisher
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 10);

//multihits
set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -130);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 90);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -130);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 30);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -130);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -130);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -130);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 40);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -130);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, -1);

//last multihit
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -130);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 7, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 7, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_GROUP, -1);

//finisher
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_X, 42);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_Y, -140);
set_hitbox_value(AT_USTRONG, 8, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 8, HG_HEIGHT, 140);
set_hitbox_value(AT_USTRONG, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 8, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 8, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_GROUP, 2);

//finisher 2
set_hitbox_value(AT_USTRONG, 9, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 9, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_X, -37);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_Y, -140);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_GROUP, 2);

//scoop
set_hitbox_value(AT_USTRONG, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 10, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 10, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 10, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USTRONG, 10, HG_WIDTH, 150);
set_hitbox_value(AT_USTRONG, 10, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, 10, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 10, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 10, HG_ANGLE, 60);
set_hitbox_value(AT_USTRONG, 10, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USTRONG, 10, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_USTRONG, 10, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 10, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USTRONG, 10, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 10, HG_HITBOX_GROUP, 1);