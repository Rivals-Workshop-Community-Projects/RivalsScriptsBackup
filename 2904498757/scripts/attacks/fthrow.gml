set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fthrow"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fthrow_hurt"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 4);

// startup
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));

// active
set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 10);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// land
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HSPEED, 3);

// endlag
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HSPEED, 3);

// ========== HITBOXES ==========
set_num_hitboxes(AT_FTHROW, 1);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FTHROW, 1, HG_HITSTUN_MULTIPLIER, .9);