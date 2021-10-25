set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("nthrow"));
set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 7);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("nthrow_hurt"));
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 1);

// Startup
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);

// Attack Window
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NTHROW, 2, AG_WINDOW_VSPEED_TYPE, 2);

// Sending upwards
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_VSPEED, -16);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HSPEED, -1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_SFX, sound_get("fspecialmove"));
set_window_value(AT_NTHROW, 3, AG_WINDOW_SFX_FRAME, 3);

// Pause in the air
set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NTHROW, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NTHROW, 4, AG_WINDOW_HSPEED, -3);

// Falling
set_window_value(AT_NTHROW, 5, AG_WINDOW_TYPE, 10);
set_window_value(AT_NTHROW, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NTHROW, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NTHROW, 5, AG_WINDOW_VSPEED, 18);

// Crash
set_window_value(AT_NTHROW, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NTHROW, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 9);

// Endlag
set_window_value(AT_NTHROW, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NTHROW, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NTHROW, 7, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NTHROW, 7, AG_WINDOW_HSPEED, 5);
set_window_value(AT_NTHROW, 7, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NTHROW, 7, AG_WINDOW_VSPEED, -4);

set_num_hitboxes(AT_NTHROW, 2);

// Signals to send opponent upwards
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 34);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NTHROW, 1, HG_SHAPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NTHROW, 1, HG_EXTRA_HITPAUSE, 200);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, hit_nthrow);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 4);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, sound_get("fthrowsfx"));
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NTHROW, 1, HG_HITSTUN_MULTIPLIER, .7);

// Hitbox upon crash
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW, 6);
set_hitbox_value(AT_NTHROW, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_X, -20);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NTHROW, 2, HG_WIDTH, 80);
set_hitbox_value(AT_NTHROW, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_NTHROW, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NTHROW, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_KNOCKBACK, 8); 
set_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NTHROW, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_NTHROW, 2, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_NTHROW, 2, HG_VISUAL_EFFECT, hit_nthrow);
set_hitbox_value(AT_NTHROW, 2, HG_VISUAL_EFFECT_X_OFFSET, 4);
set_hitbox_value(AT_NTHROW, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NTHROW, 2, HG_HIT_SFX, sound_get("dthrowsfx"));
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NTHROW, 2, HG_HITSTUN_MULTIPLIER, .7);

set_hitbox_value(AT_NTHROW, 2, HG_HIT_PARTICLE_NUM, 2);

set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_GROUP, -1);
