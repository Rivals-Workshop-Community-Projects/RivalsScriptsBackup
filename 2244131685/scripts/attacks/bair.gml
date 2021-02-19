// BAIR - Single hit backwards sword slash
set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

// Startup
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 13);

// Sweetspot Active Frames
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// Sourspot Active Frames
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

// Endlag
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 5); 
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 2);

// Early Hit
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -40);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.50);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 1, HG_HIT_PARTICLE_NUM, 1);

// Weak Hit
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -36);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.25);
