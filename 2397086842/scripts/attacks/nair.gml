set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 8);

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);


set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX_FRAME, 1);


set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 10);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0.69);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0.69);

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, -26);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 0.69);

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, -4);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 0.69);

set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 22);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 0.69);

set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -60);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, 0.69);

set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, -26);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NAIR, 7, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 7, HG_HEIGHT, 90);
set_hitbox_value(AT_NAIR, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 7, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 7, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 7, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 7, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 7, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 7, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_NAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 7, HG_VISUAL_EFFECT_X_OFFSET, 0.69);

set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, -4);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NAIR, 8, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 8, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 8, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 8, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 8, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 8, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 8, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 8, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 8, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 8, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_NAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 8, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 8, HG_VISUAL_EFFECT_X_OFFSET, 0.69);

set_hitbox_value(AT_NAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_NAIR, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_X, 22);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 9, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 9, HG_HEIGHT, 90);
set_hitbox_value(AT_NAIR, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 9, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 9, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 9, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 9, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 9, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 9, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 9, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 9, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_NAIR, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 9, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 9, HG_VISUAL_EFFECT_X_OFFSET, 0.69);

set_hitbox_value(AT_NAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_NAIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_Y, -60);
set_hitbox_value(AT_NAIR, 10, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 10, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 10, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 10, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 10, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 10, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 10, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 10, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 10, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 10, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 10, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_NAIR, 10, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 10, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 10, HG_VISUAL_EFFECT_X_OFFSET, 0.69);