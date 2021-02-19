set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 12);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

// Window 1 start
set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 9);

// Window 1 active
set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

// Window 1 end
set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

// SPINS

// Spin 1
set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_SFX,1);
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX_FRAME,1);
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX, asset_get("sfx_spin"));


// Spin 2
set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_UTILT, 5, AG_WINDOW_SFX, asset_get("sfx_birdflap"));

// Spin 3
set_window_value(AT_UTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_UTILT, 6, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_UTILT, 6, AG_WINDOW_SFX, asset_get("sfx_birdflap"));

// Spin 4
set_window_value(AT_UTILT,7, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT,7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT,7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT,7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_UTILT,7, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_UTILT,7, AG_WINDOW_SFX, asset_get("sfx_birdflap"));

// Spin 5
set_window_value(AT_UTILT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 8, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_UTILT, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 8, AG_WINDOW_SFX, asset_get("sfx_birdflap"));

// Spin 6
set_window_value(AT_UTILT, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 9, AG_WINDOW_LENGTH, 30);
set_window_value(AT_UTILT, 9, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_UTILT, 9, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_UTILT, 9, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_UTILT, 9, AG_WINDOW_SFX, asset_get("sfx_birdflap"));
set_window_value(AT_UTILT, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

// Clap kick


// Clap kick startup
set_window_value(AT_UTILT, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 10, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 10, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_UTILT, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 10, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UTILT, 10, AG_WINDOW_SFX_FRAME, 2);

// Clap Kick active
set_window_value(AT_UTILT, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 11, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 11, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_UTILT, 11, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 11, AG_WINDOW_SFX, asset_get("sfx_birdclap"));
set_window_value(AT_UTILT, 11, AG_WINDOW_SFX_FRAME, 1);


// Clap kick endlag
set_window_value(AT_UTILT, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 12, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 12, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UTILT, 12, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_UTILT, 12, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_UTILT, 10);

// Tail swipe Hitbox 1
set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);

// Tail swipe Hitbox 2
set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);

// Tail swipe Hitbox 3
set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -100);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 13);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 27);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 1);

// Spinboxes

// Spin 1
set_hitbox_value(AT_UTILT, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 86);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 24);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 60);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 0.5);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, .15);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 0.2);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE_FLIPPER, 4);


// // Spin 2
// set_hitbox_value(AT_UTILT, 5, HG_PARENT_HITBOX, 0);
// set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 5);
// set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 2);
// set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -80);
// set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 0);
// set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 86);
// set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 24);
// set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 1);
// set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 1);
// set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 60);
// set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 0.5);
// set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, .15);
// set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 0.2);
// set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, .15);
// set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
// set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, -1);
// set_hitbox_value(AT_UTILT, 5, HG_ANGLE_FLIPPER, 4);


// Spin 3
set_hitbox_value(AT_UTILT, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 6);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 86);
set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 24);
set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 60);
set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 0.5);
set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, .15);
set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 0.2);
set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE_FLIPPER, 4);

// Spin 4
set_hitbox_value(AT_UTILT, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 7);
set_hitbox_value(AT_UTILT, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 7, HG_WIDTH, 86);
set_hitbox_value(AT_UTILT, 7, HG_HEIGHT, 24);
set_hitbox_value(AT_UTILT, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 7, HG_ANGLE, 60);
set_hitbox_value(AT_UTILT, 7, HG_BASE_KNOCKBACK, 0.5);
set_hitbox_value(AT_UTILT, 7, HG_KNOCKBACK_SCALING, .15);
set_hitbox_value(AT_UTILT, 7, HG_BASE_HITPAUSE, 0.2);
set_hitbox_value(AT_UTILT, 7, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_UTILT, 7, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 7, HG_ANGLE_FLIPPER, 4);


// // Spin 5
// set_hitbox_value(AT_UTILT, 8, HG_PARENT_HITBOX, 0);
// set_hitbox_value(AT_UTILT, 8, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_UTILT, 8, HG_WINDOW, 8);
// set_hitbox_value(AT_UTILT, 8, HG_LIFETIME, 2);
// set_hitbox_value(AT_UTILT, 8, HG_HITBOX_Y, -90);
// set_hitbox_value(AT_UTILT, 8, HG_HITBOX_X, 10);
// set_hitbox_value(AT_UTILT, 8, HG_WIDTH, 86);
// set_hitbox_value(AT_UTILT, 8, HG_HEIGHT, 24);
// set_hitbox_value(AT_UTILT, 8, HG_PRIORITY, 1);
// set_hitbox_value(AT_UTILT, 8, HG_DAMAGE, 1);
// set_hitbox_value(AT_UTILT, 8, HG_ANGLE, 60);
// set_hitbox_value(AT_UTILT, 8, HG_BASE_KNOCKBACK, .5);
// set_hitbox_value(AT_UTILT, 8, HG_KNOCKBACK_SCALING, .15);
// set_hitbox_value(AT_UTILT, 8, HG_BASE_HITPAUSE, 0.2);
// set_hitbox_value(AT_UTILT, 8, HG_HITPAUSE_SCALING, .15);
// set_hitbox_value(AT_UTILT, 8, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
// set_hitbox_value(AT_UTILT, 8, HG_HITBOX_GROUP, -1);
// set_hitbox_value(AT_UTILT, 8, HG_ANGLE_FLIPPER, 4);


// Spin 6
set_hitbox_value(AT_UTILT, 9, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 9, HG_WINDOW, 9);
set_hitbox_value(AT_UTILT, 9, HG_LIFETIME, 1);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 9, HG_WIDTH, 86);
set_hitbox_value(AT_UTILT, 9, HG_HEIGHT, 24);
set_hitbox_value(AT_UTILT, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_UTILT, 9, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 9, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_UTILT, 9, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_UTILT, 9, HG_BASE_HITPAUSE, 4.5);
set_hitbox_value(AT_UTILT, 9, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 9, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 9, HG_ANGLE_FLIPPER, 4);



// Clap kick
set_hitbox_value(AT_UTILT, 10, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 10, HG_WINDOW, 11);
set_hitbox_value(AT_UTILT, 10, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_X, 8);
set_hitbox_value(AT_UTILT, 10, HG_WIDTH, 90);
set_hitbox_value(AT_UTILT, 10, HG_HEIGHT, 100);
set_hitbox_value(AT_UTILT, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 10, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 10, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 10, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UTILT, 10, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_UTILT, 10, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 10, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 10, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_GROUP, -1);

