set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

// Window 1
set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 0);

// Window 2
set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 13);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Window 3
set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR,3);

// Hitbox 1
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2); // 1
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45); // 2
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 4); // 3
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .4); // 4
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2); // 5
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4); // 6
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .1); // 7
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6); // 8
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// Hitbox 2
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2); // 1
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 45); // 2
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 4); // 3
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .4); // 4
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2); // 5 (Skip 3)
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 4); // 6
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .1); // 7
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6); // 8
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 6);

// Hitbox 3
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 7); // 1
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 50); // 2
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 5); // 3
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .6); // 4
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 3); // 5 (Skip 3)
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 5); // 6
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .6); // 7
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 6); // 8
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 12);