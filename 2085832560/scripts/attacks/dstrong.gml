set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_ice_shatter_big"));

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_ice_shatter"));

set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);




set_num_hitboxes(AT_DSTRONG, 7);

set_hitbox_value(AT_DSTRONG, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 0);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -63);
set_hitbox_value(AT_DSTRONG, 7, HG_WIDTH, 71);
set_hitbox_value(AT_DSTRONG, 7, HG_HEIGHT, 75);
set_hitbox_value(AT_DSTRONG, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSTRONG, 7, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 130);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 2);


set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 180);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 2);

set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 130);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSTRONG, 3, HG_TECHABLE, 2);


set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 28);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 180);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 100);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSTRONG, 4, HG_TECHABLE, 2);

set_hitbox_value(AT_DSTRONG, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 35);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 130);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_DSTRONG, 5,  HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_DSTRONG, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 28);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 180);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 100);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_DSTRONG, 6,  HG_HIT_LOCKOUT, 5);