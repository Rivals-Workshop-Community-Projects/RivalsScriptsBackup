set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("dstrong"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 3);

// Normal Hit (sourest)
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, hfx_shadow_mid);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);

// Normal Hit 2 (sour-y)
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -34);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 18);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, hfx_nail);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, sound_get("sharp2"));
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1.0);

// Tipper Hit
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -76);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -6);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 25);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 120);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, hfx_nail);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, -10);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("cursehit"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_LOCKOUT, 15);