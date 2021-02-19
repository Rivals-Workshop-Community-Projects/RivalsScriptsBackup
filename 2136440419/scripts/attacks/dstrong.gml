set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

// Charge
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);

// Startup
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

// Attack
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

// Endlag
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 3);

// Slam
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

// Splash Stronger
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 16);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 120);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

// Splash weaker
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -58);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 180);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 180);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_b_heavy2"));