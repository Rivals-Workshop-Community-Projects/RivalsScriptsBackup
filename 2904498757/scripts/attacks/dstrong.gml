set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

// startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

// post-charge
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

// weak 1
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

// in-between 1
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

// weak 2
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 10);

// in-between 2
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

// launcher
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 13);

// endlag
set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

// ========== HITBOXES ==========
set_num_hitboxes(AT_DSTRONG, 3);

// weak 1
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 52);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 88);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 160);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 0.11);

// weak 2
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -34);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 112);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 54);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 20);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 0.11);

// launcher
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 42);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 124);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 66);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_SDI_MULTIPLIER, 0);

// cheese
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 99);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("cheese"));
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_EFFECT, 19);
set_hitbox_value(AT_DSTRONG, 4, HG_HITSTUN_MULTIPLIER, 0.8);