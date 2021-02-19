set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

// Charge
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

// Startup
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 7);

// Swings (Repeatable)
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

// Final Swing
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);

// Recovery
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 10);

// First Swing Hit 1
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 81);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 87);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 43);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_PARTICLE_NUM, 1);

// First Swing Hit 2
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 31);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 89);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 28);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_PARTICLE_NUM, 1);

// First Swing Hit 3
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 61);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 86);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 26);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_PARTICLE_NUM, 1);

// First Swing Hit 4
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 131);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 26);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_PARTICLE_NUM, 1);

// Second Swing Hit 1
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -49);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 97);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 39);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_PARTICLE_NUM, 1);

// Second Swing Hit 2
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, -22);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -11);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 26);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_PARTICLE_NUM, 1);

// Third Swing Hit 1
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, 85);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -29);
set_hitbox_value(AT_DSTRONG, 7, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 7, HG_HEIGHT, 39);
set_hitbox_value(AT_DSTRONG, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 7, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 7, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_HIT_PARTICLE_NUM, 1);

// Third Swing Hit 2
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_X, 35);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DSTRONG, 8, HG_WIDTH, 77);
set_hitbox_value(AT_DSTRONG, 8, HG_HEIGHT, 23);
set_hitbox_value(AT_DSTRONG, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 8, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 8, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 8, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 8, HG_HIT_PARTICLE_NUM, 1);

// Third Swing Hit 3
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 9, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 9, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 9, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DSTRONG, 9, HG_WIDTH, 140);
set_hitbox_value(AT_DSTRONG, 9, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 9, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 9, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG, 9, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 9, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 9, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 9, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 9, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 9, HG_HIT_PARTICLE_NUM, 1);

// Final Swing
set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 10, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 10, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_X, -75);
set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DSTRONG, 10, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 10, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 10, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 10, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG, 10, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 10, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 10, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 10, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 10, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 10, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 10, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 10, HG_HIT_PARTICLE_NUM, 1);
