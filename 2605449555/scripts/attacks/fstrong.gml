set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

// Startup

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_ell_big_missile_fire"));

// Charging

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);

// Explosion

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
//set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_ell_explosion_medium"));


// Endlag

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_fire"));

// Hitboxes

set_num_hitboxes(AT_FSTRONG, 3);

// Shot Hitbox Small (not used)

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 9);
//set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 9);
//set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 1);
//set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 9);
//set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_burnapplied"));
//set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 11);

// Shot Hitbox Medium (not used)

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 75);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 9);
//set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 9);
//set_hitbox_value(AT_FSTRONG, 2, HG_TECHABLE, 1);
//set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 11);

// Shot Hitbox Big (only one currently used)

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 95);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 95);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 9);
//set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 9);
//set_hitbox_value(AT_FSTRONG, 3, HG_TECHABLE, 1);
//set_hitbox_value(AT_FSTRONG, 3, HG_EXTRA_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_LOCKOUT, 11);