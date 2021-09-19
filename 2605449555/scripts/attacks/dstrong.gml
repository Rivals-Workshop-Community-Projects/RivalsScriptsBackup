set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

// Startup

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

// Charging

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);

// Explosion

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 35);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_ell_explosion_medium"));

// Endlag

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_fire"));

// Hitboxes

set_num_hitboxes(AT_DSTRONG, 2);

// Shot Front

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 9);
//set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 35);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 1);
//set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 1);
//set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 11);

// Shot Behind

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -55);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 9);
//set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 145);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 1);
//set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 1);
//set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 11);