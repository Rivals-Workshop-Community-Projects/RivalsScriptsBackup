set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

//startup
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);

//attack
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//endlag
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 6);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7.2);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 45);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 7.2);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -25);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -65);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, -19);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 30);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 55);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 30);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 45);
set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 7.2);
set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


//old utilt:
// set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
// set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
// set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);

// //startup
// set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
// set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
// set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);
// set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

// //attack
// set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 5);
// set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
// set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// //endlag
// set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 12);
// set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
// set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

// set_num_hitboxes(AT_UTILT, 3);


// set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 7);
// set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 80);
// set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6);
// set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .54);
// set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
// set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .4);

// set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 15);
// set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -40);
// set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 80);
// set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 90);
// set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
// set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
// set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
// set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


// set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 7);
// set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 100);
// set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6);
// set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .54);
// set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
// set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .4);

// set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -12);
// set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -30);
// set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 85);
// set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 90);
// set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
// set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
// set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
// set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
// set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 3);


// set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 7);
// set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 100);
// set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 6);
// set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .54);
// set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 6);
// set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .4);

// set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -6);
// set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -70);
// set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 55);
// set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 40);
// set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
// set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
// set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
// set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
// set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 3);
