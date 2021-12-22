set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTILT, AG_CATEGORY, 2);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

// Startup

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

// Speed Up

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);

// Slow Down

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_fire"));

// Endlag

set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

// Hitboxes

set_num_hitboxes(AT_UTILT, 5);

// Swing Start

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 45);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 145);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
//set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

// Swing Above (1)

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -15);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -63);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 95);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

// Swing Behind / Finisher

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -50);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 120);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// Swing Above (2)

/*set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 4, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

// Swing Above (3)

set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 5);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 45);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 5, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
