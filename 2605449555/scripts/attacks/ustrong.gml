set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

// Startup

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

// Charging

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);

// Catching Swing

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 7);

// Explosion

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_ell_explosion_medium"));

// Endlag

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_fire"));

// Hitboxes

set_num_hitboxes(AT_USTRONG, 4);

// Shot Hitbox Small

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -5);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 9);
//set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 9);
//set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 1);
//set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 11);

// Medium Hitbox Small

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 75);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 9);
//set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 9);
//set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 1);
//set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_USTRONG, 2, HG_HIT_LOCKOUT, 11);

// Shot Hitbox Big

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 95);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 95);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 9);
//set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 9);
//set_hitbox_value(AT_USTRONG, 3, HG_TECHABLE, 1);
//set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_USTRONG, 3, HG_HIT_LOCKOUT, 11);

// Catching Hit

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 15);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 4);
//set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 3);
//set_hitbox_value(AT_USTRONG, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));