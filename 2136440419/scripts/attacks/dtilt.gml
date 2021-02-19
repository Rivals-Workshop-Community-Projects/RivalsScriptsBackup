set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

// Startup
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 1);

// Attack
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// Endlag
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 2);

// Water Droplets
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 72);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTILT, 1, HG_HIT_PARTICLE_NUM, 1);

// Finger Hitbox
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 54);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DTILT, 2, HG_HIT_PARTICLE_NUM, 1);