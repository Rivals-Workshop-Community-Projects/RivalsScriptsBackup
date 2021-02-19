set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);

//startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

//slow swing
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

//multihit swing
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 2);

//launcher swing
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 2);

//endlag
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 6);

//front hit
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 11);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);

//front multihit
set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 11);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);

//front launcher
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 2);

//back multihit
set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -50);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_LOCKOUT, 11);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -50);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_LOCKOUT, 11);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, -1);

//back launcher
set_hitbox_value(AT_DSTRONG, 6, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, -50);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, 2);