set_attack_value(AT_DSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

// set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));

//release delay window
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion_big"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

//hitbox window
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 2);

set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 0);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 56);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 35);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 6.5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.95);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 0);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 56);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 82);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 82);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 303);

