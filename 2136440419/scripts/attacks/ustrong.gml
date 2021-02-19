set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

// Charge
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);

// Startup
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 21);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 14);

// Attack
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

// Endlag
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

// Grab Whip Attack
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 28);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX_FRAME, 15);

// Grab Whip Endlag
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 19);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 24);
// No whifflag because you literally can't whiff it - this window only appears on hit

// Grab Whip Endlag

set_num_hitboxes(AT_USTRONG, 5);

// Grab hitbox 1
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 54);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -150);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 90);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.50);
set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 20);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 305); // Sweetspot
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 1); // Not techable
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

// Grab hitbox 2
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -166);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 361);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.50);
set_hitbox_value(AT_USTRONG, 2, HG_HITSTUN_MULTIPLIER, 20);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 305); // Sweetspot
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 1); // Not techable
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

// Sourspot 1
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 17);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 7);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -50);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 30);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 60);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.80);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// Sourspot 2
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 34);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -140);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 148);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 72);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 60);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.00);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// Sourspot 3
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 54);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -182);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 106);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 60);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1.00);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// Slam Grounded
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 130);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 130);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 130);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 1.10);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, 1.00);
set_hitbox_value(AT_USTRONG, 6, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_USTRONG, 6, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, 306); // Big hit
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, 2);

// Slam Aerial
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, 130);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 130);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 130);
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 270);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 7, HG_KNOCKBACK_SCALING, 1.35);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 7, HG_HITPAUSE_SCALING, 1.00);
set_hitbox_value(AT_USTRONG, 7, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_USTRONG, 7, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, 306); // Big hit
set_hitbox_value(AT_USTRONG, 7, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_GROUP, 2);