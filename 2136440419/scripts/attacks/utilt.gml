set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_CATEGORY, 2);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

// Startup
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 12);

// Attack
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -4.5);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// Endlag
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 5);

// Water Droplets 1
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 1, HG_HIT_PARTICLE_NUM, 1);

// Water Droplets 2
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -74);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 80);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 361);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 2, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 2, HG_HIT_PARTICLE_NUM, 1);

// Water Droplets 3
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -14);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -86);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 56);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 361);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 3, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 3, HG_HIT_PARTICLE_NUM, 1);

// Hair Hit 1
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 22);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -69);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 85);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 44);
set_hitbox_value(AT_UTILT, 4, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.50);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTILT, 4, HG_HIT_PARTICLE_NUM, 1);

// Hair Hit 2
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, -6);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -74);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 46);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, 0.50);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTILT, 5, HG_HIT_PARTICLE_NUM, 1);