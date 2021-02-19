set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

// Startup
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("sfx_stinky_whip"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 16);

// Attack
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_HITPAUSE_FRAME, 7);

// Endlag
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 4);

// Water Droplets 1
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 52);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -69);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FTILT, 1, HG_HIT_PARTICLE_NUM, 1);

// Water Droplets 2
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 88);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 90);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FTILT, 2, HG_HIT_PARTICLE_NUM, 1);

// Towel Hit
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 44);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 88);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 62);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 55);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.20);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, 0.35);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FTILT, 3, HG_HIT_PARTICLE_NUM, 1);

// Towel Tipper
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 90);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 30);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 305); // Sweetspot Hit Effect
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FTILT, 4, HG_HIT_PARTICLE_NUM, 1);